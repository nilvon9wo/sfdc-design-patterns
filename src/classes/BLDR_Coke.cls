public with sharing class BLDR_Coke extends BLDR_AbstractColdDrink {
	public String name() {
		return 'Coke';
	}
    public override Decimal price() {
    	return 30.0; 
    }
}