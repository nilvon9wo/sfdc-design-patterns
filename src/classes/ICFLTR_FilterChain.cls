public with sharing class ICFLTR_FilterChain {
    private List<ICFLTR_FilterIntf> filterList = new List<ICFLTR_FilterIntf>();
    public ICFLTR_Target target {private get; set;}
    
    public void addFilter(ICFLTR_FilterIntf filter) {
    	this.filterList.add(filter);
    }
    
    public void execute(FCTRL_RequestType requestType) {
    	for (ICFLTR_FilterIntf filter : filterList) {
    		filter.execute(requestType);
    	}
    	target.execute(requestType);
    }
}