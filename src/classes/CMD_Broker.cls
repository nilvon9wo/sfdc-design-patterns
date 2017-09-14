public with sharing class CMD_Broker {
	private List<CMD_OrderIntf> orderList = new List<CMD_OrderIntf>();
	
	public void takeOrder(CMD_OrderIntf order) {
		this.orderList.add(order);
	}
	
	public void placeOrders() {
		for (CMD_OrderIntf order : this.orderList) {
			order.execute();
		}
		this.orderList.clear();
	}
}