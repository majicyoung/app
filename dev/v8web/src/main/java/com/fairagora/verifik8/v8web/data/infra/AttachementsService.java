package com.fairagora.verifik8.v8web.data.infra;

import java.io.File;
import java.io.IOException;

import javax.annotation.PostConstruct;

import com.fairagora.verifik8.v8web.data.domain.commons.AttachmentInterface;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;

@Service
public class AttachementsService {

	protected static final Log LOG = LogFactory.getLog(AttachementsService.class);

	@Value("${rootPath}")
	private String rootPath;

	private File rootDirectory;

	@PostConstruct
	protected void initMe() {
		rootDirectory = new File(rootPath);
		if (!rootDirectory.exists()) {
			rootDirectory.mkdirs();
			LOG.info("Create directory to store documents : " + rootDirectory.getAbsolutePath());
		}
		LOG.info("Attachements Service started, root directory would be :" + rootDirectory.getAbsolutePath());
	}

	/**
	 * get the root directory to store the files
	 * 
	 * @return
	 */
	protected File getRootDirectory() {
		return rootDirectory;
	}

	/**
	 * store uploaded file to local files repository, will try to avoid to
	 * replace previous document
	 * 
	 * @param at
	 * @param mpf
	 * @return
	 */
	public boolean store(AttachmentInterface at, MultipartFile mpf) {

		if (mpf.getSize() == 0) {
			return true;
		}

		String fname = mpf.getOriginalFilename();

		File localFile = new File(getRootDirectory(), fname);

		if (at.getResourcePath() != null && at.getResourcePath().equals(fname)) {
			// ok this is an update
		} else {
			String oName = fname;
			int i = 0;
			while (localFile.exists()) {
				fname = (i++) + "_" + oName;
				localFile = new File(getRootDirectory(), fname);
			}
		}

		try {
			FileUtils.writeByteArrayToFile(localFile, mpf.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		at.setResourcePath(fname);
		return true;
	}

	public static String cleanForFileName(String p_str) {
		String s = FilenameUtils.normalize(p_str);
		return s;
	}

	public File getFile(String resource) {
		return new File(getRootDirectory(), resource);
	}

}
