<cfcomponent>
	<cffunction name="authenticateUser" access="public" returntype="Struct" >
		<cfargument name="email" type="string" required="true">
		<cfargument name="password" type="string" required="true">
		<cfset loginResponse = {}>
		<cfset errorCode = "">
		<!---Fetch the salt for emailID--->
			<cfquery name = "nmFetchSalt" result = "resFetchSalt" datasource="CBoxDS" >
				SELECT Salt
				FROM Users.Details
				WHERE EmailAddress = <cfqueryparam cfsqltype = "cf_sql_varchar" null = "false" maxlength = "60" value = "#email#"> 
				
			</cfquery>
			<cfif resFetchSalt.recordCount NEQ 0>	
				<cfset LOCAL.hashedPassword = Hash(password & nmFetchSalt.Salt, "SHA-512")>
				<cfquery name = "nmLoginActivity" result = "rsLoginActivity" datasource="CBoxDS" >
					SELECT uid , isActive , roleID
					FROM Users.Details
					WHERE EmailAddress = <cfqueryparam cfsqltype = "cf_sql_varchar" null = "false" maxlength = "60" value = "#email#"> 
						AND 
					Password = '#LOCAL.hashedPassword#'
				</cfquery>	
				<cfif rsLoginActivity.recordCount EQ 1>
					<cfif #nmLoginActivity.isActive# EQ 0>
						<cfquery datasource="CBoxDS" >
							UPDATE Users.Details
							SET isActive = 1 
							WHERE uid = #nmLoginActivity.uid#
						</cfquery>
						
					<cfelse>
						<cfset VARIABLES.errorCode = "Suspicious login detected">			
					</cfif>
				<cfelse>
					<cfset VARIABLES.errorCode = "Invalid Username/Password">		
				</cfif>
			<cfelse>	
				<cfset VARIABLES.errorCode = "Invalid Username/Password">		
			</cfif>
		<cfset StructInsert(loginResponse,"error",VARIABLES.errorCode)>
		<cfset StructInsert(loginResponse,"uid",#nmLoginActivity.uid#)>
		<cfset StructInsert(loginResponse,"roleID",#nmLoginActivity.roleID#)>
		<cfreturn loginResponse>
	</cffunction>
	
	<cffunction name="deAuthenticateUser" access="public" returntype="struct" >
		<cfquery datasource="CBoxDS" >
			UPDATE Users.Details
				SET isActive = 0
			WHERE uid = #SESSION.uid#
		</cfquery>
		<cfset StructClear(Session)>
		<cfset SessionInvalidate()>
		<cfreturn Session>
	</cffunction>
	
</cfcomponent>