<!---Body--->
<cfoutput >
	
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="##myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="##myCarousel" data-slide-to="1"></li>
      <li data-target="##myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="height:700px">
 		<cfloop query="prc.imageGallery">
			  <div class="item">
			  	<div class="image-carousel">
					<img src="#base#includes/images/#prc.imageGallery.PictureLocation#" alt="image-gallery" width="50%" height="700px">
		        </div>
		        <div class="carousel-caption">
				<cfoutput>
					#renderView(view=prc.picInfo,args={element:"carousel-picture-"&prc.imageGallery.PictureUID})#
		  		</cfoutput>
		  		</div>      
		      </div>
		</cfloop>
		<cfoutput >
			<div class="item active">
		        <div class="image-carousel">
					<img src="#base#includes/images/#prc.logo.PictureLocation#" alt="logo" width="50%" height="700px">
		        </div>
		        <div class="carousel-caption">
		    		<cfoutput>
		    			#renderView(view=prc.picInfo,args={element:"carousel-picture-1"})#
		  			</cfoutput>
		  		</div>      
	     	 </div>
		</cfoutput>
		
	    
    <!-- Left and right controls -->
    <a class="left carousel-control" href="##myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="##myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
<!-- Container (Introduction) -->
<div id="introduction" class="container text-center">
  <h3>INTRODUCTION</h3>
  <p>
  	
  		<div id="content-motto" style="font-family:Monaco;">
			#prc.companyData.registeredData.Motto#
		</div>
	#renderView(view=prc.pageInfo,args={element:"motto"})#
  		
  </p>
  
  <br>
  <p>
  	<div id="content-introduction">
		#prc.companyData.registeredData.Introduction#
	</div>
	   #renderView(view=prc.pageInfo,args={element:"introduction"})#
 	
 	</p>
 
	<br>
  <div class="row">
    	<cfloop query="prc.companyData.data" >
		<div class="col-sm-4">
	      
		  <p class="text-center">
		  	<strong>
		  		<div id="content-ExecutiveDesignation_#prc.companyData.data.PictureId#">
		  			#prc.companyData.data.Designation#
		  		</div>
		  	</strong>
			<cfoutput>
				#renderView(view=prc.pageInfo,args={element:"ExecutiveDesignation_#prc.companyData.data.PictureId#"})#
			</cfoutput>
			</p>
			<br>
	    
		  <a href="##demo#prc.companyData.data.PictureId#" data-toggle="collapse">
		  <img src="#base#includes/images/#prc.companyData.data.PictureLocation#" class="img-circle person" alt="#prc.companyData.data.Designation#" width="255" height="255">
	      <cfoutput>
	      	#renderView(view=prc.picInfo,args={element:"executive_pic-#prc.companyData.data.PictureId#"})#
	  	 </cfoutput>
	  	 </a>
	      <div id="demo#prc.companyData.data.PictureId#" class="collapse">
	        <p>
	        	<div id="content-ExecutiveName_#prc.companyData.data.PictureId#">
		        	#prc.companyData.data.Name#
		        </div>
				<br>
				<cfoutput>
					#renderView(view=prc.pageInfo,args={element:"ExecutiveName_#prc.companyData.data.PictureId#"})#
	       		</cfoutput>
	        <div id="content-ExecutiveDescription_#prc.companyData.data.PictureId#">
	        	#prc.companyData.data.Description#
			</div>
			<cfoutput>
				#renderView(view=prc.pageInfo,args={element:"ExecutiveDescription_#prc.companyData.data.PictureId#"})#
	  		</cfoutput>
	  		</p>
	      </div>
	    </div>
		</cfloop>
	<!---
	
		<cfloop index = "LoopCount"
		from = "1"
		to = "3"
		step = "1"> 
		<cfoutput >
			
		<div class="col-sm-4">
		    <p class="text-center">
		    	<strong>
		    		<div id="content-ExecutiveDesignation_#LoopCount#">
						Company Executive-#LoopCount#
					</div>
				</strong>
				#renderView(view=prc.pageInfo,args={element:"ExecutiveDesignation_#LoopCount#"})#
			</p><br>
		    <a href="##demo#LoopCount#" data-toggle="collapse">
	        <img src="#base#includes/images/unknown-user.jpg" class="img-circle person" alt="company's CTO" width="255" height="255">
	      	#renderView(view=prc.picInfo,args={element:"intro-pic-#LoopCount#"})#
	  		  </a>
	      <div id="demo#LoopCount#" class="collapse">
	        <p>
	        	<div id="content-ExecutiveName_#LoopCount#">
					Company Executive Name
				</div>
			
			#renderView(view=prc.pageInfo,args={element:"ExecutiveName_#LoopCount#"})#
			
			<div id="content-ExecutiveDescription_#LoopCount#">
				Description
			</div>
	  		#renderView(view=prc.pageInfo,args={element:"ExecutiveDescription_#LoopCount#"})#
			
			</p>
	       </div>
		    </div>
		</cfoutput>
				
		</cfloop>
		--->
	
	<!---
    <div class="col-sm-4">
      <p class="text-center"><strong>CTO</strong></p><br>
      <a href="##demo3" data-toggle="collapse">
        <img src="#base#includes/images/unknown-user.jpg" class="img-circle person" alt="company's CTO" width="255" height="255">
      	#renderView(view=prc.picInfo,args={element:"into-pic-3"})#
  		  </a>
      <div id="demo3" class="collapse">
        <p>CTO<br>
		<em>
			<cfif prc.companyData.Data.CTOData NEQ "">
				#prc.companyData.Data.CTOData#
			<cfelse>
				<cfoutput >
					Description
				</cfoutput>	
			</cfif>

		</em>
  		#renderView(view=prc.pageInfo,args={element:"description-CTO"})#
		
		</p>
      </div>
    </div>
 	--->
  </div>

