﻿<h1>Login</h1>
<cfoutput >
<form id="form-login" role="form" action=#event.buildLink("user.login.doLogin")# method="post">
</cfoutput>

    <div class="form-group">
      <label for="email"><span class="glyphicon glyphicon-user"></span>Email Address</label>
      <input type="email" class="form-control required" name="email" id="email" placeholder="Email Address">
    </div>
    <div class="form-group">
      <label for="password"><span class="glyphicon glyphicon-lock"></span> Password</label>
      <input type="password" class="form-control required" name="password"id="password" placeholder="Password">
    </div>
	<div class="curent-user-view">
		<cfoutput >
			<input type="hidden" name="eventCallee" value="#event.getCurrentEvent()#">	
		</cfoutput>
	</div>
      <button type="submit" class="btn btn-block">Login 
        <span class="glyphicon glyphicon-log-in""></span>
      </button>
 </form>
<script>
window.onload = addHandler();	
function addHandler(){
	var email = document.getElementById("email");
	email.addEventListener("blur", checkEmail);
	email.addEventListener("focus", clearErrors);
	
	var password = document.getElementById("password");
	password.addEventListener("blur", checkPass);
	password.addEventListener("focus", clearErrors);
}
function checkPass()
{
	checkEmptyAndSpaces.call(this);
	
	return;
	
}
function checkEmail()
{
	
	if(checkEmptyAndSpaces.call(this))
		return;
	var counter_d=0,counter_p=0;
	var val = this.value;
	var atloc = val.indexOf("@");
	var charAllowed = ["!","#","$","%","&","'","*","+","-","/","=","?","^","_","`","{","}","|","~"];
	if(atloc === 0 || atloc === val.length-1 || atloc !== val.lastIndexOf("@") || atloc === -1)
	{
		generateErrors("Email address is not valid",this);
		return;
	}
	var personalInfo = val.split("@")[0];
	var domainInfo = val.split("@")[1];
	var checkPinfo = function(){
		for(var iterator = 0 ; iterator<personalInfo.length ; iterator++)
		{
			var unicode = personalInfo.charCodeAt(iterator);
		
			if((unicode >= 65 && unicode <=90) || (unicode >= 97 && unicode <= 122) || (charAllowed.indexOf(personalInfo[iterator]) !== -1) || (unicode>=48 && unicode<=57))
			
				counter_p++;
			
			if(unicode === 46)
			{
				
				if(iterator !== 0 && iterator !== personalInfo.length-1 && personalInfo[iterator+1] !== ".")
					counter_p++;	
			}
		}
		if(counter_p !== personalInfo.length)
			return false;
		else
			return true;
	};
	
	
	var checkDinfo = function(){
		for(var iterator = 0 ; iterator<domainInfo.length ; iterator++)
		{
			var unicode = domainInfo.charCodeAt(iterator);
			if((unicode >= 65 && unicode <=90) || (unicode >= 97 && unicode <= 122) || (unicode === 45) || (unicode>=48 && unicode<=57))
				counter_d++;
			
			if(unicode === 46)
			{
				if(iterator !== 0 && iterator !== domainInfo.length-1 && (domainInfo[iterator+1] !== ".") &&iterator !== domainInfo.length-2 && (domainInfo[iterator+2] !== "."))
					counter_d++;
			}
			
		
		}
		if(counter_d !== domainInfo.length)
			return false;
		else
			return true;
	};
	
	if(checkDinfo() === false || checkPinfo() === false)
		generateErrors("Email address is not valid",this);
	
	
	var value = this;
	
	/*$.getJSON('../components/fieldValidationService.cfc?method=validateMail&fieldvalue=' + value.value +'&field=email_address', function(result)
	{	
		for (var key in result) 
		{
			if(result[key] !== value.previousElementSibling.innerHTML && result[key] !== "")
				generateErrors(result[key], value);	
		}
	});
		
	*/
	return;
}
function generateErrors(errormssg,name)
{
	var em = document.createElement("p");
	if(name.classList.contains("required") && errormssg.length === 0)
		em.appendChild(document.createTextNode("This field cannot be empty"));
	else	
		em.appendChild(document.createTextNode(errormssg));
	
	name.insertAdjacentElement('beforebegin',em);
	em.setAttribute("class" , "errors");
	em.style.color = "red";	
	return;
}

function clearErrors()
{
	if(this.previousElementSibling.classList.contains("errors"))
		this.previousElementSibling.remove();
	
	return;
}

function checkEmptyAndSpaces()
{
	
	var val = this.value;
	var len = this.value.length;
	var temp = "";
	for(iterator = 0 ; iterator < len ; iterator++)
	{
		if(val.charAt(iterator) !== " ")
			temp +=  val.charAt(iterator).toString();
	}
	this.value = temp;
	if(temp.length === 0)
	{	
		generateErrors("",this);
		return true;
	}
	else
		return false;
	
}
    
function getErrorMessages(name)
{
	var error = $("input");
	var len = error.length;
	for (iterator = 0; iterator < len; iterator++) 
	{
		if (error[iterator].getAttribute("name") === name) {
			return error[iterator];
			console.log(error[iterator].innerHTML());
		}
	}
}

</script>