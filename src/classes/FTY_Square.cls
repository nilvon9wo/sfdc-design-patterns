public with sharing class FTY_Square extends PROTO_AbstractShape implements FTY_ShapeIntf {
	public FTY_Square(Integer id) {
		super(FTY_ShapeType.SQUARE, id); 
	}
	 
	public FTY_Square() {}	

	public void draw() {
		System.debug('Inside FTY_Square::draw() method.');
	}     
}