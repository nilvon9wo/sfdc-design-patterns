public with sharing class CMD_BrokerDemo {
	CMD_Broker broker;
	CMD_Stock stock;
	
	public CMD_BrokerDemo(CMD_Broker broker, CMD_Stock stock) {
		this.broker = broker;
		this.stock = stock;
	}

	public CMD_BrokerDemo() {
		this(new CMD_Broker(), new CMD_Stock());
	}

	public static void main() {
		(new CMD_BrokerDemo()).demonstrate();
	}
	
	public void demonstrate() {
		this.broker.takeOrder(new CMD_BuyStock(stock)); 
		this.broker.takeOrder(new CMD_SellStock(stock));
		this.broker.placeOrders(); 
	} 
    
}