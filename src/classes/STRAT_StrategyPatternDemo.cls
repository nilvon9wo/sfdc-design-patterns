public with sharing class STRAT_StrategyPatternDemo {
    public static void main() {
    	(new STRAT_StrategyPatternDemo()).demonstrate();
    }
    
   	public void demonstrate() {
   		STRAT_Context context = new STRAT_Context(new STRAT_OperationAdd());
   		System.debug('10 + 5 = ' + context.executeStrategy(10, 5));

   		context = new STRAT_Context(new STRAT_OperationSubtract());
   		System.debug('10 - 5 = ' + context.executeStrategy(10, 5));

   		context = new STRAT_Context(new STRAT_OperationMultiply());
   		System.debug('10 * 5 = ' + context.executeStrategy(10, 5));
   	}
}