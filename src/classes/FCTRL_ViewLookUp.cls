public with sharing class FCTRL_ViewLookUp {
	private static final FCTRL_RequestType DEFAULT_REQUEST = FCTRL_RequestType.HOME;
	
	private static final Map<FCTRL_RequestType, Type> VIEW_TYPE_BY_TYPE_MAP = new Map<FCTRL_RequestType, Type> {
		FCTRL_RequestType.HOME => FCTRL_HomeView.class, 
		FCTRL_RequestType.STUDENT => MVC_StudentView.class 
	};   
	
	private static final Map<Type, FCTRL_ViewableIntf> VIEW_INSTANCE_BY_TYPE_MAP 
		= new Map<Type, FCTRL_ViewableIntf>();
		
	public FCTRL_ViewableIntf getView(FCTRL_RequestType requestType) {
		Type returnType = (VIEW_TYPE_BY_TYPE_MAP.get(requestType) != null)
			? VIEW_TYPE_BY_TYPE_MAP.get(requestType)
			: VIEW_TYPE_BY_TYPE_MAP.get(DEFAULT_REQUEST);
			
		if (VIEW_INSTANCE_BY_TYPE_MAP.get(returnType) == null) {
			VIEW_INSTANCE_BY_TYPE_MAP.put(returnType, (FCTRL_ViewableIntf) returnType.newInstance());
		}
		return VIEW_INSTANCE_BY_TYPE_MAP.get(returnType);
	}
}