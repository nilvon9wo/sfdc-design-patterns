public with sharing class MVC_VfPageWrapper {
    public Id id {get; private set;}

	private System.PageReference currentPage;
	private Map<String, String> parameterByNameMap; 
    
    public MVC_VfPageWrapper() {
    	this.currentPage = ApexPages.currentPage();
    	this.parameterByNameMap = this.currentPage.getParameters();
    	this.id = this.parameterByNameMap.get('id');
    }
}