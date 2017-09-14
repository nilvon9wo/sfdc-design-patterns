public with sharing class FLTR_CriteriaPatternDemo {
	private static List<FLTR_Person> PERSON_LIST = new List<FLTR_Person>{
			new FLTR_Person('Robert', FLTR_Gender.MALE, FLTR_MaritalStatus.SINGLE),
			new FLTR_Person('John', FLTR_Gender.MALE, FLTR_MaritalStatus.MARRIED),
			new FLTR_Person('Laura', FLTR_Gender.FEMALE, FLTR_MaritalStatus.MARRIED),
			new FLTR_Person('Diana', FLTR_Gender.FEMALE, FLTR_MaritalStatus.SINGLE),
			new FLTR_Person('Mike', FLTR_Gender.MALE, FLTR_MaritalStatus.SINGLE),
			new FLTR_Person('Bobby', FLTR_Gender.MALE, FLTR_MaritalStatus.SINGLE)
		};  
	
	public static void main() {
		(new FLTR_CriteriaPatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		FLTR_CriteriaIntf criteriaMale = new FLTR_CriteriaMale();
		this.display('Males', criteriaMale.meetCriteria(PERSON_LIST));

		FLTR_CriteriaIntf criteriaFemale = new FLTR_CriteriaFemale();
		this.display('Females', criteriaFemale.meetCriteria(PERSON_LIST));

		FLTR_CriteriaIntf criteriaSingle = new FLTR_CriteriaSingle();
		FLTR_CriteriaIntf criteriaSingleMale = new FLTR_AndCriteria(criteriaSingle, criteriaMale);
		this.display('Single Males', criteriaSingleMale.meetCriteria(PERSON_LIST));

		FLTR_CriteriaIntf criteriaSingleOrFemale = new FLTR_OrCriteria(criteriaSingle, criteriaFemale);
		this.display('Single Or Female', criteriaSingleOrFemale.meetCriteria(PERSON_LIST));
	}
	
	private void display(String label, List<FLTR_Person> personList) {
		System.debug(label);
		this.printPERSON_LIST(personList);
	} 
	
	private void printPERSON_LIST(List<FLTR_Person> personList) {
		for (FLTR_Person person : personList) {
			System.debug('Person: [ Name: ' + person.name + ', Gender: ' + person.gender + ', Marital status: ' + person.maritalStatus + ']');
		}
	}
    
}