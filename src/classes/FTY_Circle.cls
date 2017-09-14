public with sharing class FTY_Circle extends PROTO_AbstractShape implements FTY_ShapeIntf {
	private Integer radius;
	private Integer x;
	private Integer y;
	
	public FTY_Circle(Integer x, Integer y, Integer radius, BDG_DrawApiIntf drawApi) {
		super(FTY_ShapeType.CIRCLE, drawApi, null);
		this.radius = radius;
		this.x = x;
		this.y = y;
	}
	
	public FTY_Circle(Integer id) {
		super(FTY_ShapeType.CIRCLE, new BDG_RedCircle (), id); 
	}
	
	public FTY_Circle() {}	

	public void draw() {
		if (this.drawApi != null) {
			this.drawApi.drawCircle(this.radius, this.x, this.y);
		}
		else {
			System.debug('Inside FTY_Circle::draw() method.');
		}
	}     
} 