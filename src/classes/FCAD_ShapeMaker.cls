public with sharing class FCAD_ShapeMaker {
 	private FTY_ShapeIntf circle;
 	private FTY_ShapeIntf rectangle;
 	private FTY_ShapeIntf square; 
 	
 	public FCAD_ShapeMaker(FTY_ShapeIntf circle, FTY_ShapeIntf rectangle, FTY_ShapeIntf square) {
 		this.circle = circle;
 		this.rectangle = rectangle;
 		this.square = square;
 	}


 	public FCAD_ShapeMaker() {
 		this(new FTY_Circle(), new FTY_Rectangle(), new FTY_Square());
 	}
 	
 	public void drawCircle() {
 		this.circle.draw();
 	}
 	
 	public void drawRectangle() {
 		this.rectangle.draw();
 	}

 	public void drawSquare() {
 		this.square.draw();
 	}
}