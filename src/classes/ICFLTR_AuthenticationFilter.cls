public with sharing class ICFLTR_AuthenticationFilter implements ICFLTR_FilterIntf {
    public void execute(FCTRL_RequestType requestType) {
    	System.debug('Authenticating request: ' + requestType);
    }
}