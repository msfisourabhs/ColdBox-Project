<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <cfoutput >
  	<title>#prc.companyData.registeredData.CompanyName#</title>
  </cfoutput>
  
  <meta charset="utf-8">
  <cfset base = getSetting('htmlbaseURL')>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="/includes/css/company.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<!---Navbar container--->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
    	<cfoutput>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="##myNavbar">
        </cfoutput>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	    <a class="navbar-brand" href="#myPage">
	 	 	 <cfoutput>
				<img src="#base#/includes/images/#prc.logo.PictureLocation#" height="35px" width="30px"></img></a>
		    </cfoutput>
		  		
	</div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left" >
     <!---Loop over to fill star icons--->
	  	
	  	<li>
      		<a href="#" >RATINGS
				<div class="stars-ratings" style="padding-left:10px;display:inline-block;font-size:15px" title="These ratings represent the overall user experience">
					<cfoutput>
						<label hidden id="rating-value">#prc.companyData.registeredData.Ratings#</label>
					</cfoutput>
					<span class="glyphicon glyphicon-star-empty"></span>
					<span class="glyphicon glyphicon-star-empty"></span>
					<span class="glyphicon glyphicon-star-empty"></span>
					<span class="glyphicon glyphicon-star-empty"></span>
					<span class="glyphicon glyphicon-star-empty"></span>
				</div>	
			</a>
		</li>
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
	        <span class="glyphicon glyphicon-user"><span class="caret"></span></span></a>
	        <ul class="dropdown-menu">
	          <li><a href="#">Profile</a></li>
	          <li><a href="#">Add a Notice</a></li>
	          <li><a href="#">Report Issue</a></li>
	        </ul>
		</li>
		<li>
			<cfoutput>
				<cfif prc.editMode EQ "Exit">
					<a href="##">
						<span class="glyphicon glyphicon-edit"></span>
						ENTER
					</a>
				<cfelseif prc.editMode EQ "Enter">
					<a href="##">
						<span class="glyphicon glyphicon-check"></span>
						EXIT
					</a>
				<cfelse>
					<div></div>	
				</cfif>
			</cfoutput>
		</li>	
	  </ul>
	  <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
     	<cfoutput>
			<li><a href=#base#>HOME</a></li>
        </cfoutput>
		<li><a href="#introduction">INTRODUCTION</a></li>
        <li><a href="#products">PRODUCTS</a></li>
        <li><a href="#Comments">COMMENTS</a></li>
		<li><a href="#location">LOCATIONS</a></li>
        
		<cfoutput>
     		#renderView(prc.user)#
     	</cfoutput>
	  
	  </ul>
    </div>
  </div>
</nav>
<!---Find a solution to this--->
<cfoutput >
	#renderView(prc.userModal)#
</cfoutput>

<!---Container for Body--->
<cfoutput >
	#renderView("main/company")#
</cfoutput>
</body>
</html>