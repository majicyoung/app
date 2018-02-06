package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;

@Entity
@Table(name = "reg_entity_facilities")
public class RegEntityFacilities extends V8Base {

	@Id
	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	@Column(name = "ACCESS_TOILETS")
	protected Boolean accessToilets;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "ACCESS_TOILETS_URL")) })
	protected Attachment accessToiletsAttachment;

	@Column(name = "ACCESS_REST_ROOM")
	protected Boolean accessRestRoom;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "ACCESS_REST_ROOM_URL")) })
	protected Attachment accessRestRoomAttachment;

	@Column(name = "ACCESS_SHOWER")
	protected Boolean accessShower;

	@Embedded
	@AttributeOverrides({ @AttributeOverride(name = "resourcePath", column = @Column(name = "ACCESS_SHOWER_URL")) })
	protected Attachment accessShowerAttachment;

	@Column(name = "ACCESS_TO_FREE_DRINKING")
	protected Boolean accessToFreeDrinking;

	@Embedded
	@AttributeOverrides({
			@AttributeOverride(name = "resourcePath", column = @Column(name = "ACCESS_TO_FREE_DRINKING_URL")) })
	protected Attachment accessToFreeDrinkingAttachment;

	@Column(name = "PRESENCE_FIRST_AID_KIT")
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

	public Attachment getAccessToiletsAttachment() {
		return accessToiletsAttachment;
	}

	public void setAccessToiletsAttachment(Attachment accessToiletsAttachment) {
		this.accessToiletsAttachment = accessToiletsAttachment;
	}

	public Boolean getAccessRestRoom() {
		return accessRestRoom;
	}

	public void setAccessRestRoom(Boolean accessRestRoom) {
		this.accessRestRoom = accessRestRoom;
	}

	public Attachment getAccessRestRoomAttachment() {
		return accessRestRoomAttachment;
	}

	public void setAccessRestRoomAttachment(Attachment accessRestRoomAttachment) {
		this.accessRestRoomAttachment = accessRestRoomAttachment;
	}

	public Boolean getAccessShower() {
		return accessShower;
	}

	public void setAccessShower(Boolean accessShower) {
		this.accessShower = accessShower;
	}

	public Attachment getAccessShowerAttachment() {
		return accessShowerAttachment;
	}

	public void setAccessShowerAttachment(Attachment accessShowerAttachment) {
		this.accessShowerAttachment = accessShowerAttachment;
	}

	public Boolean getAccessToFreeDrinking() {
		return accessToFreeDrinking;
	}

	public void setAccessToFreeDrinking(Boolean accessToFreeDrinking) {
		this.accessToFreeDrinking = accessToFreeDrinking;
	}

	public Attachment getAccessToFreeDrinkingAttachment() {
		return accessToFreeDrinkingAttachment;
	}

	public void setAccessToFreeDrinkingAttachment(Attachment accessToFreeDrinkingAttachment) {
		this.accessToFreeDrinkingAttachment = accessToFreeDrinkingAttachment;
	}

	public Boolean getPresenceFirstAidKit() {
		return presenceFirstAidKit;
	}

	public void setPresenceFirstAidKit(Boolean presenceFirstAidKit) {
		this.presenceFirstAidKit = presenceFirstAidKit;
	}
}
