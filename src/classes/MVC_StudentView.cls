public with sharing class MVC_StudentView implements FCTRL_ViewableIntf {
	public void printStudentDetails(Student__c student) {
		System.debug('Student:'); 
		System.debug('Name: ' + student.Name__c);
		System.debug('Roll Number: ' + student.EnrollmentNumber__c);
	}     
	
	public void show() {
		System.debug('Displaying Student Page');
	}
}