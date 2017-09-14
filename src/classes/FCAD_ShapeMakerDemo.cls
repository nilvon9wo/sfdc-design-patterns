public with sharing class FCAD_ShapeMakerDemo {
	FCAD_ShapeMaker shapeMaker;
	
	public FCAD_ShapeMakerDemo(FCAD_ShapeMaker shapeMaker) {
		this.shapeMaker = shapeMaker;
	}

	public FCAD_ShapeMakerDemo() {
		this(new FCAD_ShapeMaker());
	}
	
	public static void main() {
		(new FCAD_ShapeMakerDemo()).demonstrate();
	}
	
	public void demonstrate() {
		this.shapeMaker.drawCircle();
		this.shapeMaker.drawRectangle();
		this.shapeMaker.drawSquare();
	}
}