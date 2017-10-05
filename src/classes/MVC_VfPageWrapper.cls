public with sharing class MVC_VfPageWrapper {
	public Map<String, String> parameterByNameMap {get; private set;} 

	private System.PageReference currentPage;
    
    public MVC_VfPageWrapper() {
    	this.currentPage = ApexPages.currentPage();
    	this.parameterByNameMap = this.currentPage.getParameters();
    }
}