 
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav" style="padding:0px">
    	<!--Notice Board--->
		<cfoutput >
			#renderView("main/noticeBoard")#
		</cfoutput>
		
	</div>
	
	<div class="col-sm-8 text-left">
	<cfif StructkeyExists(rc,"errorCode") AND rc.errorCode NEQ ""> 
      <div class="alert alert-danger" id="login-error">
  			<cfoutput>
				<strong>#rc.errorCode#</strong>
			</cfoutput> 
	  </div>
	  <cfelse>
	 </cfif>
      <h1>Welcome</h1>
      <p>
      	Welcome to this website.You can buy products , browse, locate and review companies.
		
      </p>
      <hr>
      <h3>Some of the registered companies are</h3>
      
	  	<cfloop query="prc.listCompanies">
			  	<cfoutput>
				  	<li>
				  		<a href=#event.buildLink("Main.displayCompany")#/cuid/#cuid#>#CompanyName#</a>
					</li>
	          	</cfoutput>
	  </cfloop>
    </div>
   
  </div>
</div>
	
<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>


	<!-- Modal -->
  <div class="modal fade in" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align:center;font-family:helvetica;font-size:20px">Please login to continue</h4>
        </div>
        <div class="modal-body">
         	<cfoutput>
			 	#renderView("main/login")#
         	</cfoutput>
        </div>
        
      </div>
      
    </div>
  </div>
	<script type="text/javascript">
		window.onload = function(){
			$("#login-error").hide(5000);
		}
	</script>
