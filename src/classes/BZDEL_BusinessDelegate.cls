public with sharing class BZDEL_BusinessDelegate {
	private BZDEL_BusinessLookUp businessLookup;
	public BZDEL_ServiceType serviceType {private get; set;}
	
    public BZDEL_BusinessDelegate(BZDEL_BusinessLookUp businessLookup) {
    	this.businessLookup = businessLookup;
    }
    
    public BZDEL_BusinessDelegate() {
    	this(new BZDEL_BusinessLookUp());
    }
    
    public void doTask() {
    	this.businessLookup
    		.getBusinessService(this.serviceType)
    		.doProcessing();
    } 
}