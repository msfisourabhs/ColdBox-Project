  

  <h1>Registration</h1>
  <cfoutput >
  	
  <form method="post" action=#event.buildLink("Main.registerAction")# id="form-register" style="width:300px">
  
  </cfoutput>
      <hr>
    <div id="accounttype" >
      <input type="radio" value="User" id="radioOne" name="account" onclick="displayAccountTypeContent(0)" checked>
      <label for="radioOne" class="radio" checked>Personal</label>
      <input type="radio" value="Company" id="radioTwo" name="account" onclick="displayAccountTypeContent(1)">
      <label for="radioTwo" class="radio">Company</label>
    </div>
  <hr>
  <div class="form-content">
	  <label id="icon" for="email"><i class="icon-envelope "></i></label>
	  <input type="text" name="email" id="email" placeholder="Email" required/>
	  <label id="icon" for="name"><i class="icon-user"></i></label>
	  <input type="text" name="firstname" id="firstname" placeholder="First Name" required/>
	  <label id="icon" for="lastname"><i class="icon-user"></i></label>
	  <input type="text" name="lastname" id="lastname" placeholder="Last Name" required/>
	  <label id="icon" for="name"><i class="icon-shield"></i></label>
	  <input type="password" name="password" id="password" placeholder="Password" required/>
	  <label id="icon" for="date-of-birth"><i class="icon-calendar"></i></label>
	  <input type="date" name="dob" id="dob" required>
	  
	   <label id="icon" for="streetname"><i class="icon-road"></i></label>
	   <input type="text" name="streetname" id="streetname" placeholder="Street Name" required>
	   <label id="icon" for="City"><i class="icon-map-marker"></i></label>
	   <input type="text" name="city" id="city" placeholder="City " required>
	   
	   <label id="icon" for="state"><i class="icon-map-marker"></i></label>
	   <input type="text" name="state" id="state" placeholder="State " required>
	   
	   <label id="icon" for="country"><i class="icon-map-marker"></i></label>
	   <input type="text" name="country" id="country" placeholder="Country " required>
	   
	   <label id="icon" for="phoneno"><i class="icon-phone"></i></label>
	   <input type="text" name="phonenumber" id="phoneno" placeholder="Phone Number" required>
	   <div class="company-type" style="padding-top:20px;hidden:true;display:none">
		   <label id="icon" for="CompanyType"><i class="icon-shiled"></i></label>
	         <select name="companytype" class="required" id="companyID" disabled required>
	   			<option value="">Select Company Type</option>
				<option>IT</option>
				<option>TEXTILES</option>
				<option>STEEL</option>
				<option>AGRICULTURE</option>
			 </select>
		</div>
	   <input type="hidden" id="addressID" name="addressType" value="Home">
	  <div class="gender">
	    <input type="radio" value="M" id="male" name="gender" checked/>
	    <label for="male" class="radio" chec>Male</label>
	    <input type="radio" value="F" id="female" name="gender" />
	    <label for="female" class="radio">Female</label>
	   </div>
	   <div class="form-footer" style="margin-top:30px">
		   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
		   <button type="submit">Register</a>
		</div> 	
	  </form>
	  
   </div>
<script>
	
	function displayAccountTypeContent(accountType){
		//check for the type of account
		console.log(accountType);
		if (accountType === 1) {
			//if company type remove lastname and add company name
			$("#lastname").prev().css("hidden","true");
			$("#lastname").prev().css("display","none");
			
			$("#lastname").css("hidden","true");
			$("#lastname").css("display","none");
			$("#lastname").attr("disabled","true");
			
			$("#firstname").attr("placeholder", "Company Name");
			$("#firstname").attr("name","companyname");
			$("#firstname").attr("id","companyname");
		
			$("#dob").prev().css("hidden","true");
			$("#dob").prev().css("display","none");
			
			$("#dob").css("hidden","true");
			$("#dob").css("display","none");
			$("#dob").attr("disabled","true");
			
			$(".gender").css("hidden","true");
			$(".gender").css("display","none");
			$(".gender>input").attr("disabled","true");
			
			$("div.company-type").css("hidden","false");
			$("div.company-type").css("display","block");
			$("div.company-type>select").removeAttr("disabled");
			
			$("#addressID").val("HQ");
		}
		else
		{
			//if personal account type
			//Add Last Name and change company name to firstname
			$("#companyname").attr("placeholder", "First Name");
			$("#companyname").attr("name","firstname");
			$("#companyname").attr("id","firstname");
			
			
			$("#lastname").css("hidden","false");
			$("#lastname").css("display","inline-block");
			$("#lastname").removeAttr("disabled");
			
			$("#lastname").prev().css("hidden","false");
			$("#lastname").prev().removeAttr("style");
			
			
			$("#dob").prev().css("hidden","false");
			$("#dob").prev().removeAttr("style");
			
			$("#dob").css("hidden","false");
			$("#dob").css("display","inline-block");
			$("#dob").removeAttr("disabled");	
			
			
			$(".gender").css("hidden","false");
			$(".gender").removeAttr("style");
			$(".gender>input").removeAttr("disabled");
			
			$("div.company-type").css("hidden","true");
			$("div.company-type").css("display","none");
			$("div.company-type>select").attr("disabled","true");
			
			$("#addressID").val("Home");
		}
	}
	
</script>