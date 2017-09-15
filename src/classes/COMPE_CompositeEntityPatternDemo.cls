public with sharing class COMPE_CompositeEntityPatternDemo {
	COMPE_Client client;
	public COMPE_CompositeEntityPatternDemo(COMPE_Client client) {
		this.client = client;
	}
	
	public COMPE_CompositeEntityPatternDemo() {
		this(new COMPE_Client());
	}
	
    public static void main() {
    	(new COMPE_CompositeEntityPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	this.client.setData('First Test', 'Data 1');
    	this.client.printData();	

    	this.client.setData('Second Test', 'Data 2');	
    	this.client.printData();	
    }
}