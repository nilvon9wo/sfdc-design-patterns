public with sharing class ITER_IteratorPatternDemo {
	ITER_NameRespository nameRepository;
	
	public ITER_IteratorPatternDemo(ITER_NameRespository nameRepository) {
		this.nameRepository = nameRepository;
	}

	public ITER_IteratorPatternDemo() {
		this(new ITER_NameRespository());
	}
	
    public static void main() {
    	(new ITER_IteratorPatternDemo()).demonstrate();
    }
    
    public void demonstrate() {
		for (ITER_IteratorIntf iterator = this.nameRepository.getIterator(); iterator.hasNext(); ) {
			System.debug('Name: ' + (String) iterator.next());
		}
    }
}