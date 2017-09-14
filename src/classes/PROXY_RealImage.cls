public with sharing class PROXY_RealImage implements PROXY_ImageIntf {
    private String fileName; 
    
    public PROXY_RealImage(String fileName) {
    	this.fileName = fileName; 
    	this.loadFromDisk(fileName);
    }
    
    public void display() {
    	System.debug('Displaying ' + fileName);
    }
    
    private void loadFromDisk(String fileName) {
    	System.debug('Loading ' + fileName);
    }
}