public with sharing class SVCLOC_ServiceLocatorPatternDemo {
	SVCLOC_ServiceLocator serviceLocator;
	
	public SVCLOC_ServiceLocatorPatternDemo(SVCLOC_ServiceLocator serviceLocator) {
		this.serviceLocator = serviceLocator;
	}
	
	public SVCLOC_ServiceLocatorPatternDemo() {
		this(new SVCLOC_ServiceLocator());
	} 

	public static void main() {
		(new SVCLOC_ServiceLocatorPatternDemo()).demonstrate();
	}    
	
	private void demonstrate() {
		List<String> serviceList = new List<String>{
			'Service1', 'Service2', 'Service1', 'Service2'
		};
		
		for (String serviceName : serviceList) {
			SVCLOC_ServiceIntf service = this.serviceLocator.getService(serviceName);
			service.execute(); 
		}
	}
}