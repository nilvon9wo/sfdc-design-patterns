public with sharing abstract class BLDR_AbstractColdDrink implements BLDR_ItemIntf {
    public BLDR_PackingIntf packing() {
    	return new BLDR_Bottle();
    }
    
    public abstract Decimal price();
}