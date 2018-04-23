package com.fairagora.verifik8.v8web.mvc.farms.dto;

import java.util.List;

public class FarmHiringRecruitmentDto {

	protected Long farmId;

	protected Boolean workersMakeFinancialDeposit;

	protected Long getBackFinancialDepositReason;

	protected Long noEarlyTerminationContractReason;

	protected Long contractTerminationReason;

	protected String contractTerminationOtherReason;

	protected Boolean keepWorkerDocumentSafeKeeping;

	protected List<Long> keptWorkerEntityDocumentTypes;

	protected Boolean anyContractSignedWithWorkers;

	protected Boolean staffHiredDirectly;

	protected Boolean staffHiredThroughAgent;

	protected List<Long> salaryDeductionTypes;

	protected String salaryDeductionOther;

	protected Float amountSalaryDeducedMonth;

	protected Boolean paymentSlipProvidedToWorker;

	protected Boolean workerInDebt;

	protected List<Long> paymentDebtTypes;

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



	public List<Long> getKeptWorkerEntityDocumentTypes() {
		return keptWorkerEntityDocumentTypes;
	}

	public void setKeptWorkerEntityDocumentTypes(List<Long> keptWorkerEntityDocumentTypes) {
		this.keptWorkerEntityDocumentTypes = keptWorkerEntityDocumentTypes;
	}

	public List<Long> getSalaryDeductionTypes() {
		return salaryDeductionTypes;
	}

	public void setSalaryDeductionTypes(List<Long> salaryDeductionTypes) {
		this.salaryDeductionTypes = salaryDeductionTypes;
	}

	public List<Long> getPaymentDebtTypes() {
		return paymentDebtTypes;
	}

	public void setPaymentDebtTypes(List<Long> paymentDebtTypes) {
		this.paymentDebtTypes = paymentDebtTypes;
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
