component extends="coldbox.system.EventHandler"{
	function doLogout(event,rc,prc){
		if(StructKeyExists(Session,"uid") AND StructKeyExists(Session,"roleID"))
		{
			prc.logoutResponse = wirebox.getInstance("authenticationService").deAuthenticateUser();
		}
		//event.setView();
		//setNextEvent(rc.eventCallee);
		//runEvent(rc.event);
		writeDump(prc.logoutResponse);
		if(!StructKeyExists(Session,"uid")){
			setNextEvent(url=getSetting('htmlbaseURL'));
		}
		
	}
	
}