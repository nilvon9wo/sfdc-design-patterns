public with sharing class ICFLTR_InterceptingFilterDemo {
	ICFLTR_Client client;
	ICFLTR_AuthenticationFilter authenticationFilter;
	ICFLTR_DebugFilter debugFilter;
	ICFLTR_Target target;

    public ICFLTR_InterceptingFilterDemo(
		ICFLTR_Client client,
		ICFLTR_AuthenticationFilter authenticationFilter,
		ICFLTR_DebugFilter debugFilter,
		ICFLTR_Target target 
	    ) {
		this.client = client;	    	
		this.authenticationFilter = authenticationFilter;	    	
		this.debugFilter = debugFilter;	    	
		this.target = target;	    	
    }

    public ICFLTR_InterceptingFilterDemo() {
    	this(new ICFLTR_Client(), new ICFLTR_AuthenticationFilter(), new ICFLTR_DebugFilter(), new ICFLTR_Target());
    }
    
    public static void main() {
    	(new ICFLTR_InterceptingFilterDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	ICFLTR_FilterManager filterManager = new ICFLTR_FilterManager(target);
    	filterManager.setFilter(authenticationFilter);
    	filterManager.setFilter(debugFilter);
    	
    	client.filterManager = filterManager;
    	client.sendRequest(FCTRL_RequestType.HOME);
    }
}