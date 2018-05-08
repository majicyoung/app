package com.fairagora.verifik8.v8web.mvc.farms.dto;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFacilities;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component("farmRegEntityFacilitiesAttachementSto")
public class FarmRegEntityFacilitiesAttachementSto {

	private Map<String, RegPicture> toiletsAttachment;
	private Map<String, RegPicture> restRoomAttachment;
	private Map<String, RegPicture> showerAttachment;
	private Map<String, RegPicture> freeDrinkingAttachment;

	public FarmRegEntityFacilitiesAttachementSto() {
		super();
	}

	public Map<String, RegPicture> getToiletsAttachment() {
		return toiletsAttachment;
	}

	public void setToiletsAttachment(Map<String, RegPicture> toiletsAttachment) {
		this.toiletsAttachment = toiletsAttachment;
	}

	public Map<String, RegPicture> getRestRoomAttachment() {
		return restRoomAttachment;
	}

	public void setRestRoomAttachment(Map<String, RegPicture> restRoomAttachment) {
		this.restRoomAttachment = restRoomAttachment;
	}

	public Map<String, RegPicture> getShowerAttachment() {
		return showerAttachment;
	}

	public void setShowerAttachment(Map<String, RegPicture> showerAttachment) {
		this.showerAttachment = showerAttachment;
	}

	public Map<String, RegPicture> getFreeDrinkingAttachment() {
		return freeDrinkingAttachment;
	}

	public void setFreeDrinkingAttachment(Map<String, RegPicture> freeDrinkingAttachment) {
		this.freeDrinkingAttachment = freeDrinkingAttachment;
	}

	public void init(RegEntityFacilities staffMgmt){
		this.toiletsAttachment = new HashMap<>();
		for (RegPicture regPicture : staffMgmt.getAccessToiletsAttachments()) {
			this.toiletsAttachment.put(regPicture.getResourcePath(), regPicture);
		}

		this.restRoomAttachment = new HashMap<>();
		for (RegPicture regPicture : staffMgmt.getAccessRestRoomAttachments()) {
			this.restRoomAttachment.put(regPicture.getResourcePath(), regPicture);
		}

		this.showerAttachment = new HashMap<>();
		for (RegPicture regPicture : staffMgmt.getAccessShowerAttachments()) {
			this.showerAttachment.put(regPicture.getResourcePath(), regPicture);
		}

		this.freeDrinkingAttachment = new HashMap<>();
		for (RegPicture regPicture : staffMgmt.getAccessToFreeDrinkingAttachments()) {
			this.freeDrinkingAttachment.put(regPicture.getResourcePath(), regPicture);
		}
	}
}
