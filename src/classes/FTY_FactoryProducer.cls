public with sharing class FTY_FactoryProducer {

	private static Map<FTY_FactoryType, Type> TYPE_BY_FACTORY_TYPE_MAP = new Map<FTY_FactoryType, Type>{
		FTY_FactoryType.SHAPE => FTY_ShapeFactory.class,
		FTY_FactoryType.COLOR => FTY_ColorFactory.class
	}; 

	public FTY_AbstractFactory getFactory(FTY_FactoryType factoryType) {
		return (FTY_AbstractFactory) TYPE_BY_FACTORY_TYPE_MAP.get(factoryType).newInstance();
	}    
}