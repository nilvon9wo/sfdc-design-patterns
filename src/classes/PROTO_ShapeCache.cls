public with sharing class PROTO_ShapeCache {
	private static final Map<Integer, PROTO_AbstractShape> SHAPE_BY_ID_MAP = new Map<Integer, PROTO_AbstractShape>();
	
	public PROTO_AbstractShape getShape(Integer shapeId) {
		return SHAPE_BY_ID_MAP.get(shapeId).clone();
	}   
	 
	public void loadCache() {  
		loadCache(new FTY_Circle(1));   
		loadCache(new FTY_Square(2));
		loadCache(new FTY_Rectangle(3));
	} 
	
	public void loadCache(PROTO_AbstractShape shape) {
		SHAPE_BY_ID_MAP.put(shape.id, shape);
	}
}