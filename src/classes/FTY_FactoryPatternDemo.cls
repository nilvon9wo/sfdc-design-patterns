public with sharing class FTY_FactoryPatternDemo  {
	FTY_ShapeFactory shapeFactory;
	
	public FTY_FactoryPatternDemo(FTY_ShapeFactory shapeFactory) {
		this.shapeFactory = shapeFactory;
	}
	
	public FTY_FactoryPatternDemo() {
		this(new FTY_ShapeFactory());
	}
	
	public static void main() {
		(new FTY_FactoryPatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		List<FTY_ShapeType> shapeTypeList = new List<FTY_ShapeType>{
			FTY_ShapeType.CIRCLE, FTY_ShapeType.RECTANGLE, FTY_ShapeType.SQUARE
		};
		
		for(FTY_ShapeType shapeType : shapeTypeList) {
			this.shapeFactory.getShape(shapeType).draw();
		} 
	}   
}