<cfoutput>
	<script src="#getSetting('htmlbaseURL')#/includes/js/userRegister.js" type="text/javascript"></script>
	<script src="#getSetting('htmlbaseURL')#/includes/js/jquery.js" type="text/javascript"></script>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
	<link href="#getSetting('htmlbaseURL')#includes/css/register.css" rel="stylesheet">
</cfoutput>
<cfif StructKeyExists(prc,"regitserActionResponse")>
<cfoutput>	
<div class="errors" style="color:red">
  <strong>Error Occurred in one or more fields!</strong> 
  <br>
</cfoutput>
    <cfloop collection="#prc.regitserActionResponse#" item="errorMessages">
	  	<cfoutput >
	  		<cfif prc.regitserActionResponse[errorMessages] NEQ "">
	  			#prc.regitserActionResponse[errorMessages]#
			</cfif>	
	  	</cfoutput>
	  </cfloop>
</cfif>
</div>
<div class="testbox" style="height:auto">
  
	<cfoutput >
		#renderView()#
	</cfoutput>
	
</div>

