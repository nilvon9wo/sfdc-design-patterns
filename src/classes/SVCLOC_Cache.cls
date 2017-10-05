public with sharing class SVCLOC_Cache {
	SVCLOC_ServiceTypeHelper serviceTypeHelper;
	
	public SVCLOC_Cache(SVCLOC_ServiceTypeHelper serviceTypeHelper) {
		this.serviceTypeHelper = serviceTypeHelper;
	}

	public SVCLOC_Cache() {
		this(new SVCLOC_ServiceTypeHelper());
	}
	
    private static final Map<SVCLOC_ServiceType, SVCLOC_ServiceIntf> SERVICE_BY_TYPE_MAP = new Map<SVCLOC_ServiceType, SVCLOC_ServiceIntf>();
    
    public SVCLOC_ServiceIntf getService(SVCLOC_ServiceType serviceType) {
    	return SERVICE_BY_TYPE_MAP.get(serviceType);
    }
    
    public void addService(SVCLOC_ServiceIntf newService) {
		String serviceName = newService.getName();
		SVCLOC_ServiceType serviceType = this.serviceTypeHelper.convert(serviceName); 
		if (SERVICE_BY_TYPE_MAP.get(serviceType) == null) {
			SERVICE_BY_TYPE_MAP.put(serviceType, newService);
		}
    }
}