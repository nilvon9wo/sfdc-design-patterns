public with sharing class BLDR_BuilderPatternDemo {
	BLDR_MealBuilder mealBuilder;
	
	public BLDR_BuilderPatternDemo(BLDR_MealBuilder mealBuilder) {
		this.mealBuilder = mealBuilder;
	}
	
	public BLDR_BuilderPatternDemo() {
		this(new BLDR_MealBuilder());
	}
	
	public static void main() {
		(new BLDR_BuilderPatternDemo()).demonstrate();
	}    
	
	private void demonstrate() {
		this.display('VeggiMeal', this.mealBuilder.prepareVeggiMeal());
		this.display('MeatiMeal', this.mealBuilder.prepareMeatiMeal());
	}
	
	private void display(String mealName, BLDR_Meal meal) {
		System.debug(mealName);
		meal.showItems();
		System.debug('Total Cost: ' + meal.getCost());
	}
}