var MAX_FILES = 10;
var RESIZE_WIDTH = 300;
var RESIZE_HEIGHT = 300;
var RESIZE_QUANLITY = 80;
var URL = "http://" + location.host;
var URL_CURRENT = $(location).attr("href");
var PREVIEW_TEMPLATE = '\
					<div class="dz-preview dz-file-preview">\
                        <div class="dz-image"><img data-dz-thumbnail="data-dz-thumbnail" /></div>\
                        <div class="dz-details">\
                            <div class="dz-size"><span data-dz-size="data-dz-size"></span></div>\
                            <div class="dz-filename"><span data-dz-name="data-dz-name"></span></div>\
                        </div>\
                        <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress="data-dz-uploadprogress"></span></div>\
                        <div class="dz-error-message"><span data-dz-errormessage="data-dz-errormessage"></span></div>\
                        <div class="dz-success-mark">\
                            <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">\
                                <title>Check</title>\
                                <defs></defs>\
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">\
                                    <path d="M23.5,31.8431458 L17.5852419,25.9283877 C16.0248253,24.3679711 13.4910294,24.366835 11.9289322,25.9289322 C10.3700136,27.4878508 10.3665912,30.0234455 11.9283877,31.5852419 L20.4147581,40.0716123 C20.5133999,40.1702541 20.6159315,40.2626649 20.7218615,40.3488435 C22.2835669,41.8725651 24.794234,41.8626202 26.3461564,40.3106978 L43.3106978,23.3461564 C44.8771021,21.7797521 44.8758057,19.2483887 43.3137085,17.6862915 C41.7547899,16.1273729 39.2176035,16.1255422 37.6538436,17.6893022 L23.5,31.8431458 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z" id="Oval-2" stroke-opacity="0.198794158" stroke="#747474" fill-opacity="0.816519475" fill="#FFFFFF" sketch:type="MSShapeGroup"></path>\
                                </g>\
                            </svg>\
                        </div>\
                        <div class="dz-error-mark">\
                            <svg width="54px" height="54px" viewBox="0 0 54 54" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">\
                                <title>Error</title>\
                                <defs></defs>\
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">\
                                    <g id="Check-+-Oval-2" sketch:type="MSLayerGroup" stroke="#747474" stroke-opacity="0.198794158" fill="#FFFFFF" fill-opacity="0.816519475">\
                                        <path d="M32.6568542,29 L38.3106978,23.3461564 C39.8771021,21.7797521 39.8758057,19.2483887 38.3137085,17.6862915 C36.7547899,16.1273729 34.2176035,16.1255422 32.6538436,17.6893022 L27,23.3431458 L21.3461564,17.6893022 C19.7823965,16.1255422 17.2452101,16.1273729 15.6862915,17.6862915 C14.1241943,19.2483887 14.1228979,21.7797521 15.6893022,23.3461564 L21.3431458,29 L15.6893022,34.6538436 C14.1228979,36.2202479 14.1241943,38.7516113 15.6862915,40.3137085 C17.2452101,41.8726271 19.7823965,41.8744578 21.3461564,40.3106978 L27,34.6568542 L32.6538436,40.3106978 C34.2176035,41.8744578 36.7547899,41.8726271 38.3137085,40.3137085 C39.8758057,38.7516113 39.8771021,36.2202479 38.3106978,34.6538436 L32.6568542,29 Z M27,53 C41.3594035,53 53,41.3594035 53,27 C53,12.6405965 41.3594035,1 27,1 C12.6405965,1 1,12.6405965 1,27 C1,41.3594035 12.6405965,53 27,53 Z" id="Oval-2" sketch:type="MSShapeGroup"></path>\
                                    </g>\
                                </g>\
                            </svg>\
                        </div>\
                        <button class="dz-remove btn btn-xs btn-flat btn-danger" href="javascript:void(0);" data-dz-remove="" data-url="" title="Delete image"><i class="fa fa-trash"></i></button>\
					</div>\
				';

function initDropzone(urlUpload, urlDelete, type, pictureNames) {

    return {
        maxFiles: MAX_FILES,
        params: {
            type: type
        },
        resizeWidth: RESIZE_WIDTH,
        resizeHeight: RESIZE_HEIGHT,
        resizeQuality: RESIZE_QUANLITY,
        url: URL_CURRENT + urlUpload,

        init: function () {

            mdz = this;
            this.options.previewTemplate = PREVIEW_TEMPLATE;

            if (undefined !== pictureNames && !jQuery.isEmptyObject(pictureNames)) {
                console.log(pictureNames);
                let pictureNamesArray = pictureNames.replace("[","").replace("]","").split(',');
                pictureNamesArray.forEach(function(element) {
                    let pictureName = element.trim()
                    pictureUrl = URL + "/download/" + pictureName;

                    let fileName = "";
                    if (isImageExisted(pictureName)) {
                        fileName = pictureName;
                    }
                    else {
                        fileName = "\nFile not found\nPlease upload new one";
                    }

                    image = {"name": fileName};
                    mdz.emit("addedfile", image);
                    mdz.emit("thumbnail", image, pictureUrl);

                    $(image.previewElement).find('.dz-progress').hide();
                    // $(image.previewElement).addEventListener("click", {url: pictureUrl}, function(event) {
                    //     let win = window.open(event.data.url, '_blank');
                    //     win.focus();
                    // });
                });

            }

            this.on("maxfilesexceeded", function (file) {
                this.removeAllFiles();
                this.addFile(file);
            });

            this.on("removedfile", function (file) {
                console.log(file);
                $.post(URL_CURRENT + urlDelete + "?type=" + type + "&filename=" + file.name);
            });
            this.on("thumbnail", function(file) {
                console.log(file); // will send to console all available props
                file.previewElement.addEventListener("click", function() {
                    let win = window.open(URL + "/download/" + file.name, '_blank');
                    win.focus();
                });
            });
            this.on("addedfile", function (file) {
                console.log(file); // will send to console all available props


            });
        }
    }
}

function isImageExisted(url) {
    var http = new XMLHttpRequest();
    http.open('HEAD', url, false);
    http.send();
    return http.status !== 500;
}

function changePreview(picture) {
    console.info("changePreview");

    mdz.removeAllFiles()
    if (typeof image1 !== 'undefined') {
        mdz.removeFile(image1);

    }

    if (picture.workingPermit !== null) {

        var picture = picture.workingPermit.resourcePath;

        if (undefined !== picture) {
            picture = URL + "/download/" + picture;

            var fileName = "";
            if (isImageExisted(picture)) {
                fileName = picture;
            }
            else {
                fileName = "\nFile not found\nPlease upload new one";
            }
            image1 = {"name": fileName};


            mdz.emit("addedfile", image1);
            mdz.emit("thumbnail", image1, picture);
            $(image1.previewElement).find('.dz-progress').hide()

        }
    }
}