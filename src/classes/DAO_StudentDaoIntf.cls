public interface DAO_StudentDaoIntf {
	List<Student__c> selectAll();
	Student__c selectByEnrollmentNumber(Integer enrollmentNumber);
	void doInsert(Student__c student);	   
	void doUpdate(Student__c student);	   
	void doDelete(Student__c student);	    
}