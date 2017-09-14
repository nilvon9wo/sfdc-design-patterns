public with sharing class FTY_ShapeFactory extends FTY_AbstractFactory {
	
	private static Map<FTY_ShapeType, Type> TYPE_BY_SHAPE_TYPE_MAP = new Map<FTY_ShapeType, Type>{
		FTY_ShapeType.CIRCLE => FTY_Circle.class,
		FTY_ShapeType.RECTANGLE => FTY_Rectangle.class,
		FTY_ShapeType.SQUARE => FTY_Square.class
	}; 
	 
	public override FTY_ShapeIntf getShape(FTY_ShapeType shapeType) {
		return (FTY_ShapeIntf) TYPE_BY_SHAPE_TYPE_MAP.get(shapeType).newInstance();
	} 
	
	public override FTY_ColorIntf getColor(FTY_ColorType colorType) {
		return null;
	}   
}