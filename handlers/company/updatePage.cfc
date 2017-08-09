component extends = "coldbox.system.EventHandler" 
{
	public function designPage(event,rc,prc)
	{
		prc.companyData = wirebox.getInstance("fetchDataService").getCompanyData(Session.uid);
		prc.logo = wirebox.getInstance("fetchDataService").getCompanyPictures(Session.uid,1);
		prc.imageGallery = wirebox.getInstance("fetchDataService").getCompanyPictures(Session.uid,2);
		prc.user = "main/empty";
		prc.userModal = "main/empty";
		prc.editMode = "Enter";
		prc.pageInfo = "Main/editInfo";
		prc.userInfo = "Main/reply";
		prc.picInfo = "Main/editPicture";
		prc.productView = "Main/productsView";
		event.setView(view="main/company",layout="company");
	}
	remote function updateData(event,rc,prc)
	{
		//before updating this value check for the session value
		prc.response = wirebox.getInstance("updateDataService").checkData(Session.uid,rc.field,rc.fieldValue);
		event.renderData(type="json" , data = prc.response);	
	}
	public function updatePicture(event,rc,prc){
		prc.response = wirebox.getInstance("pictureProcessingService").uploadPicture(rc.fileUpload,rc.picturetype);
		//event.renderData(type="json" , data = prc.response);
		if(prc.response.filewassaved){
			setNextEvent(rc.eventCallee);
		}
	}
	public function addNewProduct(event,rc,prc){
		prc.response = wirebox.getInstance("productService").addProduct(rc);
		writeDump(prc.response);
		event.renderData(data=prc.response , type="json");
		if( prc.response.recordcount EQ 1){
			setNextEvent(rc.eventCallee);
		}
	}

}