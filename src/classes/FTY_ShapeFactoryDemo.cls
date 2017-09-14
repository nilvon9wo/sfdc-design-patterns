public with sharing class FTY_ShapeFactoryDemo {
	FTY_ShapeFactory shapeFactory;
	
	public FTY_ShapeFactoryDemo(FTY_ShapeFactory shapeFactory) {
		this.shapeFactory = shapeFactory;
	}
	
	public FTY_ShapeFactoryDemo() {
		this(new FTY_ShapeFactory());
	}
	
	public static void main() {
		(new FTY_ShapeFactoryDemo()).demonstrate();
	}
	
	public void demonstrate() {
		List<FTY_ShapeType> shapeTypeList = new List<FTY_ShapeType>{
			FTY_ShapeType.CIRCLE, FTY_ShapeType.RECTANGLE, FTY_ShapeType.SQUARE
		};
		
		for(FTY_ShapeType shapeType : shapeTypeList) {
			this.shapeFactory.getShape(shapeType).draw();
		} 
	}   
}