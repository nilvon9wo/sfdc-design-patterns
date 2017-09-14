public with sharing class INTRP_OrExpression implements INTPR_ExpressionIntf {
    private INTPR_ExpressionIntf expression1;
    private INTPR_ExpressionIntf expression2;
    
    public INTRP_OrExpression(INTPR_ExpressionIntf expression1, INTPR_ExpressionIntf expression2) {
    	this.expression1 = expression1;
    	this.expression2 = expression2;
    }
    
    public Boolean interpret(String context) {
    	return expression1.interpret(context) || expression2.interpret(context);
    }
}