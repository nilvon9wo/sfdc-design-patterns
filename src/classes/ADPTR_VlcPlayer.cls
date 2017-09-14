public with sharing class ADPTR_VlcPlayer implements ADPTR_AdvancedMediaPlayerIntf {
    public void playVlc(String fileName) {
    	System.debug('Playing vlc file.  Name: ' + fileName);
    }

    public void playMp4(String fileName) {
    	// Do nothing
    }
}