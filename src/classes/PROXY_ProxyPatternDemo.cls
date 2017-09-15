public with sharing class PROXY_ProxyPatternDemo  {
    public static void main() {
    	(new PROXY_ProxyPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	PROXY_ImageIntf image = new PROXY_ProxyImage('test_10mb.jpg');
    	image.display();
    	System.debug('');
    	
    	image.display();
    }
}