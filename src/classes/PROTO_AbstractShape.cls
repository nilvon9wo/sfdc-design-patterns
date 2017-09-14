public with sharing abstract class PROTO_AbstractShape {
	protected BDG_DrawApiIntf drawApi;
	
    public Integer id { get; set; } 
    public FTY_ShapeType shapeType { get; private set; }

	public PROTO_AbstractShape(FTY_ShapeType shapeType, BDG_DrawApiIntf drawApi, Integer id) {
		this.drawApi = drawApi;
		this.shapeType = shapeType;
		this.id = id;
	}

	public PROTO_AbstractShape(FTY_ShapeType shapeType, Integer id) {
		this(shapeType, null, id);
	}

	public PROTO_AbstractShape() {
	}	
	
    abstract void draw();
}