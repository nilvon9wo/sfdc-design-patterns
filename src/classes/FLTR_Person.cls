public with sharing class FLTR_Person {
    public String name {get; private set;}
    public FLTR_Gender gender {get; private set;}
    public FLTR_MaritalStatus maritalStatus {get; private set;} 
    
    public FLTR_Person(String name, FLTR_Gender gender, FLTR_MaritalStatus maritalStatus) {
    	this.name = name;
    	this.gender = gender;
    	this.maritalStatus = maritalStatus;
    }
}