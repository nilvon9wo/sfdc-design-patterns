public with sharing class FTY_ColorFactory extends FTY_AbstractFactory {
	
	private static Map<FTY_ColorType, Type> TYPE_BY_COLOR_TYPE_MAP = new Map<FTY_ColorType, Type>{
		FTY_ColorType.RED => FTY_Red.class,
		FTY_ColorType.GREEN => FTY_Green.class,
		FTY_ColorType.BLUE => FTY_Blue.class
	}; 
	
	public override FTY_ShapeIntf getShape(FTY_ShapeType shapeType) {
		return null;
	}   
 
	public override FTY_ColorIntf getColor(FTY_ColorType colorType) {
		return (FTY_ColorIntf) TYPE_BY_COLOR_TYPE_MAP.get(ColorType).newInstance();
	} 
	
}