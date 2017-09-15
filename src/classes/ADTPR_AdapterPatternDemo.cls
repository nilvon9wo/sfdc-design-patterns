public with sharing class ADTPR_AdapterPatternDemo {
	ADTPR_AudioPlayer audioPlayer;
	
	public ADTPR_AdapterPatternDemo(ADTPR_AudioPlayer audioPlayer) {
		this.audioPlayer = audioPlayer;
	}
    
	public ADTPR_AdapterPatternDemo() {
		this(new ADTPR_AudioPlayer());
	}
	
	public static void main() {
		(new ADTPR_AdapterPatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		this.audioPlayer.play(ADPTR_AudioType.MP3, 'beyond the horizon.mp3');
		this.audioPlayer.play(ADPTR_AudioType.MP4, 'alone.mp4');
		this.audioPlayer.play(ADPTR_AudioType.VLC, 'far far away.vlc');
		this.audioPlayer.play(ADPTR_AudioType.AVI, 'mind me.avi');
	}
}