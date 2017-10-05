public with sharing class TXOBJ_TransferObjectPatternDemo {
	TXOBJ_StudentBusinessObject studentBusinessObject; 
	DAO_StudentDao studentDao;
	
	public TXOBJ_TransferObjectPatternDemo(TXOBJ_StudentBusinessObject studentBusinessObject, DAO_StudentDao studentDao) {
		this.studentBusinessObject = studentBusinessObject;
		this.studentDao = studentDao;
	}

	public TXOBJ_TransferObjectPatternDemo() {
		this(new TXOBJ_StudentBusinessObject(), new DAO_StudentDao());
	}
	
	private static final Integer ROBERT_ENROLLMENT_NUMBER = 999999991; 
	private static final Integer JOHN_ENROLLMENT_NUMBER = 999999992; 
	
	
    public static void main() {
    	(new TXOBJ_TransferObjectPatternDemo()).demonstrate(); 
    }
    
    private void demonstrate() {
    	// Prepare 
    	this.createStudents();
    	 
    	// Demonstrate
    	List<TXOBJ_StudentValueObject> studentList = this.studentBusinessObject.getAllStudents();
		for (TXOBJ_StudentValueObject studentValueObject : studentList) {
			System.debug('Student: [Enrollemnt Number: ' + studentValueObject.enrollmentNumber + ' Name: ' + studentValueObject.name + ']');
		}
 
		TXOBJ_StudentValueObject firstStudent =  this.studentBusinessObject.getStudent(ROBERT_ENROLLMENT_NUMBER);
		firstStudent.name = 'Michael';
		this.studentBusinessObject.updateStudent(firstStudent); 
		
		TXOBJ_StudentValueObject updatedStudent =  this.studentBusinessObject.getStudent(ROBERT_ENROLLMENT_NUMBER);
		System.debug('Student: [Enrollemnt Number: ' + updatedStudent.enrollmentNumber + ' Name: ' + updatedStudent.name + ']');
		    	
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