public with sharing class CMD_Stock {
	private String name = 'ABC';
	private Integer quantity = 10;
	
	public void buy() {
		System.debug('Stock [ Name: ' + this.name + ', Quantity: ' + this.quantity + ' ] bought');
	}    

	public void sell() {
		System.debug('Stock [ Name: ' + this.name + ', Quantity: ' + this.quantity + ' ] sold');
	}    
}