public with sharing class FLTR_OrCriteria implements FLTR_CriteriaIntf {
	private FLTR_CriteriaIntf firstCriteria;
	private FLTR_CriteriaIntf secondCriteria;
	
	public FLTR_OrCriteria(FLTR_CriteriaIntf firstCriteria, FLTR_CriteriaIntf secondCriteria) {
		this.firstCriteria = firstCriteria;
		this.secondCriteria = secondCriteria;
	}
	
	public List<FLTR_Person> meetCriteria(List<FLTR_Person> personList) {
		 List<FLTR_Person> firstCriteriaPersonList = this.firstCriteria.meetCriteria(personList);
		 List<FLTR_Person> secondCriteriaPersonList = this.secondCriteria.meetCriteria(personList);
		 
		 Set<FLTR_Person> eitherCriteriaPersonSet = new Set<FLTR_Person>(firstCriteriaPersonList);
		 eitherCriteriaPersonSet.addAll(secondCriteriaPersonList);
		 
		 return new List<FLTR_Person>(eitherCriteriaPersonSet);
	}
}