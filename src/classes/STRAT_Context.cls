public with sharing class STRAT_Context {
    private STRAT_StrategyIntf strategy;
    
    public STRAT_Context(STRAT_StrategyIntf strategy) {
    	this.strategy = strategy;
    }
    
    public Integer executeStrategy(Integer number1, Integer number2) {
    	return this.strategy.doOperation(number1, number2);
    }
}