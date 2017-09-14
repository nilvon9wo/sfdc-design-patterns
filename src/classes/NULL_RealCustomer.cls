public with sharing class NULL_RealCustomer extends NULL_AbstractCustomer {
    public NULL_RealCustomer(String name) {
    	this.name = name;
    }
    
	public override String getName() {
		return this.name;
	} 
    
    public override Boolean isNil() {
    	return false;
    }
}