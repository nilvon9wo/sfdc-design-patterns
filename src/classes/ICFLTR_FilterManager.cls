public with sharing class ICFLTR_FilterManager {
	ICFLTR_FilterChain filterChain; 

	public ICFLTR_FilterManager(ICFLTR_Target target, ICFLTR_FilterChain filterChain) {
		this.filterChain = filterChain;
		filterChain.target = target;
	}
	
	public ICFLTR_FilterManager(ICFLTR_Target target) {
		this(target, new ICFLTR_FilterChain());
	}
	
	public void setFilter(ICFLTR_FilterIntf filter) {
		this.filterChain.addFilter(filter);
	}
	
	public void filterRequest(FCTRL_RequestType requestType) {
		this.filterChain.execute(requestType);
	}
}