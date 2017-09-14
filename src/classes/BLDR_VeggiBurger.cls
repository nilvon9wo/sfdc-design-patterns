public with sharing class BLDR_VeggiBurger extends BLDR_AbstractBurger {
	public String name() {
		return 'Veggiburger';
	}
    public override Decimal price() {
    	return 25.0; 
    }
}