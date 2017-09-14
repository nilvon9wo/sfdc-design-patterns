public with sharing class FLTR_AndCriteria implements FLTR_CriteriaIntf {
	private FLTR_CriteriaIntf firstCriteria;
	private FLTR_CriteriaIntf secondCriteria;
	
	public FLTR_AndCriteria(FLTR_CriteriaIntf firstCriteria, FLTR_CriteriaIntf secondCriteria) {
		this.firstCriteria = firstCriteria;
		this.secondCriteria = secondCriteria;
	}
	
	public List<FLTR_Person> meetCriteria(List<FLTR_Person> personList) {
		 List<FLTR_Person> firstCriteriaPersonList = this.firstCriteria.meetCriteria(personList);
		 return this.secondCriteria.meetCriteria(firstCriteriaPersonList);
	}
}