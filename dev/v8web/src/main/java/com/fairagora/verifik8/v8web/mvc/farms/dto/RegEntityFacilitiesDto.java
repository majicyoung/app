package com.fairagora.verifik8.v8web.mvc.farms.dto;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class RegEntityFacilitiesDto {

	protected Long farmId;

	protected Boolean accessToilets;
	protected MultipartFile accessToiletsAttachmentMultipart;
	protected List<String> accessToiletsAttachmentUrl;

	protected Boolean accessRestRoom;
	protected MultipartFile accessRestRoomAttachmentMultipart;
	protected List<String> accessRestRoomAttachmentUrl;

	protected Boolean accessShower;
	protected MultipartFile accessShowerAttachmentMultipart;
	protected List<String> accessShowerAttachmentUrl;

	protected Boolean accessToFreeDrinking;
	protected MultipartFile accessToFreeDrinkingAttachmentMultipart;
	protected List<String> accessToFreeDrinkingAttachmentUrl;

	protected Boolean presenceFirstAidKit;

	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

	public Boolean getAccessToilets() {
		return accessToilets;
	}

	public void setAccessToilets(Boolean accessToilets) {
		this.accessToilets = accessToilets;
	}

	public MultipartFile getAccessToiletsAttachmentMultipart() {
		return accessToiletsAttachmentMultipart;
	}

	public void setAccessToiletsAttachmentMultipart(MultipartFile accessToiletsAttachmentMultipart) {
		this.accessToiletsAttachmentMultipart = accessToiletsAttachmentMultipart;
	}

	public List<String> getAccessToiletsAttachmentUrl() {
		return accessToiletsAttachmentUrl;
	}

	public void setAccessToiletsAttachmentUrl(List<String> accessToiletsAttachmentUrl) {
		this.accessToiletsAttachmentUrl = accessToiletsAttachmentUrl;
	}

	public Boolean getAccessRestRoom() {
		return accessRestRoom;
	}

	public void setAccessRestRoom(Boolean accessRestRoom) {
		this.accessRestRoom = accessRestRoom;
	}

	public MultipartFile getAccessRestRoomAttachmentMultipart() {
		return accessRestRoomAttachmentMultipart;
	}

	public void setAccessRestRoomAttachmentMultipart(MultipartFile accessRestRoomAttachmentMultipart) {
		this.accessRestRoomAttachmentMultipart = accessRestRoomAttachmentMultipart;
	}

	public List<String> getAccessRestRoomAttachmentUrl() {
		return accessRestRoomAttachmentUrl;
	}

	public void setAccessRestRoomAttachmentUrl(List<String> accessRestRoomAttachmentUrl) {
		this.accessRestRoomAttachmentUrl = accessRestRoomAttachmentUrl;
	}

	public Boolean getAccessShower() {
		return accessShower;
	}

	public void setAccessShower(Boolean accessShower) {
		this.accessShower = accessShower;
	}

	public MultipartFile getAccessShowerAttachmentMultipart() {
		return accessShowerAttachmentMultipart;
	}

	public void setAccessShowerAttachmentMultipart(MultipartFile accessShowerAttachmentMultipart) {
		this.accessShowerAttachmentMultipart = accessShowerAttachmentMultipart;
	}

	public List<String> getAccessShowerAttachmentUrl() {
		return accessShowerAttachmentUrl;
	}

	public void setAccessShowerAttachmentUrl(List<String> accessShowerAttachmentUrl) {
		this.accessShowerAttachmentUrl = accessShowerAttachmentUrl;
	}

	public Boolean getAccessToFreeDrinking() {
		return accessToFreeDrinking;
	}

	public void setAccessToFreeDrinking(Boolean accessToFreeDrinking) {
		this.accessToFreeDrinking = accessToFreeDrinking;
	}

	public List<String> getAccessToFreeDrinkingAttachmentUrl() {
		return accessToFreeDrinkingAttachmentUrl;
	}

	public void setAccessToFreeDrinkingAttachmentUrl(List<String> accessToFreeDrinkingAttachmentUrl) {
		this.accessToFreeDrinkingAttachmentUrl = accessToFreeDrinkingAttachmentUrl;
	}

	public Boolean getPresenceFirstAidKit() {
		return presenceFirstAidKit;
	}

	public void setPresenceFirstAidKit(Boolean presenceFirstAidKit) {
		this.presenceFirstAidKit = presenceFirstAidKit;
	}

	public MultipartFile getAccessToFreeDrinkingAttachmentMultipart() {
		return accessToFreeDrinkingAttachmentMultipart;
	}

	public void setAccessToFreeDrinkingAttachmentMultipart(MultipartFile accessToFreeDrinkingAttachmentMultipart) {
		this.accessToFreeDrinkingAttachmentMultipart = accessToFreeDrinkingAttachmentMultipart;
	}

}
