package com.fairagora.verifik8.v8web.data.domain.reg.farm;

import javax.persistence.*;

import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;

@Entity
@Table(name = "reg_entity_facilities")
public class RegEntityFacilities extends V8Base {

	@Id
	@Column(name = "REG_ENTITY_FARM_ID")
	protected Long farmId;

	@Column(name = "ACCESS_TOILETS")
	protected Boolean accessToilets;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_facilities_access_toilets_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> accessToiletsAttachment;

	@Column(name = "ACCESS_REST_ROOM")
	protected Boolean accessRestRoom;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_facilities_access_restroom_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> accessRestRoomAttachment;

	@Column(name = "ACCESS_SHOWER")
	protected Boolean accessShower;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_facilities_access_shower_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> accessShowerAttachment;

	@Column(name = "ACCESS_TO_FREE_DRINKING")
	protected Boolean accessToFreeDrinking;

	@OneToMany(cascade=CascadeType.ALL,
			fetch = FetchType.EAGER)
	@JoinTable(
			name = "jt_reg_facilities_access_drinking_reg_picture",
			joinColumns = @JoinColumn(name = "ENTITY_ID"),
			inverseJoinColumns = @JoinColumn(name = "PICTURE_ID")
	)
	@Fetch(value = FetchMode.SUBSELECT)
	protected List<RegPicture> accessToFreeDrinkingAttachment;

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

	public List<RegPicture> getAccessToiletsAttachment() {
		return accessToiletsAttachment;
	}

	public void setAccessToiletsAttachment(List<RegPicture> accessToiletsAttachment) {
		this.accessToiletsAttachment = accessToiletsAttachment;
	}

	public Boolean getAccessRestRoom() {
		return accessRestRoom;
	}

	public void setAccessRestRoom(Boolean accessRestRoom) {
		this.accessRestRoom = accessRestRoom;
	}

	public List<RegPicture> getAccessRestRoomAttachment() {
		return accessRestRoomAttachment;
	}

	public void setAccessRestRoomAttachment(List<RegPicture> accessRestRoomAttachment) {
		this.accessRestRoomAttachment = accessRestRoomAttachment;
	}

	public Boolean getAccessShower() {
		return accessShower;
	}

	public void setAccessShower(Boolean accessShower) {
		this.accessShower = accessShower;
	}

	public List<RegPicture> getAccessShowerAttachment() {
		return accessShowerAttachment;
	}

	public void setAccessShowerAttachment(List<RegPicture> accessShowerAttachment) {
		this.accessShowerAttachment = accessShowerAttachment;
	}

	public Boolean getAccessToFreeDrinking() {
		return accessToFreeDrinking;
	}

	public void setAccessToFreeDrinking(Boolean accessToFreeDrinking) {
		this.accessToFreeDrinking = accessToFreeDrinking;
	}

	public List<RegPicture> getAccessToFreeDrinkingAttachment() {
		return accessToFreeDrinkingAttachment;
	}

	public void setAccessToFreeDrinkingAttachment(List<RegPicture> accessToFreeDrinkingAttachment) {
		this.accessToFreeDrinkingAttachment = accessToFreeDrinkingAttachment;
	}

	public Boolean getPresenceFirstAidKit() {
		return presenceFirstAidKit;
	}

	public void setPresenceFirstAidKit(Boolean presenceFirstAidKit) {
		this.presenceFirstAidKit = presenceFirstAidKit;
	}
}
