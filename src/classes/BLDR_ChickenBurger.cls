public with sharing class BLDR_ChickenBurger extends BLDR_AbstractBurger {
	public String name() {
		return 'Chicken Burger';
	}
    public override Decimal price() {
    	return 50.5; 
    }
}