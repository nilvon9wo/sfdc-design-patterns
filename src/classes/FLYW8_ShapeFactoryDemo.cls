public with sharing class FLYW8_ShapeFactoryDemo {
	private FLYW8_ShapeFactory shapeFactory;
	private static final List<FTY_ColorType> colorTypeList = FTY_ColorType.values();
	
	public FLYW8_ShapeFactoryDemo(FLYW8_ShapeFactory shapeFactory) {
		this.shapeFactory = shapeFactory;
	}

	public FLYW8_ShapeFactoryDemo() {
		this(new FLYW8_ShapeFactory());
	}
	
    public static void main() {
    	(new FLYW8_ShapeFactoryDemo()).demonstrate();
    }
    
    public void demonstrate() {
    	for (Integer i = 0; i < 20; i++) {
    		FLYW8_Circle circle = (FLYW8_Circle) shapeFactory.getCircle(getRandomColor());
    		circle.x =  getRandomNumber();
    		circle.y = getRandomNumber();
    		circle.radius = 100;
    		circle.draw();
    	}
    }
    
    private FTY_ColorType getRandomColor() {
		Integer random = Math.round(Math.random() * 1000);
		Integer pick = Math.mod(random, colorTypeList.size());
		return colorTypeList[pick];
    }
    
    private Integer getRandomNumber() {
		return (Integer) Math.round(Math.random() * 100);
    }
}