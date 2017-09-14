public with sharing class CMD_BuyStock implements CMD_OrderIntf {
    private CMD_Stock stock;
    
    public CMD_BuyStock(CMD_Stock stock) {
    	this.stock = stock;
    }
    
    public void execute() {
    	this.stock.buy();
    }
}