public with sharing class ICFLTR_Client {
	public ICFLTR_FilterManager filterManager {private get; set;}
	
	public void sendRequest(FCTRL_RequestType requestType) {
		this.filterManager.filterRequest(requestType);
	}
}