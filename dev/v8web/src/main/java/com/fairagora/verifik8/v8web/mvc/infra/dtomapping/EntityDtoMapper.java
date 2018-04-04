package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
	 * TODO: Add doc
	 * @param entities
	 * @return
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

	public <T extends V8Entity> List<T> resolve(List<Long> reference, @TargetType Class<T> entityClass) {
		if (reference == null) return null;
		List<T> mReferences = new ArrayList<>();
		reference.forEach(aLong -> mReferences.add( resolve(aLong, entityClass) ));
		return mReferences;
	}

	public void map(MultipartFile mpf, @MappingTarget Attachment at) {
		if (at == null)
			at = new Attachment();
		attachementService.store(at, mpf);
	}

}
