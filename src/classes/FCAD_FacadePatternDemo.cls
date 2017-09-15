public with sharing class FCAD_FacadePatternDemo {
	FCAD_ShapeMaker shapeMaker;
	
	public FCAD_FacadePatternDemo(FCAD_ShapeMaker shapeMaker) {
		this.shapeMaker = shapeMaker;
	}

	public FCAD_FacadePatternDemo() {
		this(new FCAD_ShapeMaker());
	}
	
	public static void main() {
		(new FCAD_FacadePatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		this.shapeMaker.drawCircle();
		this.shapeMaker.drawRectangle();
		this.shapeMaker.drawSquare();
	}
}