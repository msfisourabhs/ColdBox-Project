component extends="coldbox.system.EventHandler"{
	function doLogin(event,rc,prc){
		if(StructKeyExists(rc,"email") AND StructKeyExists(rc,"password"))
		{
			prc.loginResponse = wirebox.getInstance("authenticationService").authenticateUser(rc.email,rc.password);
		}
		if(prc.loginResponse.error EQ ""){
			SessionRotate();
			Session.uid = prc.loginResponse.uid;
			Session.roleID = prc.loginResponse.roleID;
			
		}
		
		rc.errorCode = prc.loginResponse.error;
		setNextEvent(url=getSetting('htmlbaseURL'),persist = "errorCode");
	}
	
}