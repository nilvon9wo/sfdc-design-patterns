public with sharing class MVC_StudentDao {
    public MVC_Student retrieve() {
    	String name = 'Robert';
    	Integer rollNumber = 10;
    	return new MVC_Student(name, rollNumber); 
    }
}