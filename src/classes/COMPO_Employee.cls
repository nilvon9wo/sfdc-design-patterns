public with sharing class COMPO_Employee {
    private String name;
    private String department;
    private Integer salary;
    public List<COMPO_Employee> subordinateList {get; private set;}
    
    public COMPO_Employee (String name, String department, Integer salary) {
    	this.name = name;
    	this.department = department;
    	this.salary = salary;
    	this.subordinateList = new List<COMPO_Employee>(); 
    }
    
    public void add(COMPO_Employee employee) {
    	subordinateList.add(employee);
    }

    public void remove(COMPO_Employee employee) {
    	List<COMPO_Employee> revisedSubordinateList = new List<COMPO_Employee>();
    	for (COMPO_Employee subordinate : subordinateList) {
    		if (!subordinate.equals(employee)) {
    			revisedSubordinateList.add(subordinate);
    		}
    	}
    	this.subordinateList = revisedSubordinateList;
    }
    
    public override String toString() {
    	return ('Employee: [ Name: ' + this.name + ', department: ' + this.department + ', salary ' + this.salary + ' ]');
    }
}