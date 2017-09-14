public with sharing class BDG_GreenCircle implements BDG_DrawApiIntf {
    public void drawCircle(Integer radius, Integer x, Integer y) {
    	System.debug('Drawing Circle [color: green, radius: ' + radius + ', x: ' + x + ', y: ' + y + ']');
    }
}