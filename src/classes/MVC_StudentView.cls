public with sharing class MVC_StudentView {
	public void printStudentDetails(Student__c student) {
		System.debug('Student:'); 
		System.debug('Name: ' + student.Name__c);
		System.debug('Roll Number: ' + student.EnrollmentNumber__c);
	}    
}