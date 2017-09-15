public with sharing class COMPE_Client {
    COMPE_CompositeEntity compositeEntity;
    public COMPE_Client(COMPE_CompositeEntity compositeEntity) {
    	this.compositeEntity = compositeEntity;
    }

    public COMPE_Client() {
    	this(new COMPE_CompositeEntity());
    }
    
    public void setData(String data1, String data2) {
    	this.compositeEntity.setData(data1, data2);
    }
    
    public void printData() {
    	for (String data : this.compositeEntity.getData()) {
    		System.debug('Data: ' + data);
    	}
    }
}