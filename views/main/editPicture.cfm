<cfoutput >
	<a href='##edit#args.element#' data-toggle="collapse"><span class="glyphicon glyphicon-pencil" ></span></a>
		<div id="edit#args.element#" class="collapse">
			<button type="button" id="add-picture-#args.element#" data-toggle="modal" data-target="##editPic" data-backdrop="true" style="width:auto" class="btn btn-info btn-lg">
				<span class="glyphicon glyphicon-plus"></span>
				Edit	
			</button>
			<button type="button" id="save-#args.element#" class="btn btn-info btn-lg" style="width:auto" onclick="checkUserStatus()">
				<span class="glyphicon glyphicon-remove-circle"></span>
				Remove
			</button>
			
		</div>			

		</cfoutput>