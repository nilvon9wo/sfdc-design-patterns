public with sharing class PROXY_ProxyImageDemo {
    public static void main() {
    	(new PROXY_ProxyImageDemo()).demonstrate();
    }
    
    public void demonstrate() {
    	PROXY_ImageIntf image = new PROXY_ProxyImage('test_10mb.jpg');
    	image.display();
    	System.debug('');
    	
    	image.display();
    }
}