public with sharing class PROTO_PrototypePatternDemo  {
	PROTO_ShapeCache shapeCache;
    public PROTO_PrototypePatternDemo(PROTO_ShapeCache shapeCache) {
    	this.shapeCache = shapeCache;
    }

    public PROTO_PrototypePatternDemo() {
    	this(new PROTO_ShapeCache());
    }
    
    public static void main() {
    	(new PROTO_PrototypePatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	this.shapeCache.loadCache();
    	this.display(this.shapeCache.getShape(1));
    	this.display(this.shapeCache.getShape(2));
    	this.display(this.shapeCache.getShape(3));
    }
    
    private void display(PROTO_AbstractShape shape) {
    	System.debug('Shape: ' + shape.shapeType);
    }
}