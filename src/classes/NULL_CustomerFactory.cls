public with sharing class NULL_CustomerFactory {
	private static final Set<String> NAME_SET = new Set<String>{'Rob', 'Joe', 'Julie'};
	
	public NULL_AbstractCustomer getCustomer(String name) {
		return (NAME_SET.contains(name))
				? (NULL_AbstractCustomer) new NULL_RealCustomer(name)
				: (NULL_AbstractCustomer) new NULL_NullCustomer(); 
	} 
    
}