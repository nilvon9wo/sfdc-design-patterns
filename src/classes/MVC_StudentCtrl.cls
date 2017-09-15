public with sharing class MVC_StudentCtrl {
	private MVC_Student model;
	private MVC_StudentView view;
	
	public MVC_StudentCtrl(MVC_Student student, MVC_StudentView view) {
		this.model = student;
		this.view = view;
	}
	
	public void setStudentName(String name) {
		this.model.name = name;
	}

	public String getStudentName() {
		return this.model.name;
	}
	
	public void setStudentRollNumber(Integer rollNumber) {
		this.model.rollNumber = rollNumber;
	}
	
	public Integer getStudentRollNumber() {
		return this.model.rollNumber;
	}
	
	public void updateView() {
		view.printStudentDetails(this.model);
	}
}