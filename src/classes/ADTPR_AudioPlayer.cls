public with sharing class ADTPR_AudioPlayer implements ADPTR_MediaPlayerIntf {
	private static final Map<ADPTR_AudioType, ADPTR_MediaAdapter> ADAPTER_BY_TYPE_MAP = new Map<ADPTR_AudioType, ADPTR_MediaAdapter>();
	
    private static Set<ADPTR_AudioType> SUPPORTED_OTHER_FILE_FORMAT_SET = new Set<ADPTR_AudioType> {
    	ADPTR_AudioType.MP4, ADPTR_AudioType.VLC
    }; 
    
    public void play(ADPTR_AudioType audioType, String fileName) {
    	if (audioType.equals(ADPTR_AudioType.MP3)) {
    		System.debug('Playing mp3 file.  Name: ' + fileName);
    	} 
    	else  if (SUPPORTED_OTHER_FILE_FORMAT_SET.contains(audioType)) {
    		this.getAdapter(audioType).play(audioType, fileName);
    	}
    	else {
    		System.debug(LoggingLevel.ERROR, 'Invalid media. ' + audioType + ' format not supported.');
    	}
   }
   
   private ADPTR_MediaAdapter getAdapter(ADPTR_AudioType audioType) {
   		if (ADAPTER_BY_TYPE_MAP.get(audioType) == null) {
   			ADAPTER_BY_TYPE_MAP.put(audioType, new ADPTR_MediaAdapter(audioType));
   		}
   		return ADAPTER_BY_TYPE_MAP.get(audioType);
   }
}