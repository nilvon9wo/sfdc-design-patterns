public with sharing class ADPTR_MediaAdapter implements ADPTR_MediaPlayerIntf {
    ADPTR_AdvancedMediaPlayerIntf advancedMusicPlayer;

	private static Map<ADPTR_AudioType, Type> PLAYER_TYPE_BY_AUDIO_TYPE_MAP = new Map<ADPTR_AudioType, Type>{
		ADPTR_AudioType.MP4 => ADPTR_Mp4Player.class,
		ADPTR_AudioType.VLC => ADPTR_VLCPlayer.class
	};

    public ADPTR_MediaAdapter(ADPTR_AdvancedMediaPlayerIntf advancedMusicPlayer) {
    	this.advancedMusicPlayer = advancedMusicPlayer;
    }
    
    public ADPTR_MediaAdapter(ADPTR_AudioType audioType) {
    	this(((ADPTR_AdvancedMediaPlayerIntf) PLAYER_TYPE_BY_AUDIO_TYPE_MAP.get(audioType).newInstance()));	
    }
    
    public void play(ADPTR_AudioType audioType, String fileName) {
    	if (audioType.equals(ADPTR_AudioType.VLC)) {
    		this.advancedMusicPlayer.playVlc(fileName);
    	}
    	else if (audioType.equals(ADPTR_AudioType.MP4)) {
    		this.advancedMusicPlayer.playMp4(fileName);
    	} 
    } 
}