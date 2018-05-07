package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import org.mapstruct.MappingTarget;
import org.mapstruct.TargetType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;

import java.util.ArrayList;
import java.util.List;

@Component
public class EntityDtoMapper {

	@PersistenceContext
	protected EntityManager entityManager;

	@Autowired
	protected AttachementsService attachementService;

	public Long toReference(V8Entity entity) {
		return entity != null ? entity.getId() : null;
	}

	/**
	 * Map list of entities to list of entities ID
	 * @param entities parameters to converts
	 * @return list of ids
	 */
	public <T extends V8Entity> List<Long> toReference(List<T> entities) {
		if (entities == null) return null;
		List<Long> mEntities = new ArrayList<>();
		entities.forEach(v8Entity -> mEntities.add(toReference(v8Entity)));
		return mEntities;
	}

	public String toName(V8Entity entity) {
		return entity == null ? null : entity.getName();
	}

	public <T extends V8Entity> T resolve(Long reference, @TargetType Class<T> entityClass) {
		return reference != null ? entityManager.find(entityClass, reference) : null;
	}

	/**
	 * Convert list on id to V8Entity class.
	 * @param reference List of ids
	 * @param entityClass class to convert to
	 * @param <T>  Type of the class
	 * @return list of converted class
	 */
	public <T extends V8Entity> List<T> resolve(List<Long> reference, @TargetType Class<T> entityClass) {
		if (reference == null) return null;
		List<T> mReferences = new ArrayList<>();
		reference.forEach(aLong -> mReferences.add( resolve(aLong, entityClass) ));
		return mReferences;
	}

	public void map(MultipartFile mpf, @MappingTarget RegPicture regPicture) {
		if (regPicture == null)
			regPicture = new RegPicture();
		attachementService.store(regPicture, mpf);
	}

	public void map(MultipartFile mpf, @MappingTarget Attachment at) {
		if (at == null)
			at = new Attachment();
		attachementService.store(at, mpf);
	}

}
