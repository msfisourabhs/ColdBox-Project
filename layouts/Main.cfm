<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<cfoutput >
		
	<!---css --->
		<link href="/includes/css/bootstrap.min.css" rel="stylesheet">
		<link href="/includes/css/company.css" rel="stylesheet">
	</cfoutput>
	
	<!---js --->
    <script src="includes/js/jquery.js"></script>
	<script src="includes/js/bootstrap.min.js"></script>
	<style>
	 /* Utility */
	body{
		padding-top:0px !important;
	}
	.centered { text-align: center !important; }
	.inline{ display: inline !important; }
	.margin10{ margin: 0px; }
	.padding10{ padding: 0px; }
	.margin0{ margin: 0px; }
	.padding0{ padding: 0px; }
	.footer {
	  margin-top: 0px;
	  padding: 0px 0px;
	  border-top: 1px solid ##e5e5e5;
	}
	.footer p {
	  margin-bottom: 0;
	  color: ##555;
	}
	body{ padding-top: 0px; }
	</style>
</head>
<body >
	<!---Top NavBar --->
<nav class="navbar navbar-inverse" style="margin-bottom:0px">
  <div class="container-fluid">
    
    
	<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="padding-bottom:0px">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>
		<li><a href="#event.buildLink("aboutUs")#">ABOUT</a></li>
	    <li><a href="#event.buildLink("ContactUs")#">CONTACT</a></li>
		<li class="dropdown">
	        <a class="dropdown-toggle" data-toggle="dropdown" href="#">COMPANIES
	        <span class="caret"></span></a>
	    	<ul class="dropdown-menu" role="menu">
	          <cfloop query="prc.listCompanies">
			  	<cfoutput>
				  	<li>
				  		<a href=#event.buildLink("Main.displayCompany")#/cuid/#cuid#>#CompanyName#</a>
					</li>
	          	</cfoutput>
			  </cfloop>
			 </ul>
	      </li>
		
			
	    <form class="navbar-form navbar-left">
	     <div class="input-group">
	       <input type="text" class="form-control" placeholder="Search">
	       <div class="input-group-btn">
	         <button class="btn btn-default" type="submit" style="border:0;margin-left:2px">
	           <i class="glyphicon glyphicon-search"></i>
	         </button>
	       </div>
	     </div>
	   </form>
	  </ul>
	 
	<!---user specific display--->	
	  <cfoutput >
	  	#renderView(prc.user)#
	  </cfoutput>
	  
    </div>
  </div>
</nav>
	<!---Container And Views --->
	
	<cfoutput>
		<div>#renderView()#</div>		
	</cfoutput>
	<footer class="footer">
		<p class="pull-right">
			<a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			<a href="http://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
			<a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="http://twitter.github.com/bootstrap">Twitter Boostrap</a>
		</p>
	</footer>

</body>
</html>