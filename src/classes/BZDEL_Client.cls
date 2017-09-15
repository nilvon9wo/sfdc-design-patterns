public with sharing class BZDEL_Client {
 	BZDEL_BusinessDelegate businessDelegate;
 	
 	public BZDEL_Client (BZDEL_BusinessDelegate businessDelegate) {
 		this.businessDelegate = businessDelegate;
 	}
 	
 	public void doTask() {
 		this.businessDelegate.doTask();
 	}
}