public with sharing class ITER_NameIterator implements ITER_IteratorIntf {
    public static final List<String> NAME_LIST = new List<String>{'Robert', 'John', 'Julie', 'Lora'};

    Integer index = 0;
    
    public Boolean hasNext() {
		return this.index < NAME_LIST.size();    	
    }
    
    public String next() {
    	return (this.hasNext()) 
    		? NAME_LIST[index++]
    		: null; 
    }
}