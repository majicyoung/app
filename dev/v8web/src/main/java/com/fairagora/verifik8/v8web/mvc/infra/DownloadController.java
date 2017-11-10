package com.fairagora.verifik8.v8web.mvc.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fairagora.verifik8.v8web.data.infra.AttachementsService;

@Controller
public class DownloadController {

	@Autowired
	private AttachementsService attachmentsService;

	@RequestMapping(value = "/download/{resource}.{xt}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<byte[]> download(@PathVariable("resource") String resource,
			@PathVariable("xt") String xt, Model mv, HttpServletResponse response) throws IOException {

		File f = attachmentsService.getFile(resource + "." + xt);
		byte[] documentBody = FileUtils.readFileToByteArray(f);

		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_PDF);
		header.set(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + f.getName().replace(" ", "_"));
		header.setContentLength(documentBody.length);

		ResponseEntity<byte[]> r = new ResponseEntity<>(documentBody, org.springframework.http.HttpStatus.OK);
		return r;
	}

}
