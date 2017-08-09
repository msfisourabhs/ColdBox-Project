<!----
	Filename 		: 	registrationService.cfc
 	Functionality	:	Server side validation of form data
 						Creation of a validationToken per specific form submit
	Creation Date	:	July ‎2 ,  ‎2017 ,  ‏‎11:52:25 AM

--->

<cfcomponent extends = "fieldValidationService" hint = "validates form data recived via AJAX" output = "true" >
	
	<cffunction name = "registerAction" access = "public" returntype = "struct" hint = "function validates form fields">
		<cfargument name="rc" required="true" type="struct">
		<cfset LOCAL.strModAndError = {}>	
			<cfif rc.account EQ "User">
				<cfset StructAppend(LOCAL.strModAndError , validateName(rc.firstname , "firstname"))>
			
				<cfset StructAppend(LOCAL.strModAndError , validateName(rc.lastname , "lastname"))>
			<cfelse>
				<cfset StructAppend(LOCAL.strModAndError , validateName(rc.companyname , "companyname"))>
			</cfif>
			
				<cfset StructAppend(LOCAL.strModAndError , validateMail(rc.email , "email"))>
				<cfset StructAppend(LOCAL.strModAndError , validateNumber(rc.phonenumber , "phonenumber"))>
	
		
				<cfset StructAppend(LOCAL.strModAndError , validateName(rc.city , "city"))>
				<cfif NOT checkEmptyAndSpaces(rc.country , "country")>
					<cfset StructInsert(LOCAL.strModAndError , "country="&rc.country , "")>
				<cfelse>
					<cfset StructInsert(LOCAL.strModAndError , "country=" , "This field cannot be empty")>
				</cfif>
				
				<cfif NOT checkEmptyAndSpaces(rc.state , "state")>
					<cfset StructInsert(LOCAL.strModAndError , "state="&rc.state , "")>
				<cfelse>
					<cfset StructInsert(LOCAL.strModAndError , "state=" , "This field cannot be empty")>
				</cfif>
				<cfset LOCAL.counter = 0>
				<cfset LOCAL.structLength = 0>
					
				<cfloop collection="#LOCAL.strModAndError#" item="key">
					<cfset LOCAL.temp = key.Split("=")>
					<cfset LOCAL.field = temp[1]>
					<cfif arrayLen(LOCAL.temp) EQ 2>
						<cfset LOCAL.fieldValue = LOCAL.temp[2]>
					<cfelse>
						<cfset LOCAL.fieldValue = "">
					</cfif>
					<cfset StructUpdate(rc , LOCAL.field , LOCAL.fieldValue)>
					<cfif LOCAL.strModAndError[key] EQ "">
						<cfset LOCAL.counter = LOCAL.counter + 1>
					</cfif>	
					<cfset LOCAL.StructLength = LOCAL.StructLength + 1>
				</cfloop>
				<cfif LOCAL.counter EQ LOCAL.structLength>
					<cfset StructInsert(LOCAL.strModAndError,"validationToken",generateValidationToken(rc))>			
				</cfif>			
						
	<cfreturn strModAndError>		
	</cffunction>
	<cffunction name = "generateValidationToken" access = "private" returntype = "String" hint = "generates validation token">
		<cfargument name="rc" required="true" type="struct" >
		<cfset LOCAL.formDataToHash = "">
		<cfset LOCAL.arrayFieldValues = StructKeyArray(rc)>
		<cfset #ArraySort(LOCAL.arrayFieldValues , "text")#>
		<cfloop array = "#LOCAL.arrayFieldValues#" index = "fieldValue">
			<cfif fieldValue NEQ "method" AND fieldValue NEQ "captchainput">
				<cfset LOCAL.formDataToHash = LOCAL.formDataToHash & rc[fieldValue]>	
			</cfif>
			</cfloop>
		<cfreturn Hash(LOCAL.formDataToHash , "SHA-512" )>
		
	</cffunction>
	
</cfcomponent>