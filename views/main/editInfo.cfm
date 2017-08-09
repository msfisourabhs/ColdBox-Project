<cfoutput >
	<a href='##edit#args.element#' data-toggle="collapse"><span class="glyphicon glyphicon-pencil" ></span></a>
		<div id="edit#args.element#" class="collapse">
			<textarea id="add-content-#args.element#" style="width:75%;height:100px" onfocus="clearErrors(this)"></textarea><br>
			<button type="button" id="save-#args.element#" class="btn btn-info btn-lg" style="width:auto" onclick="sendData(this)">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Save
			</button>
			<img src="#base#includes/images/loading.gif" id="loading-#args.element#" style="display:none;hidden:true"height="100px" width="100px">
</cfoutput>
		</div>
	<script>
		function clearErrors(element){
			if(element.nextElementSibling.nextElementSibling.className === "errors" )	
				element.nextElementSibling.nextElementSibling.remove();
		}
		function sendData(element){
			var editElementName = element.id.split("-")[1];
			var editedElement = $("#" + "content-" + editElementName);
			console.log(editElementName);
			var contentToFill= element.previousElementSibling.previousElementSibling.value;
					
			if (contentToFill !== "" && checkWord(contentToFill)) {
				$("#loading-" + editElementName).show();
				$.getJSON('/index.cfm/company/updatePage/updateData/field/' + editElementName + '/fieldValue/' + contentToFill  , function(result)
				{
					console.log(result);
					editedElement.text(contentToFill);
					$("#loading-" + editElementName).hide();
					
				});
				
			}
			else{
				var error = document.createElement("p");
				error.innerText = "Your input does not contain letters or it was empty";
				error.style.color = "red";
				error.className = "errors";
				element.insertAdjacentElement('beforebegin',error);
			}
	}
	function checkWord(text)
	{
		var counter=0;
		var len = text.length;
		for(var iterator=0 ; iterator<len; iterator++)
		{
			var unicode = text.charCodeAt(iterator);
			if((unicode >= 65 && unicode <=90) || (unicode >= 97 && unicode <= 122) 
			   || unicode === 32 || unicode === 46 || unicode === 44
			   || (unicode >= 48 && unicode <= 57) || unicode === 8482 || unicode === 174)
					counter++;
			
		}
		
		if(counter !== len)
			return false;
		else
			return true;
	}

	</script>			
