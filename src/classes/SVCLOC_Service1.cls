public with sharing class SVCLOC_Service1 implements  SVCLOC_ServiceIntf {
	public String getName() {
		return 'Service1';
	}
	
	public void execute()  {
		System.debug('Executing Service1');
	}
}