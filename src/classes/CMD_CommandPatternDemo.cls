public with sharing class CMD_CommandPatternDemo {
	CMD_Broker broker;
	CMD_Stock stock;
	
	public CMD_CommandPatternDemo(CMD_Broker broker, CMD_Stock stock) {
		this.broker = broker;
		this.stock = stock;
	}

	public CMD_CommandPatternDemo() {
		this(new CMD_Broker(), new CMD_Stock());
	}

	public static void main() {
		(new CMD_CommandPatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		this.broker.takeOrder(new CMD_BuyStock(stock)); 
		this.broker.takeOrder(new CMD_SellStock(stock));
		this.broker.placeOrders(); 
	} 
    
}