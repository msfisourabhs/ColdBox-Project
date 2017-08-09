component extends="coldbox.system.EventHandler"
{
	public function addReply(event,rc,prc){
		prc.response = wirebox.getInstance("updateDataService").insertReply(rc.content,rc.replyID);
		event.renderData(data = prc.response , type="json");
	}
}