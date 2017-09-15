public with sharing class FCTRL_FrontCtrl {
	FCTRL_Dispatcher dispatcher;
	
    public FCTRL_FrontCtrl(FCTRL_Dispatcher dispatcher) {
    	this.dispatcher = dispatcher;
    }

    public FCTRL_FrontCtrl() {
    	this(new FCTRL_Dispatcher());  
    }
    
    public void dispatchRequest(FCTRL_RequestType requestType) {
    	this.trackRequest(requestType);
    	
    	if (this.isAuthenticatedUser()) {
    		this.dispatcher.dispatch(requestType);
    	}
    }

    private Boolean isAuthenticatedUser() {
    	System.debug('User is authenticated successfully.');
    	return true;
    }
    
    private void trackRequest(FCTRL_RequestType requestType) {
    	System.debug('Page requested: ' + requestType);
    }
}