package com.fairagora.verifik8.v8web.mvc.farms.dto;

public class FarmHiringRecruitmentDto {

	protected Long farmId;

	protected Boolean workersMakeFinancialDeposit;

	protected Long getBackFinancialDepositReason;

	protected Long noEarlyTerminationContractReason;

	protected Long contractTerminationReason;

	protected String contractTerminationOtherReason;

	protected Boolean keepWorkerDocumentSafeKeeping;

	protected Long keptWorkerEntityDocumentType1;

	protected Long keptWorkerEntityDocumentType2;

	protected Long keptWorkerEntityDocumentType3;

	protected Long keptWorkerEntityDocumentType4;

	protected Boolean anyContractSignedWithWorkers;

	protected Boolean staffHiredDirectly;

	protected Boolean staffHiredThroughAgent;

	protected Long salaryDeductionType1;

	protected Long salaryDeductionType2;

	protected Long salaryDeductionType3;

	protected Long salaryDeductionType4;

	protected String salaryDeductionOther;

	protected Float amountSalaryDeducedMonth;

	protected Boolean paymentSlipProvidedToWorker;

	protected Boolean workerInDebt;

	protected Long paymentDebtType1;

	protected Long paymentDebtType2;

	protected Long paymentDebtType3;

	protected Long paymentDebtType4;

	protected Boolean workersInDebtOtherStakeHolder;

	protected Boolean inKindPayment;

	protected String inKindPaymentType;

	protected Long hiringRestriction;

	public Long getFarmId() {
		return farmId;
	}

	public void setFarmId(Long farmId) {
		this.farmId = farmId;
	}

	public Boolean getWorkersMakeFinancialDeposit() {
		return workersMakeFinancialDeposit;
	}

	public void setWorkersMakeFinancialDeposit(Boolean workersMakeFinancialDeposit) {
		this.workersMakeFinancialDeposit = workersMakeFinancialDeposit;
	}

	public Long getGetBackFinancialDepositReason() {
		return getBackFinancialDepositReason;
	}

	public void setGetBackFinancialDepositReason(Long getBackFinancialDepositReason) {
		this.getBackFinancialDepositReason = getBackFinancialDepositReason;
	}

	public Long getNoEarlyTerminationContractReason() {
		return noEarlyTerminationContractReason;
	}

	public void setNoEarlyTerminationContractReason(Long noEarlyTerminationContractReason) {
		this.noEarlyTerminationContractReason = noEarlyTerminationContractReason;
	}

	public Long getContractTerminationReason() {
		return contractTerminationReason;
	}

	public void setContractTerminationReason(Long contractTerminationReason) {
		this.contractTerminationReason = contractTerminationReason;
	}

	public String getContractTerminationOtherReason() {
		return contractTerminationOtherReason;
	}

	public void setContractTerminationOtherReason(String contractTerminationOtherReason) {
		this.contractTerminationOtherReason = contractTerminationOtherReason;
	}

	public Boolean getKeepWorkerDocumentSafeKeeping() {
		return keepWorkerDocumentSafeKeeping;
	}

	public void setKeepWorkerDocumentSafeKeeping(Boolean keepWorkerDocumentSafeKeeping) {
		this.keepWorkerDocumentSafeKeeping = keepWorkerDocumentSafeKeeping;
	}

	public Long getKeptWorkerEntityDocumentType1() {
		return keptWorkerEntityDocumentType1;
	}

	public void setKeptWorkerEntityDocumentType1(Long keptWorkerEntityDocumentType1) {
		this.keptWorkerEntityDocumentType1 = keptWorkerEntityDocumentType1;
	}

	public Long getKeptWorkerEntityDocumentType2() {
		return keptWorkerEntityDocumentType2;
	}

	public void setKeptWorkerEntityDocumentType2(Long keptWorkerEntityDocumentType2) {
		this.keptWorkerEntityDocumentType2 = keptWorkerEntityDocumentType2;
	}

	public Long getKeptWorkerEntityDocumentType3() {
		return keptWorkerEntityDocumentType3;
	}

	public void setKeptWorkerEntityDocumentType3(Long keptWorkerEntityDocumentType3) {
		this.keptWorkerEntityDocumentType3 = keptWorkerEntityDocumentType3;
	}

	public Long getKeptWorkerEntityDocumentType4() {
		return keptWorkerEntityDocumentType4;
	}

	public void setKeptWorkerEntityDocumentType4(Long keptWorkerEntityDocumentType4) {
		this.keptWorkerEntityDocumentType4 = keptWorkerEntityDocumentType4;
	}

