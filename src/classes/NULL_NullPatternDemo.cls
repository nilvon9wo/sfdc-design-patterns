public with sharing class NULL_NullPatternDemo {
	NULL_CustomerFactory customerFactory;
	
	public NULL_NullPatternDemo(NULL_CustomerFactory customerFactory) {
		this.customerFactory = customerFactory;
	}

	public NULL_NullPatternDemo() {
		this(new NULL_CustomerFactory());
	}
	
	
	public static void main() {
		(new NULL_NullPatternDemo()).demonstrate(); 
	}
	
	public void demonstrate() {
		System.debug('Customers');
		System.debug(this.customerFactory.getCustomer('Rob').getName());
		System.debug(this.customerFactory.getCustomer('Bob').getName());
		System.debug(this.customerFactory.getCustomer('Julie').getName());
		System.debug(this.customerFactory.getCustomer('Laura').getName());
	}
}