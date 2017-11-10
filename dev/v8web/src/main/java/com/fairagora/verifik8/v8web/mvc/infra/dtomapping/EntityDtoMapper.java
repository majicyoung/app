package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.mapstruct.MapperConfig;
import org.mapstruct.MappingTarget;
import org.mapstruct.TargetType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;
import com.fairagora.verifik8.v8web.data.domain.commons.Attachment;
import com.fairagora.verifik8.v8web.data.infra.AttachementsService;

@Component
public class EntityDtoMapper {

	@PersistenceContext
	protected EntityManager entityManager;

	@Autowired
	protected AttachementsService attachementService;

	public Long toReference(V8Entity entity) {
		return entity != null ? entity.getId() : null;
	}

	public String toName(V8Entity entity) {
		return entity == null ? null : entity.getName();
	}

	public <T extends V8Entity> T resolve(Long reference, @TargetType Class<T> entityClass) {
		return reference != null ? entityManager.find(entityClass, reference) : null;
	}

	public void map(MultipartFile mpf, @MappingTarget Attachment at) {
		if (at == null)
			at = new Attachment();
		attachementService.store(at, mpf);
	}

}
