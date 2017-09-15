public with sharing class MVC_StudentCtrl {
	private Student__c student; 
	private MVC_StudentView view;
	
	public MVC_StudentCtrl(Student__c student, MVC_StudentView view) {
		this.student = student;
		this.view = view;
	}
	
	public void setStudentName(String name) { 
		this.student.Name__c = name;
	}

	public String getStudentName() {
		return this.student.Name__c;
	}
	
	public void setStudentRollNumber(Integer rollNumber) {
		this.student.EnrollmentNumber__c = rollNumber;
	}
	
	public Integer getStudentRollNumber() {
		return (Integer) this.student.EnrollmentNumber__c;
	}
	
	public void updateView() {
		view.printStudentDetails(this.student);
	}
}