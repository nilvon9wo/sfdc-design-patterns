public with sharing class FLTR_CriteriaMale implements FLTR_CriteriaIntf {
	public List<FLTR_Person> meetCriteria(List<FLTR_Person> personList) {
		List<FLTR_Person> resultPersonList = new List<FLTR_Person>();
		for (FLTR_Person person : personList) {
			if (FLTR_Gender.MALE.equals(person.gender)) {
				resultPersonList.add(person);
			}
		}
		return resultPersonList;
	}
}