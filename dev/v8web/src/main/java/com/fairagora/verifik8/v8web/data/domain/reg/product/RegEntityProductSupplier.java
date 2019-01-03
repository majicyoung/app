package com.fairagora.verifik8.v8web.data.domain.reg.product;


import com.fairagora.verifik8.v8web.data.domain.V8EntitySupport;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProduct;
import com.fairagora.verifik8.v8web.data.domain.cl.CLRefProductType;
import com.fairagora.verifik8.v8web.data.domain.reg.RegEntity;
import com.fairagora.verifik8.v8web.data.domain.reg.RegPicture;
import com.fairagora.verifik8.v8web.data.domain.reg.V8Base;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "reg_entity_product_suppliers")
public class RegEntityProductSupplier extends V8EntitySupport {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	@ManyToOne()
	@JoinColumn(name = "ENTITY_ID")
	protected RegEntity entity;

	@OneToMany(mappedBy="regEntityProductSupplier", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	protected List<CLRefProduct> clRefProducts;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return comment;
	}

	public RegEntity getEntity() {
		return entity;
	}

	public void setEntity(RegEntity entity) {
		this.entity = entity;
	}

	public List<CLRefProduct> getClRefProducts() {
		return clRefProducts;
	}

	public void setClRefProducts(List<CLRefProduct> clRefProducts) {
		this.clRefProducts = clRefProducts;
	}
}
