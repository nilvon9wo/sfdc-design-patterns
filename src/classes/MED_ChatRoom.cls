public with sharing class MED_ChatRoom {
	public void showMessage(User user, String message) {
		System.debug(Date.today() + ' [' + user.firstName + '] : ' + message);
	}    
}