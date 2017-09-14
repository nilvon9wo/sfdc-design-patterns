public with sharing class DCOR_RedShapeDecorator extends DCOR_AbstractShapeDecorator {
    public DCOR_RedShapeDecorator(FTY_ShapeIntf decoratedShape) {
    	super(decoratedShape); 
    }
    
    public override void draw() { 
    	decoratedShape.draw();
    	this.setRedBorder();
    }
    
    private void setRedBorder() {
    	System.debug('Border Color: Red');
    }
}