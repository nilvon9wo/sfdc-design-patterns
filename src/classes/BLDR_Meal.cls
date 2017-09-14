public with sharing class BLDR_Meal {
    private List<BLDR_ItemIntf> itemList = new List<BLDR_ItemIntf>();

	public BLDR_Meal(BLDR_AbstractBurger burger, BLDR_AbstractColdDrink coldDrink) {
		this.itemList.add(burger);		
		this.itemList.add(coldDrink);
	}
	
    public void addItem(BLDR_ItemIntf item) {
    	this.itemList.add(item);
    }
    
    public Decimal getCost() {
    	Decimal cost = 0.0;
    	for (BLDR_ItemIntf item : this.itemList) {
    		cost += item.price();
    	}
    	return cost;
    }
    
    public void showItems() {
    	for (BLDR_ItemIntf item : this.itemList) {
    		System.debug('Item: ' + item.name() + ', ');
    		System.debug('Packing: ' + item.packing().pack() + ', ');
    		System.debug('Price: ' + item.price());
    	}
    }
}