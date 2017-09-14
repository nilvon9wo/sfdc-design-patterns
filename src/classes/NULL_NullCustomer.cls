public with sharing class NULL_NullCustomer extends NULL_AbstractCustomer {
	public override String getName() {
		return 'Not Available in Customer Database';
	} 
    
    public override Boolean isNil() {
    	return true;
    }
}