package com.fairagora.verifik8.v8web.mvc.infra.dtomapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.mapstruct.TargetType;
import org.springframework.stereotype.Component;

import com.fairagora.verifik8.v8web.data.domain.V8Entity;

@Component
public class EntityDtoMapper {

	@PersistenceContext
	protected EntityManager entityManager;

	public Long toReference(V8Entity entity) {
		return entity != null ? entity.getId() : null;
	}

	public <T extends V8Entity> T resolve(Long reference, @TargetType Class<T> entityClass) {
		return reference != null ? entityManager.find(entityClass, reference) : null;
	}
}
