<cfoutput >
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="about-us" style="display:inline-block;">
	<div class="aboutus-address" style="text-align:left;padding-right:130px;float:left">
	<h3><span class="glyphicon glyphicon-map-marker"></span>Address</h3>
		<!---fetch data for comapany hq address--->
			
		<p>#prc.companyData.registeredData.StreetName#<br>
		#prc.companyData.registeredData.City#<br>
		#prc.companyData.registeredData.State#<br>
		#prc.companyData.registeredData.Country#
		</p>
	</div>
	<div class="about-us-contcat" style="display:inline-block;padding-left:100px;padding-right:100px">
		<h3><span class="glyphicon glyphicon-phone"></span>Contact</h3>
			<!---fetch data for comapany phone number--->
			<p>#prc.companyData.registeredData.PhoneNumber#</p><br>
				
		<h3><span class="glyphicon glyphicon-envelope"></span>Email</h3>
			<!---fetch data for comapany email address--->
			<p>#prc.companyData.registeredData.EmailAddress#</p>
	</div>
	<div class="about-us-social-media" style="align:right;font-size:25px;padding-left:130px;float:right">
		<a href="#prc.companyData.Social.Facebook#" class="fa fa-facebook"></a>
		<a href="#prc.companyData.Social.Twitter#" class="fa fa-twitter"></a>	
		<a href="#prc.companyData.Social.Youtube#" class="fa fa-youtube"></a>
		<a href="#prc.companyData.Social.LinkedIn#" class="fa fa-linkedin"></a>
	
	</div>
</div>
</cfoutput>