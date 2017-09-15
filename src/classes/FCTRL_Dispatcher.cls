public with sharing class FCTRL_Dispatcher {
	FCTRL_ViewLookUp viewLookUp;
	
	public FCTRL_Dispatcher(FCTRL_ViewLookUp viewLookUp) {
		this.viewLookUp = viewLookUp;
	}
	
	public FCTRL_Dispatcher() {
		this(new FCTRL_ViewLookUp());
	}
	
    public void dispatch(FCTRL_RequestType requestType) {
    	this.viewLookUp.getView(requestType).show();
    }
}