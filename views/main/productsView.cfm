<cfoutput>
	  <div class="col-sm-4">
        <div class="card" style="width: 20rem;padding-top:40px">
		  <a href="##" data-toggle="modal" data-target="##addProduct" data-backdrop="true">
		  	<img class="card-img-top" height="50%" width="50%" src="#base#includes/images/add.png" alt="Card image cap"></a>
		  <div class="card-block">
		    <p class="card-text">Add a new product</p>
		  </div>
			<!-- Modal -->
			<div class="modal fade in" id="addProduct" role="dialog">
				<div class="modal-dialog">
			
			  	   <!-- Modal content-->
				  <div class="modal-content">
				    <div class="modal-header">
				      <button type="button" class="close" data-dismiss="modal" style="width:10%">&times;</button>
				      <h4 class="modal-title" style="text-align:center;font-family:helvetica;font-size:20px"></h4>
					 </div>
				   <div class="modal-body">
			     		#renderView(view="main/addProduct")#
			    	</div>
			    
			 	 </div>
			  
				</div>
			</div>

		</div>
      </div>
</cfoutput>