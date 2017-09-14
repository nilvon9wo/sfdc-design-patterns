public with sharing class FLTR_CriteriaSingle implements FLTR_CriteriaIntf {
	public List<FLTR_Person> meetCriteria(List<FLTR_Person> personList) {
		List<FLTR_Person> resultPersonList = new List<FLTR_Person>();
		for (FLTR_Person person : personList) {
			if (FLTR_MaritalStatus.SINGLE.equals(person.maritalStatus)) {
				resultPersonList.add(person);
			}
		}
		return resultPersonList;
	}
}