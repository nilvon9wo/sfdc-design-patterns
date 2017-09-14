public with sharing class BLDR_MealBuilderDemo {
	BLDR_MealBuilder mealBuilder;
	
	public BLDR_MealBuilderDemo(BLDR_MealBuilder mealBuilder) {
		this.mealBuilder = mealBuilder;
	}
	
	public BLDR_MealBuilderDemo() {
		this(new BLDR_MealBuilder());
	}
	
	public static void main() {
		(new BLDR_MealBuilderDemo()).demonstrate();
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