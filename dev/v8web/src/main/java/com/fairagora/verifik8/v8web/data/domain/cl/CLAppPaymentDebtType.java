package com.fairagora.verifik8.v8web.data.domain.cl;

import com.fairagora.verifik8.v8web.data.domain.reg.farm.RegEntityStaffManagement;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.List;

@Entity()
@Table(name = "cl_app_payment_debt_types")
public class CLAppPaymentDebtType extends CodeListSupport {

	@ManyToMany(mappedBy="paymentDebtTypes")
	private List<RegEntityStaffManagement> regEntityStaffManagements;


}
