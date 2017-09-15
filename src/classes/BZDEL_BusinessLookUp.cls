public with sharing class BZDEL_BusinessLookUp {
	private static final BZDEL_ServiceType DEFAULT_SERVICE = BZDEL_ServiceType.MESSAGE;
	
	private static final Map<BZDEL_ServiceType, Type> SERVICE_TYPE_BY_TYPE_MAP = new Map<BZDEL_ServiceType, Type> {
		BZDEL_ServiceType.ENTERPRISE => BZDEL_EnterpriseService.class,
		BZDEL_ServiceType.MESSAGE => BZDEL_MessageService.class
	};   
	
	private static final Map<Type, BZDEL_BusinessServiceIntf> SERVICE_INSTANCE_BY_TYPE_MAP 
		= new Map<Type, BZDEL_BusinessServiceIntf>();
		
	public BZDEL_BusinessServiceIntf getBusinessService(BZDEL_ServiceType serviceType) {
		Type returnType = (SERVICE_TYPE_BY_TYPE_MAP.get(serviceType) != null)
			? SERVICE_TYPE_BY_TYPE_MAP.get(serviceType)
			: SERVICE_TYPE_BY_TYPE_MAP.get(DEFAULT_SERVICE);
			
		if (SERVICE_INSTANCE_BY_TYPE_MAP.get(returnType) == null) {
			SERVICE_INSTANCE_BY_TYPE_MAP.put(returnType, (BZDEL_BusinessServiceIntf) returnType.newInstance());
		}
		return SERVICE_INSTANCE_BY_TYPE_MAP.get(returnType);
	}
}