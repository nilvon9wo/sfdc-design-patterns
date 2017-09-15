public with sharing class DCOR_DecoratorPatternDemo {
    public static void main() {
    	(new DCOR_DecoratorPatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	FTY_ShapeIntf circle = new FTY_Circle();
    	System.debug('Circle with normal border');
    	circle.draw();

    	FTY_ShapeIntf redCircle = new DCOR_RedShapeDecorator(new FTY_Circle());
    	System.debug('Circle with red border');
    	redCircle.draw();

    	FTY_ShapeIntf redRectangle = new DCOR_RedShapeDecorator(new FTY_Rectangle());
    	System.debug('Rectangle with red border');
    	redRectangle.draw();
    }
}