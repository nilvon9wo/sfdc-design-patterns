public with sharing class PROTO_ShapeCacheDemo {
	PROTO_ShapeCache shapeCache;
    public PROTO_ShapeCacheDemo(PROTO_ShapeCache shapeCache) {
    	this.shapeCache = shapeCache;
    }

    public PROTO_ShapeCacheDemo() {
    	this(new PROTO_ShapeCache());
    }
    
    public static void main() {
    	(new PROTO_ShapeCacheDemo()).demonstrate();
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