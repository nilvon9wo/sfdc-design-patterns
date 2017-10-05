public with sharing class SVCLOC_InitialContext {
	private static Map<SVCLOC_ServiceType, Type> SERVICE_CLASS_BY_TYPE_MAP = new Map<SVCLOC_ServiceType, Type>{
		SVCLOC_ServiceType.SERVICE1 => SVCLOC_Service1.class,
		SVCLOC_ServiceType.SERVICE2 => SVCLOC_Service2.class
	};
	
	public SVCLOC_ServiceIntf lookup(SVCLOC_ServiceType serviceType) {
		System.debug('Looking up and creating a new ' + serviceType + ' object');
		return (SVCLOC_ServiceIntf) SERVICE_CLASS_BY_TYPE_MAP.get(serviceType).newInstance();
	}    
}