public with sharing abstract class FTY_AbstractFactory {
    public abstract FTY_ColorIntf getColor(FTY_ColorType colorType);
    public abstract FTY_ShapeIntf getShape(FTY_ShapeType shapeType); 
}