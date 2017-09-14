public with sharing class CMD_SellStock implements CMD_OrderIntf {
    private CMD_Stock stock;
    
    public CMD_SellStock(CMD_Stock stock) {
    	this.stock = stock;
    }
    
    public void execute() {
    	this.stock.sell();
    }
}