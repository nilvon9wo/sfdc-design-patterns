public with sharing class SVCLOC_Service2 implements  SVCLOC_ServiceIntf {
	public String getName() {
		return 'Service2';
	}
	
	public void execute()  {
		System.debug('Executing Service2');
	}
}