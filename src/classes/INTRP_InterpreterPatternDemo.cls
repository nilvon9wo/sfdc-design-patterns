public with sharing class INTRP_InterpreterPatternDemo {
	public static void main() {
		(new INTRP_InterpreterPatternDemo()).demonstrate();
	}    
	
	private void demonstrate() {
		INTPR_ExpressionIntf isMale = this.getMaleExpression();
		INTPR_ExpressionIntf isMarriedWoman = this.getMarriedWomanExpression();
		
		System.debug('John is male? ' + isMale.interpret('John'));
		System.debug('Julie is a married woman? ' + isMarriedWoman.interpret('Married Julie'));
	}
	
	private INTPR_ExpressionIntf getMaleExpression() {
		INTPR_ExpressionIntf robert = new INTRP_TerminalExpression('Robert');
		INTPR_ExpressionIntf john = new INTRP_TerminalExpression('John');
		return new INTRP_OrExpression(robert, john);
	}

	private INTPR_ExpressionIntf getMarriedWomanExpression() {
		INTPR_ExpressionIntf julie = new INTRP_TerminalExpression('Julie');
		INTPR_ExpressionIntf married = new INTRP_TerminalExpression('Married');
		return new INTRP_AndExpression(julie, married);
	}
}