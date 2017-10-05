public with sharing class SVCLOC_ServiceLocator {
	SVCLOC_Cache cache;
	SVCLOC_InitialContext context;
	SVCLOC_ServiceTypeHelper serviceTypeHelper; 
	
    public SVCLOC_ServiceLocator(SVCLOC_Cache cache, SVCLOC_InitialContext context, SVCLOC_ServiceTypeHelper serviceTypeHelper) {
    	this.cache = cache;
    	this.context = context;
    	this.serviceTypeHelper = serviceTypeHelper;
    }
    
    public SVCLOC_ServiceLocator() {
    	this(new SVCLOC_Cache(), new SVCLOC_InitialContext(), new SVCLOC_ServiceTypeHelper());
    }
    
    public SVCLOC_ServiceIntf getService(String jndiName) {
    	SVCLOC_ServiceType serviceType = this.serviceTypeHelper.convert(jndiName); 
    	SVCLOC_ServiceIntf existingService = this.cache.getService(serviceType); 
    	if (existingService != null) {
    		return existingService;
    	}
    	
		SVCLOC_ServiceIntf newService = (SVCLOC_ServiceIntf) this.context.lookup(serviceType);
		this.cache.addService(newService);
		return newService;
    }
}