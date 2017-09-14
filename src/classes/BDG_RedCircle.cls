public with sharing class BDG_RedCircle implements BDG_DrawApiIntf {
    public void drawCircle(Integer radius, Integer x, Integer y) {
    	System.debug('Drawing Circle [color: red, radius: ' + radius + ', x: ' + x + ', y: ' + y + ']');
    }
}