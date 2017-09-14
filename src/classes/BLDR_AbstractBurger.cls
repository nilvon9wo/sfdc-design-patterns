public with sharing abstract class BLDR_AbstractBurger implements BLDR_ItemIntf {
    public BLDR_PackingIntf packing() {
    	return new BLDR_Wrapper();
    }
    
    public abstract Decimal price();
}