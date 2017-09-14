public with sharing class INTRP_TerminalExpression implements INTPR_ExpressionIntf {
    private String data;
    
    public INTRP_TerminalExpression(String data) {
    	this.data = data;
    }
    
    public Boolean interpret(String context) {
    	return context.contains(data);
    }
}