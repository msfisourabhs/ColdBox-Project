function enterEditMode(element)
{
	console.log(element.parentElement.parentElement);
	var willBeEditedElement = element.parentElement.parentElement;
	
	var editBox = document.createElement("textarea");
	editBox.style.width = "75%";
	editBox.style.height = "100px";
	editBox.style.margin = "30px 0";
	willBeEditedElement.after(editBox);
	
	element.style.pointerEvents = "none";
	
	var editButtonSave = document.createElement("button");
	editButtonSave.style.width = "10%";
	editButtonSave.style.float = "right";
	editButtonSave.style.margin = "30px 0";
	
	editButtonSave.setAttribute("class","btn btn-info btn-lg");
	editButtonSave.innerHTML = "<span class=\"glyphicon glyphicon-floppy-saved\"></span>Save";
	
	editBox.after(editButtonSave);
	
	
	
	
}
