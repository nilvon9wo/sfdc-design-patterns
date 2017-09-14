public with sharing class MED_UserDecorator {
	private static MED_ChatRoom chatRoom;
    User user;

    public MED_UserDecorator(MED_ChatRoom chatRoomParam, User user){
    	chatRoom = chatRoomParam;
    	this.user = user;
    }
    
    public MED_UserDecorator(User user){
    	this(getChatRoom(),  user);
    }

    public MED_UserDecorator(String name){
    	this(new User(firstName = name));
    }
    
    public void sendMessage(String message) {
    	chatRoom.showMessage(this.user, message);
    }
    
    private static MED_ChatRoom getChatRoom() {
    	return (chatRoom != null)
    		? chatRoom
    		: new MED_ChatRoom();
    }
}