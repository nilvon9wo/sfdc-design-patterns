public with sharing class BDG_BridgePatternDemo {
    public static void main() {
    	(new BDG_BridgePatternDemo()).demonstrate();
    }
    
    private void demonstrate() {
    	(new FTY_Circle(100, 100, 10, new BDG_RedCircle())).draw();
    	(new FTY_Circle(100, 100, 10, new BDG_GreenCircle())).draw();
    }
}