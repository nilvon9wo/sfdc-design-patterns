public with sharing class MVC_StudentAuraCtrl {
	private DAO_StudentDao studentDao; 
        
    public MVC_StudentAuraCtrl(DAO_StudentDao studentDao) {
	    this.studentDao = studentDao;
    } 

    public MVC_StudentAuraCtrl() {
        this(new DAO_StudentDao());
	}    
    
    @AuraEnabled
    public static Student__c getStudent(String enrollmentNumber) {
    	Integer enrollmentNumberAsInteger = Integer.valueOf(String.valueOf(enrollmentNumber));
    	return (new MVC_StudentAuraCtrl()).selectStudent(enrollmentNumberAsInteger);
    }
    
    private Student__c selectStudent(Integer enrollmentNumber) {
    	return this.studentDao.selectByEnrollmentNumber(enrollmentNumber);
    }
    
    @AuraEnabled
    public static Student__c updateStudent(String enrollmentNumber, String studentName) {
    	Integer enrollmentNumberAsInteger = Integer.valueOf(String.valueOf(enrollmentNumber));
    	return (new MVC_StudentAuraCtrl()).doUpdate(enrollmentNumberAsInteger, studentName);
    }
    
    private Student__c doUpdate(Integer enrollmentNumber, String studentName) {
    	Student__c student =  this.studentDao.selectByEnrollmentNumber(enrollmentNumber);
    	student.Name__c = studentName;
    	this.studentDao.doUpdate(student);
    	return student;
    }
}