</div>

<!-- Container (PRODUCTS Section) -->
<div id="products" class="bg-1">
  <div class="container">
  	<div class="text-center">
	    <h3 class="text-center">PRODUCTS</h3>
	    <p>
	    <div id="content-ProductMotto" style="font-family:Monaco">
			#prc.companyData.registeredData.ProductMotto#
		</div>
		</p>
		#renderView(view=prc.pageInfo,args={element:"ProductMotto"})#
    </div>
    <div class="row text-center">
      <cfloop query="prc.companyData.Products">
	      <div class="col-sm-4">
		    <div class="card" style="width: 20rem;">
			  <img class="card-img-top" src="#base#/includes/images/#PictureLocation#" alt="Card image cap" height="150px" width="150px">
			  <cfoutput>
	      		#renderView(view=prc.picInfo,args={element:"ProductPicture_#PictureId#"})#
	  	 	  </cfoutput>
	  	
			  <div class="card-block">
			    <h4 class="card-title">
					<div id="content-ProductName_#PictureID#">    	
				    	#ProductName#
					</div>
					<cfoutput>
		  				#renderView(view=prc.pageInfo,args={element:"ProductName_#PictureID#"})#
		  			</cfoutput>
				</h4>
			    <p class="card-text">
			    	<!---Think--->
			    	<div id="content-ProductDescription_#PictureID#">
			    		#Description#
			    	</div>
			    	<cfoutput>
						#renderView(view=prc.pageInfo,args={element:"ProductDescription_#PictureID#"})#
	  				</cfoutput>
	  			</p>
				
			   <div class="card-footer">
					<h3>
						<span class="glyphicon glyphicon-usd" style="display:inline-block"></span>
						<div id="content-ProductPrice_#PictureID#" style="display:inline-block">
							#prc.companyData.Products.Price#
						</div>
						<cfoutput>
							#renderView(view=prc.pageInfo,args={element:"ProductPrice_#PictureID#"})#
		  				</cfoutput>
		  			</h3>
				</div>
			    <a href="##" class="btn btn-primary">Purchase</a>
			  </div>
			</div>
	      </div>
	   </cfloop>
	  #renderView(prc.productView)#

    </div>
  </div>
  
  
</div>


<!-- Container (Comment Section) -->
<div id="Comments" class="container">
  <h3 class="text-center">COMMENTS</h3>
  <p class="text-center"><em>You can view differnt user's feedback for this company</em></p>

  <div class="row">
    #renderView(view="Main/commentsPage",args={userInfo=prc.userInfo})#
  </div>
 </div>
  <br>

