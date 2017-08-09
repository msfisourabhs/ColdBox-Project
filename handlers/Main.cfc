component extends="coldbox.system.EventHandler" output="false"{
	
	// Default Action
	function index( event, rc, prc ){
		if(StructKeyExists(Session,"uid"))
			prc.user = "main/registeredUser";
		else
			prc.user = "main/public";
		prc.listCompanies = wirebox.getInstance("fetchDataService").listOfCompanies();
		event.setView(view="main/index",layout="Main");
	}

	// Do something
	function displayCompany( event, rc, prc ){
		if(wirebox.getInstance("fetchDataService").companyExsist(rc.cuid))
		{
			if(StructKeyExists(Session,"uid")){ 
				if(Session.roleID EQ 2 OR rc.cuid NEQ Session.uid){
					prc.companyData = wirebox.getInstance("fetchDataService").getCompanyData(rc.cuid);
					prc.logo = wirebox.getInstance("fetchDataService").getCompanyPictures(rc.cuid,1);
					prc.imageGallery = wirebox.getInstance("fetchDataService").getCompanyPictures(rc.cuid,2);
					prc.user = "main/empty";
					prc.userModal = "main/empty";
					prc.editMode = "";
					prc.pageInfo = "Main/empty";
					prc.userInfo = "Main/comment";
					prc.picInfo = "Main/empty";
					prc.productView = "Main/empty";
		
				}
				else
				{
					setNextEvent("company.updatePage.designPage");
				}
			
			}
			else{
					prc.companyData = wirebox.getInstance("fetchDataService").getCompanyData(rc.cuid);
					prc.logo = wirebox.getInstance("fetchDataService").getCompanyPictures(rc.cuid,1);
					prc.imageGallery = wirebox.getInstance("fetchDataService").getCompanyPictures(rc.cuid,2);
					prc.user = "main/empty";
					prc.userModal = "main/empty";
					prc.editMode = "Enter";
					prc.pageInfo = "Main/empty";
					prc.userInfo = "Main/empty";
					prc.picInfo = "Main/empty";
					prc.productView = "Main/empty";
		
			}
		event.setView(view="main/company",layout="company");
		}
		else{
			setNextEvent(url="#getSetting('htmlbaseURL')#views/_templates/404.html");
		}
	}
	function nearYou(event,rc,prc){
		prc.nearestStoreResult = wirebox.getInstance("nearYou").findClosest(rc.latt,rc.long);
		event.renderData(type="json",data=prc.nearestStoreResult);
	}
	//login 
	function register(event,rc,prc){
		event.setView(view="main/register",layout="register");
		
	}
	function registerAction(event,rc,prc){
		prc.regitserActionResponse = wirebox.getInstance("registrationService").registerAction(rc);
		if(StructKeyExists(prc.regitserActionResponse ,"validationToken")){
			//registration was successful and data needs to be entered into DB
			prc.databaseResponse = wirebox.getInstance("databaseInputService").insertUserData(rc);
			if(StructKeyExists(prc.databaseResponse,"errorCode"))
				event.setView(view = "errors/error",layout="error");
			else
				setNextEvent(url=getSetting('htmlbaseURL'));
			
		}
		else
			//Registration failed json was returned 
			//event.renderData(type="json", data=prc.regitserActionResponse);
			event.setView(view="main/register",layout="register",args={errors="prc.regitserActionResponse"});
	}
	
	
	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit( event, rc, prc ){

	}

	function onRequestStart( event, rc, prc ){

	}

	function onRequestEnd( event, rc, prc ){

	}

	function onSessionStart( event, rc, prc ){
		Session.uid = -1;
		Session.roleId = -1; 
	}

	function onSessionEnd( event, rc, prc ){
		var sessionScope = event.getValue("sessionReference");
		var applicationScope = event.getValue("applicationReference");
	}

	function onException( event, rc, prc ){
		//Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		//Place exception handler below:

	}

	function onMissingTemplate( event, rc, prc ){
		//Grab missingTemplate From request collection, placed by ColdBox
		var missingTemplate = event.getValue("missingTemplate");

	}

}