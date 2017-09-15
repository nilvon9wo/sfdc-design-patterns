public with sharing class FTY_AbstractFactoryPatternDemo  {
	FTY_FactoryProducer factoryProducer;
	
	public FTY_AbstractFactoryPatternDemo(FTY_FactoryProducer factoryProducer) {
		this.factoryProducer = factoryProducer;
	}
	
	public FTY_AbstractFactoryPatternDemo() {
		this(new FTY_FactoryProducer());
	}
	
	public static void main() {
		(new FTY_AbstractFactoryPatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		List<FTY_ShapeType> shapeTypeList = new List<FTY_ShapeType>{
			FTY_ShapeType.CIRCLE, FTY_ShapeType.RECTANGLE, FTY_ShapeType.SQUARE
		};
		FTY_AbstractFactory shapeFactory = factoryProducer.getFactory(FTY_FactoryType.SHAPE);
		for(FTY_ShapeType shapeType : shapeTypeList) {
			shapeFactory.getShape(shapeType).draw();
		}  

		List<FTY_ColorType> colorTypeList = new List<FTY_ColorType>{
			FTY_ColorType.RED, FTY_ColorType.GREEN, FTY_ColorType.BLUE
		};
		FTY_AbstractFactory colorFactory = factoryProducer.getFactory(FTY_FactoryType.COLOR);
		for(FTY_ColorType colorType : colorTypeList) {
			colorFactory.getColor(colorType).fill(); 
		} 
	}   
}