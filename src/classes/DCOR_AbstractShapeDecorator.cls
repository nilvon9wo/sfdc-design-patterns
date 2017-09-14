public with sharing abstract class DCOR_AbstractShapeDecorator implements FTY_ShapeIntf {
	protected FTY_ShapeIntf decoratedShape;
	
	public DCOR_AbstractShapeDecorator(FTY_ShapeIntf decoratedShape) {
		this.decoratedShape = decoratedShape;
	}
	
	public virtual void draw() {
		this.decoratedShape.draw();
	}
}