<div id ="location">
<div class="near-you" >
	<h3 style="display:inline-block;padding-left:210px">Find the company's location near you</h3>
	<button type="button" id="post-comment" class="btn btn-info btn-lg" style="width:10%" onclick="findNearMe()"><span class="glyphicon glyphicon-map-marker"></span>Locate</button>
	
<!-- Add Google Maps -->
<div id="googleMap"></div>
	<input type="hidden" id="startLat" value="#prc.companyData.registeredData.Lattitude#">
	<input type="hidden" id="startLon" value="#prc.companyData.registeredData.Longitude#">
</div>
</div>
<script>
function findNearMe(){
	//A message specifying the location access message
	alert('For a better user experience,Please enable the location');
	var userLat = $("##startLat").text();
	var userLon = $("##startLon").text();
	$.getJSON("nearYou/latt/"+userLat+"/long/"+userLon,function(result)
		{
			//if(readyState === 4 && status === "success");
			myMap(result.LATTITUDE,result.LONGITUDE,userLat,userLon);
		}
	);
	
}
function myMap(nearLat=28.6172,nearLon=77.2075,userLat,userLon) {
	var myCenter = new google.maps.LatLng(nearLat,nearLon);
	var cen = new google.maps.LatLng(userLat,userLon);
	var mapProp = {center:myCenter, zoom:5, scrollwheel:false, draggable:true, mapTypeId:google.maps.MapTypeId.ROADMAP};
	var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
	var markerUser = new google.maps.Marker({position:myCenter,map:map});
	var marker = new google.maps.Marker({position:cen,map:map});
	
	marker.setMap(map);

	  var startPos;
	  var geoSuccess = function(position) {
	    startPos = position;
	    document.getElementById('startLat').innerHTML = startPos.coords.latitude;
	    document.getElementById('startLon').innerHTML = startPos.coords.longitude;
	  };
	  var geoError = function(error) {
	    
		console.log('Error occurred. Error code: ' + error.code);
	    // error.code can be:
	    //   0: unknown error
	    //   1: permission denied
	    //   2: position unavailable (error response from location provider)
	    //   3: timed out
	  };
	  navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
	
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIPe8u1CUa5pyOIS4vr4KHjVQhMnl_lDc&callback=myMap"></script>
-->
<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="##myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  #renderView("footer/aboutUs")#
  
</footer>
<script>
	window.onload=function(){
		var starLength = $("##rating-value").text();
		var starsDiv = $(".stars-ratings");
		
		for(iterator = 1; iterator <= starLength ; iterator++)
		{
			
			starsDiv[0].children[iterator].style.color = "yellow";	
		}
		
	}
</script>
<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='##myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (##) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
function rateIt(ratingValue){
		//Make a ajax call to submit the ratings
		
}
</script>


				<!-- Modal -->
<div class="modal fade in" id="editPic" role="dialog">
	<div class="modal-dialog">

  	   <!-- Modal content-->
	  <div class="modal-content">
	    <div class="modal-header">
	      <button type="button" class="close" data-dismiss="modal" style="width:10%">&times;</button>
	      <h4 class="modal-title" style="text-align:center;font-family:helvetica;font-size:20px">Please select a file to upload</h4>
	   	</div>
	   	<div class="modal-body">
	     
		<cfoutput >
			
		<form enctype="multipart/form-data" method="post" action=#event.buildLink("company.updatePage.updatePicture")#>
		
		  <div class="form-group">
			  <input type="file" name="fileUpload" /><br />
		 </div>
		  <div class="curent-user-view">
			<input type="hidden" name="eventCallee" value="#event.getCurrentEvent()#">	
		  </div>
		 <div class="form-group">
		  <select name="picturetype" class="required" id="pictureID">
	   			<option value="">Select Picture Type</option>
				<cfloop query="prc.companyData.data">
					<option>Executives#Designation#_#PictureID#</option>
				</cfloop>
				<option>Logo_#prc.logo.PictureUID#</option>
				<cfloop query="prc.imageGallery">
					<option>Image Gallery_#PictureUID#</option>
				</cfloop>
				<cfloop query="prc.companyData.Products">
					<option>Product_#PictureID#</option>
				</cfloop>
			 </select>
			 </div>
			
			 <button type="submit"> Upload File </button>
		  
		</form>
    	</div>
   		</cfoutput>	 
 	 </div>
  
	</div>
</div>

</cfoutput>