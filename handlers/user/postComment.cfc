component extends="coldbox.system.EventHandler"
{
	public function addComment(event,rc,prc){
		prc.response = wirebox.getInstance("databaseInputService").insertComment(rc.content,rc.cuid);
		event.renderData(data = prc.response , type="json");
	}
}