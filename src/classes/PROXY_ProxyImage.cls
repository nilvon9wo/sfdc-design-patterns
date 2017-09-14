public with sharing class PROXY_ProxyImage implements PROXY_ImageIntf {
	private PROXY_RealImage realImage;
    private String fileName; 
    
    public PROXY_ProxyImage(String fileName) {
    	this.fileName = fileName; 
    }
    
    public void display() {
    	if (realImage == null) {
    		realImage = new PROXY_RealImage(fileName);
    	}
    	
    	this.realImage.display();
    }
}