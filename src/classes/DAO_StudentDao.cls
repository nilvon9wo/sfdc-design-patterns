public with sharing class DAO_StudentDao implements DAO_StudentDaoIntf {
	public List<Student__c> selectAll() {
    	return [ 
    		SELECT Id, Name__c, EnrollmentNumber__c
    		FROM Student__c
    	];
	}	   

    public List<Student__c> selectByEnrollmentNumber(Set<Integer> enrollmentNumberSet) {
    	return [
    		SELECT Id, Name__c, EnrollmentNumber__c
    		FROM Student__c
    		WHERE EnrollmentNumber__c IN :enrollmentNumberSet
    	];
    }
    
    public Student__c selectByEnrollmentNumber(Integer enrollmentNumberSet) {
    	try {
   			return this.selectByEnrollmentNumber(new Set<Integer>{enrollmentNumberSet})[0];
    	}
    	catch (ListException ex) { 
    		throw new DAO_StudentDaoException('Student with enrollment number ' + enrollmentNumberSet + ' does not exist.');
    	} 
    }

	public void doInsert(List<Student__c> studentList) {
		insert studentList;
	}	    

	public void doInsert(Student__c student) {
		this.doInsert(new List<Student__c>{student});
		System.debug('Student: Enrollment Number ' + student.EnrollmentNumber__c + ', inserted in the database');
	}	   

	public void doUpdate(List<Student__c> studentList) {
		update studentList;
	}	   

	public void doUpdate(Student__c student) {
		this.doUpdate(new List<Student__c>{student});
		System.debug('Student: Enrollment Number ' + student.EnrollmentNumber__c + ', updated in the database');
	}	   

	public void doDelete(Integer enrollmentNumber) {
		this.doDelete(this.selectByEnrollmentNumber(enrollmentNumber));
	}

	public void doDelete(List<Student__c> studentList) {
		delete studentList;
	}	   

	public void doDelete(Student__c student) {
		this.doDelete(new List<Student__c>{student});
		System.debug('Student: Enrollment Number ' + student.EnrollmentNumber__c + ', deleted from database');
	}	   
}