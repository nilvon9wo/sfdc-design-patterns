public with sharing class TXOBJ_StudentValueObject {
    public String name;
    public Integer enrollmentNumber;
    
    public TXOBJ_StudentValueObject(String name, Integer enrollmentNumber) {
    	this.name = name;
    	this.enrollmentNumber = enrollmentNumber;
    }
    
    public TXOBJ_StudentValueObject(Student__c student) {
    	this(student.Name__c, (Integer) student.EnrollmentNumber__c);
    }
}