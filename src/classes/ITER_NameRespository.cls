public with sharing class ITER_NameRespository implements ITER_ContainerIntf {
    public ITER_IteratorIntf getIterator() { 
    	return new ITER_NameIterator();  
    } 
}