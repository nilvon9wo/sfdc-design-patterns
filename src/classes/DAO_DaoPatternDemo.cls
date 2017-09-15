public with sharing class DAO_DaoPatternDemo {
	DAO_StudentDao studentDao;
	public DAO_DaoPatternDemo(DAO_StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public DAO_DaoPatternDemo() {
		this(new DAO_StudentDao());
	}
	
	private static final Integer ROBERT_ENROLLMENT_NUMBER = 999999991; 
	private static final Integer JOHN_ENROLLMENT_NUMBER = 999999992; 
	
	
    public static void main() {
    	(new DAO_DaoPatternDemo()).demonstrate(); 
    }
    
    private void demonstrate() {
    	// Prepare
    	this.createStudents();
    	 
    	// Demonstrate
    	for (Student__c student : this.studentDao.selectAll()) {
    		System.debug('Student: [Enrollment Number: ' + student.EnrollmentNumber__c + ', Name: ' + student.Name__c + ']');
    	}
    	
    	Student__c student = this.studentDao.selectByEnrollmentNumber(ROBERT_ENROLLMENT_NUMBER);
    	student.name__c = 'Michael';
    	this.studentDao.doUpdate(student);
    	
    	student = this.studentDao.selectByEnrollmentNumber(ROBERT_ENROLLMENT_NUMBER);
    	System.debug('Student: [Enrollment Number: ' + student.EnrollmentNumber__c + ', Name: ' + student.Name__c + ']');
    	
    	// Clean Up 
    	this.deleteStudents();
    }
    
    private void createStudents() {
    	this.studentDao.doInsert(new List<Student__c>{ 
    			new Student__c( Name__c = 'Robert', EnrollmentNumber__c = ROBERT_ENROLLMENT_NUMBER ),
    			new Student__c( Name__c = 'John', EnrollmentNumber__c = JOHN_ENROLLMENT_NUMBER )
    	});
    }

    private void deleteStudents() {
    	this.studentDao.doDelete(this.studentDao.selectByEnrollmentNumber(new Set<Integer>{
    		ROBERT_ENROLLMENT_NUMBER, JOHN_ENROLLMENT_NUMBER
    	}));
    }
}