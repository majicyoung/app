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
	protected List<RegPicture> accessToiletsAttachments;

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
	protected List<RegPicture> accessRestRoomAttachments;

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
	protected List<RegPicture> accessShowerAttachments;

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
	protected List<RegPicture> accessToFreeDrinkingAttachments;

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

	public List<RegPicture> getAccessToiletsAttachments() {
		return accessToiletsAttachments;
	}

	public void setAccessToiletsAttachments(List<RegPicture> accessToiletsAttachments) {
		this.accessToiletsAttachments = accessToiletsAttachments;
	}

	public Boolean getAccessRestRoom() {
		return accessRestRoom;
	}

	public void setAccessRestRoom(Boolean accessRestRoom) {
		this.accessRestRoom = accessRestRoom;
	}

	public List<RegPicture> getAccessRestRoomAttachments() {
		return accessRestRoomAttachments;
	}

	public void setAccessRestRoomAttachments(List<RegPicture> accessRestRoomAttachments) {
		this.accessRestRoomAttachments = accessRestRoomAttachments;
	}

	public Boolean getAccessShower() {
		return accessShower;
	}

	public void setAccessShower(Boolean accessShower) {
		this.accessShower = accessShower;
	}

	public List<RegPicture> getAccessShowerAttachments() {
		return accessShowerAttachments;
	}

	public void setAccessShowerAttachments(List<RegPicture> accessShowerAttachments) {
		this.accessShowerAttachments = accessShowerAttachments;
	}

	public Boolean getAccessToFreeDrinking() {
		return accessToFreeDrinking;
	}

	public void setAccessToFreeDrinking(Boolean accessToFreeDrinking) {
		this.accessToFreeDrinking = accessToFreeDrinking;
	}

	public List<RegPicture> getAccessToFreeDrinkingAttachments() {
		return accessToFreeDrinkingAttachments;
	}

	public void setAccessToFreeDrinkingAttachments(List<RegPicture> accessToFreeDrinkingAttachments) {
		this.accessToFreeDrinkingAttachments = accessToFreeDrinkingAttachments;
	}

	public Boolean getPresenceFirstAidKit() {
		return presenceFirstAidKit;
	}

	public void setPresenceFirstAidKit(Boolean presenceFirstAidKit) {
		this.presenceFirstAidKit = presenceFirstAidKit;
	}
}
