public with sharing class MVC_StudentView {
	public void printStudentDetails(MVC_Student student) {
		System.debug('Student:');
		System.debug('Name: ' + student.name);
		System.debug('Roll Number: ' + student.rollNumber);
	}    
}