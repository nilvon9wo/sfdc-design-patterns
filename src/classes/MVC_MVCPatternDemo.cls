public with sharing class MVC_MVCPatternDemo { 
    DAO_StudentDao studentDao; 
    MVC_StudentView studentView; 
     
    public MVC_MVCPatternDemo(DAO_StudentDao studentDao, MVC_StudentView studentView) {
    	this.studentDao = studentDao;
    	this.studentView = studentView;
    }
    
    public MVC_MVCPatternDemo() {
    	this(new DAO_StudentDao(), new MVC_StudentView());
    }
    
	private static final Integer STUDENT_ENROLLMENT_NUMBER = 999999999; 

    public static void main() {
    	(new MVC_MVCPatternDemo()).demonstrate(); 
    }
    
    private void demonstrate() {
    	// Prepare
    	this.createStudent();
    	 
    	// Demonstrate
    	Student__c student = this.studentDao.selectByEnrollmentNumber(STUDENT_ENROLLMENT_NUMBER);
    	MVC_StudentCtrl controller = new MVC_StudentCtrl(student, this.studentView);
    	controller.updateView();
    	
    	controller.setStudentName('John');
    	controller.updateView();
    	
    	// Clean Up
    	this.deleteStudent();
    }
    
    private void createStudent() {
    	this.studentDao.doInsert(new Student__c(
    		Name__c = 'Robert',
    		EnrollmentNumber__c = STUDENT_ENROLLMENT_NUMBER
    	));
    }

    private void deleteStudent() {
    	this.studentDao.doDelete(this.studentDao.selectByEnrollmentNumber(STUDENT_ENROLLMENT_NUMBER));
    }
    
}