	public Boolean getAnyContractSignedWithWorkers() {
		return anyContractSignedWithWorkers;
	}

	public void setAnyContractSignedWithWorkers(Boolean anyContractSignedWithWorkers) {
		this.anyContractSignedWithWorkers = anyContractSignedWithWorkers;
	}

	public Boolean getStaffHiredDirectly() {
		return staffHiredDirectly;
	}

	public void setStaffHiredDirectly(Boolean staffHiredDirectly) {
		this.staffHiredDirectly = staffHiredDirectly;
	}

	public Boolean getStaffHiredThroughAgent() {
		return staffHiredThroughAgent;
	}

	public void setStaffHiredThroughAgent(Boolean staffHiredThroughAgent) {
		this.staffHiredThroughAgent = staffHiredThroughAgent;
	}

	public Long getSalaryDeductionType1() {
		return salaryDeductionType1;
	}

	public void setSalaryDeductionType1(Long salaryDeductionType1) {
		this.salaryDeductionType1 = salaryDeductionType1;
	}

	public Long getSalaryDeductionType2() {
		return salaryDeductionType2;
	}

	public void setSalaryDeductionType2(Long salaryDeductionType2) {
		this.salaryDeductionType2 = salaryDeductionType2;
	}

	public Long getSalaryDeductionType3() {
		return salaryDeductionType3;
	}

	public void setSalaryDeductionType3(Long salaryDeductionType3) {
		this.salaryDeductionType3 = salaryDeductionType3;
	}

	public Long getSalaryDeductionType4() {
		return salaryDeductionType4;
	}

	public void setSalaryDeductionType4(Long salaryDeductionType4) {
		this.salaryDeductionType4 = salaryDeductionType4;
	}

	public String getSalaryDeductionOther() {
		return salaryDeductionOther;
	}

	public void setSalaryDeductionOther(String salaryDeductionOther) {
		this.salaryDeductionOther = salaryDeductionOther;
	}

	public Float getAmountSalaryDeducedMonth() {
		return amountSalaryDeducedMonth;
	}

	public void setAmountSalaryDeducedMonth(Float amountSalaryDeducedMonth) {
		this.amountSalaryDeducedMonth = amountSalaryDeducedMonth;
	}

	public Boolean getPaymentSlipProvidedToWorker() {
		return paymentSlipProvidedToWorker;
	}

	public void setPaymentSlipProvidedToWorker(Boolean paymentSlipProvidedToWorker) {
		this.paymentSlipProvidedToWorker = paymentSlipProvidedToWorker;
	}

	public Boolean getWorkerInDebt() {
		return workerInDebt;
	}

	public void setWorkerInDebt(Boolean workerInDebt) {
		this.workerInDebt = workerInDebt;
	}

	public Long getPaymentDebtType1() {
		return paymentDebtType1;
	}

	public void setPaymentDebtType1(Long paymentDebtType1) {
		this.paymentDebtType1 = paymentDebtType1;
	}

	public Long getPaymentDebtType2() {
		return paymentDebtType2;
	}

	public void setPaymentDebtType2(Long paymentDebtType2) {
		this.paymentDebtType2 = paymentDebtType2;
	}

	public Long getPaymentDebtType3() {
		return paymentDebtType3;
	}

	public void setPaymentDebtType3(Long paymentDebtType3) {
		this.paymentDebtType3 = paymentDebtType3;
	}

	public Long getPaymentDebtType4() {
		return paymentDebtType4;
	}

	public void setPaymentDebtType4(Long paymentDebtType4) {
		this.paymentDebtType4 = paymentDebtType4;
	}

	public Boolean getWorkersInDebtOtherStakeHolder() {
		return workersInDebtOtherStakeHolder;
	}

	public void setWorkersInDebtOtherStakeHolder(Boolean workersInDebtOtherStakeHolder) {
		this.workersInDebtOtherStakeHolder = workersInDebtOtherStakeHolder;
	}

	public Boolean getInKindPayment() {
		return inKindPayment;
	}

	public void setInKindPayment(Boolean inKindPayment) {
		this.inKindPayment = inKindPayment;
	}

	public String getInKindPaymentType() {
		return inKindPaymentType;
	}

	public void setInKindPaymentType(String inKindPaymentType) {
		this.inKindPaymentType = inKindPaymentType;
	}

	public Long getHiringRestriction() {
		return hiringRestriction;
	}

	public void setHiringRestriction(Long hiringRestriction) {
		this.hiringRestriction = hiringRestriction;
	}
}
