/*	Filename 		: 	userRegister.js
 	Functionality	:	Adds client side validation of fields
 						Provides dynamic dropdowns and error checking for fields
 						Post form data using Ajax for server side validation  
	Creation Date	:	‎June ‎22, ‎2017, ‏‎2:42:59 PM
*/
window.onload = addHandlers();
	
function addHandlers()
{
	var firstName = document.getElementById("firstname");
	firstName.addEventListener("blur",checkWord);	
	firstName.addEventListener("focus",clearErrors);

	var lastName = document.getElementById("lastname");
	lastName.addEventListener("blur",checkWord);
	lastName.addEventListener("focus",clearErrors);

	var pass = document.getElementById("password");
	pass.addEventListener("focus" , clearErrors);
	pass.addEventListener("blur" , checkEmptyAndSpaces);
	
	
	var pno = document.getElementById("phoneno");
	pno.addEventListener("blur",checkNumber);
	pno.addEventListener("focus",clearErrors);
	
	var city = document.getElementById("city");
	city.addEventListener("blur",checkWord);
	city.addEventListener("focus",clearErrors);

	var email = document.getElementById("email");
	email.addEventListener("blur",checkEmail);
	email.addEventListener("focus",clearErrors);

	var country = document.getElementById("country");
	country.addEventListener("blur",checkEmptyAndSpaces);
	country.addEventListener("focus",clearErrors);

	var state = document.getElementById("state");
	state.addEventListener("blur",checkEmptyAndSpaces);
	state.addEventListener("focus",clearErrors);
	
	return;
}
function checkWord()
{
	var value = this;
	if(checkEmptyAndSpaces.call(this))
		return;
	var counter=0;
	var len = this.value.length;
	for(var iterator=0 ; iterator<len; iterator++)
	{
		var unicode = this.value.charCodeAt(iterator);
		if((unicode >= 65 && unicode <=90) || (unicode >= 97 && unicode <= 122))
				counter++;
	}
	
	if(counter !== len)
		generateErrors("Name field dosen't contain letters",this);
			
	return;
}
function checkPass()
{
	var value = this;
	var pass = document.getElementsByName("user_password");
	var cpass = document.getElementsByName("user_confirm_password");
	checkEmptyAndSpaces.call(this);
	if(pass[0].value !== cpass[0].value)
		generateErrors("Passwords do not match",pass[0]);		

	return;
	
}
function checkNumber()
{
	
	var value = this;
	var counter = 0;
	var len = this.value.length;
	var pno = document.getElementsByName("phoneno");
	var pnoalt = document.getElementsByName("phonenoAlt");
	
	if(checkEmptyAndSpaces.call(this))
		return;
	if(len < 10 && len > 0)
		generateErrors("Field cannot be less than 10 digits" , this);
	else if(pno[0].value === pnoalt[0].value && len > 0)
		generateErrors("Number should be different form primary number",pnoalt[0]);
	else
	{
		for(var iterator = 0; iterator<len ; iterator++)
		{
			
			var unicode = this.value.charCodeAt(iterator);
			if(unicode >=48 && unicode <= 57)
				counter++;
		}
		if(counter !== len)
			generateErrors("Phone Number does not contain numbers",this);
		
	}
	
	return;
}
function checkEmail()
{
	var value = this;
	
	if(checkEmptyAndSpaces.call(this))
		return;
	var counter_d=0,counter_p=0;
	var val = this.value;
	var atloc = val.indexOf("@");
	var charAllowed = ["!","#","$","%","&","'","*","+","-","/","=","?","^","_","`","{","}","|","~"];
	if(atloc === 0 || atloc === val.length-1 || atloc !== val.lastIndexOf("@") || atloc === -1)
	{
		generateErrors("Invalid Email Address",this);
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
		generateErrors("Invalid Email Address",this);
	
	
	
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
		
	return;
}

function clearErrors()
{
	var fieldsets = document.getElementsByTagName('fieldset');
	for(var i =0 ; i<fieldsets.length;i++)
	{
		for(var j =0;j<fieldsets[i].childElementCount;j++)
		{
			if(fieldsets[i].children[j] === this)
			{			
                if(fieldsets[i].children[j].previousElementSibling.classList.contains("errors"))
					fieldsets[i].children[j].previousElementSibling.remove();
			}
		}
	}
	return;
}

function validate()
{
	
	var counter = 0;
	var labels = document.getElementsByTagName('label');
	var inputs = document.getElementsByTagName("input");
	for(var iterator = 0;iterator<inputs.length;iterator++)
	{
		clearErrors.call(inputs[iterator]);
		checkEmptyAndSpaces.call(inputs[iterator]);
	}
	for(var iterator = 0;iterator<labels.length;iterator++)
	{
		if(labels[iterator].classList.contains("required"))
		{
			if(labels[iterator].nextElementSibling.classList.contains("errors"))
				counter++;
		}
	}
	
	if(counter === 0 )
	{
		
		alert("Data was submitted" );
		return true;
		
	}
	else
	{
		document.getElementById("errorBox").innerHTML = "There were errors in your submission";
		document.getElementById("errorBox").setAttribute("class","errorBox");
		document.body.scrollTop = "0";
	
		return false;
	}
	
}

function checkEmptyAndSpaces()
{
	
	var fieldValue = this.value;
	var len = this.value.length;
	var temp = "";
	for(iterator = 0 ; iterator < len ; iterator++)
	{
		if(fieldValue.charAt(iterator) !== " ")
			temp +=  fieldValue.charAt(iterator).toString();
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
    


