public with sharing class BLDR_MealBuilder {
	public BLDR_Meal prepareVeggiMeal() {
		return new BLDR_Meal(
			new BLDR_VeggiBurger(),
			new BLDR_Coke()
		);
	}    

	public BLDR_Meal prepareMeatiMeal() {
		return new BLDR_Meal(
			new BLDR_ChickenBurger(),
			new BLDR_Pepsi() 
		);
	}    
}