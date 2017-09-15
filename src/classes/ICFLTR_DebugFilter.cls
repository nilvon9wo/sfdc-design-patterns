public with sharing class ICFLTR_DebugFilter implements ICFLTR_FilterIntf {
    public void execute(FCTRL_RequestType requestType) {
    	System.debug('Request log: ' + requestType);
    }
}