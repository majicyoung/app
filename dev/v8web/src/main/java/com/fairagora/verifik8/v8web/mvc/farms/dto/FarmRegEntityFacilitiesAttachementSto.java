package com.fairagora.verifik8.v8web.mvc.farms.dto;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityFacilities;
import org.springframework.stereotype.Component;

@Component("farmRegEntityFacilitiesAttachementSto")
public class FarmRegEntityFacilitiesAttachementSto {

	private Attachment toiletsAttachment;
	private Attachment restRoomAttachment;
	private Attachment showerAttachment;
	private Attachment freeDrinkingAttachment;

	public FarmRegEntityFacilitiesAttachementSto() {
		super();
	}

	public Attachment getToiletsAttachment() {
		return toiletsAttachment;
	}

	public void setToiletsAttachment(Attachment toiletsAttachment) {
		this.toiletsAttachment = toiletsAttachment;
	}

	public Attachment getRestRoomAttachment() {
		return restRoomAttachment;
	}

	public void setRestRoomAttachment(Attachment restRoomAttachment) {
		this.restRoomAttachment = restRoomAttachment;
	}

	public Attachment getShowerAttachment() {
		return showerAttachment;
	}

	public void setShowerAttachment(Attachment showerAttachment) {
		this.showerAttachment = showerAttachment;
	}

	public Attachment getFreeDrinkingAttachment() {
		return freeDrinkingAttachment;
	}

	public void setFreeDrinkingAttachment(Attachment freeDrinkingAttachment) {
		this.freeDrinkingAttachment = freeDrinkingAttachment;
	}

	public void init(RegEntityFacilities staffMgmt){
		this.setToiletsAttachment(staffMgmt.getAccessToiletsAttachment());
		this.setRestRoomAttachment(staffMgmt.getAccessRestRoomAttachment());
		this.setFreeDrinkingAttachment(staffMgmt.getAccessShowerAttachment());
		this.setFreeDrinkingAttachment(staffMgmt.getAccessToFreeDrinkingAttachment());
	}
}
