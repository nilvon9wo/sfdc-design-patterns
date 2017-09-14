public with sharing class FLYW8_Circle implements FTY_ShapeIntf {
	private FTY_ColorType colorType;
	public Integer radius {private get; set;}
	public Integer x {private get; set;}
	public Integer y {private get; set;}
    
    public FLYW8_Circle(FTY_ColorType colorType) {
    	this.colorType = colorType;
    }
    
    public void draw() {
    	System.debug('Circle: Draw() [ Color: ' + colorType + ', x: ' + x + ', y: ' + y + ', radius: ' + radius + ' ]');
    }
}