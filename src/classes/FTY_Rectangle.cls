public with sharing class FTY_Rectangle extends PROTO_AbstractShape implements FTY_ShapeIntf {
	public FTY_Rectangle(Integer id) {
		super(FTY_ShapeType.RECTANGLE, id); 
	} 
	
	public FTY_Rectangle() {}	
	
	public void draw() {
		System.debug('Inside FTY_Rectangle::draw() method.');
	}     
}