public with sharing class FLYW8_ShapeFactory {
	private static final Map<FTY_ColorType, FTY_ShapeIntf> SHAPE_BY_COLOR_MAP = new Map<FTY_ColorType, FTY_ShapeIntf>();
	
	public FTY_ShapeIntf getCircle(FTY_ColorType colorType) {
		if (SHAPE_BY_COLOR_MAP.get(colorType) == null) {
			SHAPE_BY_COLOR_MAP.put(colorType, new FLYW8_Circle(colorType));
			System.debug('Creating circle of color: ' + colorType);
		}
		return (FLYW8_Circle) SHAPE_BY_COLOR_MAP.get(colorType);
	}
}