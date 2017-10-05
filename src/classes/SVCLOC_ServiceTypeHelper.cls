public with sharing class SVCLOC_ServiceTypeHelper {
	private static final Map<String, SVCLOC_ServiceType> SERVICE_TYPE_BY_NAME_MAP = buildServiceTypeByNameMap();
	
    public SVCLOC_ServiceType convert(String serviceName) {
    	return SERVICE_TYPE_BY_NAME_MAP.get(serviceName.toLowerCase());
    }
    
	private static Map<String, SVCLOC_ServiceType> buildServiceTypeByNameMap() {
		return (new SVCLOC_ServiceTypeHelper()).buildTypeByNameMap();
	}
	
	private Map<String, SVCLOC_ServiceType> buildTypeByNameMap() {
		Map<String, SVCLOC_ServiceType> serviceTypeByNameMap = new Map<String, SVCLOC_ServiceType>();

		for (SVCLOC_ServiceType serviceType : SVCLOC_ServiceType.values()) {
			String serviceTypeName = String.valueOf(serviceType);
			String lowerCaseServiceTypeName = serviceTypeName.toLowerCase();
			serviceTypeByNameMap.put(lowerCaseServiceTypeName, serviceType);
		}

		return serviceTypeByNameMap;
	}
}