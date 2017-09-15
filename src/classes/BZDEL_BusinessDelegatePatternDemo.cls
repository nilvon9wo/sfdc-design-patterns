public with sharing class BZDEL_BusinessDelegatePatternDemo {
	BZDEL_BusinessDelegate businessDelegate;
	
	public BZDEL_BusinessDelegatePatternDemo(BZDEL_BusinessDelegate businessDelegate) {
		this.businessDelegate = businessDelegate;
	}

	public BZDEL_BusinessDelegatePatternDemo() {
		this(new BZDEL_BusinessDelegate());
	}
	
    public static void main() {
    	(new BZDEL_BusinessDelegatePatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	this.businessDelegate.serviceType = BZDEL_ServiceType.ENTERPRISE;
    	BZDEL_Client client = new BZDEL_Client(this.businessDelegate);
    	client.doTask();

    	this.businessDelegate.serviceType = BZDEL_ServiceType.MESSAGE;
    	client.doTask();
    }
}