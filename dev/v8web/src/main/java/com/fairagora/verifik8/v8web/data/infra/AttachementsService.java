package com.fairagora.verifik8.v8web.data.infra;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;

@Service
public class AttachementsService {

	@Value("${rootPath}")
	private String rootPath;

	/**
	 * get the root directory to store the files
	 * @return
	 */
	protected File getRootDirectory() {
		File f = new File(rootPath);
		if (!f.exists())
			f.mkdirs();
		return f;
	}

	public void store(Attachment at) {

	}

}
