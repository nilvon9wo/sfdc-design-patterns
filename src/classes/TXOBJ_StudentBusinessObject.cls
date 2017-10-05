public with sharing class TXOBJ_StudentBusinessObject {
	DAO_StudentDao studentDao;
	
	public TXOBJ_StudentBusinessObject(DAO_StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	public TXOBJ_StudentBusinessObject() {
		this(new DAO_StudentDao());
	}
	
	public List<TXOBJ_StudentValueObject> getAllStudents() {
		List<TXOBJ_StudentValueObject> studentValueObjectList = new List<TXOBJ_StudentValueObject>();
		for (Student__c student : this.studentDao.selectAll()) {
			studentValueObjectList.add(new TXOBJ_StudentValueObject(student));
		}
		return studentValueObjectList;
	}
	
	public TXOBJ_StudentValueObject getStudent(Integer enrollmentNumber) {
		return new TXOBJ_StudentValueObject(this.studentDao.selectByEnrollmentNumber(enrollmentNumber));
	}
	
	public void updateStudent(TXOBJ_StudentValueObject studentValueObject) {
		Student__c student = this.studentDao.selectByEnrollmentNumber(studentValueObject.enrollmentNumber);
		student.Name__c = studentValueObject.name;
		this.studentDao.doUpdate(student); 
	}
	
	public void deleteStudent(TXOBJ_StudentValueObject student) {
		this.studentDao.doDelete(student.enrollmentNumber);
	}
	
	
}