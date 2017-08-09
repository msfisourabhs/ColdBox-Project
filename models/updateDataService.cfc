<cfcomponent output="true" >

	<cffunction name="checkData" access="public" returntype="any" output="true" >
		<cfargument name="identifierFieldValue" required="false" type="numeric" >
		<cfargument name="field" required="true" type="String" >		   
		<cfargument name="fieldValue" required="true" type="String" >		   
		<cfset errorFlag = false>
		<cfset response = {}>
		<cfset requestType = 0>
		<cfset attribute = "">
		<cfset tableName = "">
		<cfset identifierField = "cuid">
		<cfscript>
			if(arraylen(field.Split("_")) NEQ 1)
				identifierFieldValue = field.Split("_")[2];
			field = field.Split("_")[1];
		
			switch(field){
				case "motto" : 
								attribute = "Motto";
								tableName = "Users.ComapnyDetails";
								break;
				case "introduction" : 
								attribute = "Introduction";
								tableName = "Users.ComapnyDetails";
								break;
				case "ExecutiveDesignation": 
								attribute = "Designation";
								tableName = "Users.CompanyExecutives";
								identifierField = "PictureId";
								break;
				case "ExecutiveName":
								attribute = "Name";
								tableName = "Users.CompanyExecutives";
								identifierField = "PictureId";
								break;
				case "ExecutiveDescription":
								attribute = "Description";
								tableName = "Users.CompanyExecutives";
								identifierField = "PictureId";
								break;
				case "ProductMotto"	:
								attribute = "ProductMotto";
								tableName = "Users.ComapnyDetails";
								break;
				case "ProductName" :
								attribute = "ProductName";
								tableName = "Users.CompanyProducts";
								identifierField = "PictureID";
								break;								
				case "ProductDescription" : 
								attribute = "Description";
								tableName = "Users.CompanyProducts";
								identifierField = "PictureID";
								break;
				case "ProductPrice" :
								attribute = "Price";
								tableName = "Users.CompanyProducts";
								identifierField = "PictureID";
								break;							
				default:
						errorFlag = true;
			}
			
		</cfscript>
		<cfif NOT errorFlag>
			<cfreturn updateData(attribute,tableName,fieldValue,identifierField,identifierFieldValue)>
		<cfelse>
			<cfreturn "Error Occurred">
		</cfif>
	</cffunction>
	<cffunction name="updateData" returntype="query" access="public" output="true" >
		<cfargument name="attribute" required="true" type="string" >
		<cfargument name="tableName" required="true" type="string" >
		<cfargument name="fieldValue" required="true" type="String" >		   
		<cfargument name="identifierField" required="false" type="String" default="">
		<cfargument name="identifierFieldValue" required="false" type="String" default="">
			<cfquery datasource="CBoxDS" >
				UPDATE #ARGUMENTS.tableName#
					SET #ARGUMENTS.attribute# = '#ARGUMENTS.fieldValue#'
				WHERE #ARGUMENTS.identifierField# = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.identifierFieldValue#" maxlength="10" null="false"> 
				AND 
					cuid = #session.uid#
			</cfquery>
		<!---
		<cfelse>
			<cfquery datasource="CBoxDS" >
				UPDATE #ARGUMENTS.tableName#
					SET #ARGUMENTS.attribute# = '#ARGUMENTS.fieldValue#'
				WHERE 
					cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.cuid#" maxlength="100" null="false"> 
				AND
					#ARGUMENTS.helperField# = #ARGUMENTS.helperFieldValue#
			</cfquery>
		
		</cfif>
		---->
		
		<cfquery name="response" datasource="CBoxDS" >
			SELECT #ARGUMENTS.attribute#
				FROM #ARGUMENTS.tableName#
			WHERE #ARGUMENTS.identifierField# = #ARGUMENTS.identifierFieldValue#
		</cfquery>
		
		<cfreturn response>
	</cffunction>
	<!----
	<cffunction name="insertData" returntype="query" access="public" >
		<cfargument name="cuid" required="true" type="numeric" >
		<cfargument name="attribute" required="true" type="string" >
		<cfargument name="tableName" required="true" type="string" >
		<cfargument name="fieldValue" required="true" type="String" >		   
		<cfdump var="#arguments#">		
			<cfquery datasource="CBoxDS">
					INSERT INTO #ARGUMENTS.tableName#
						(cuid,#ARGUMENTS.attribute#)
					VALUES
						(#ARGUMENTS.cuid#,'#ARGUMENTS.fieldValue#')	
			</cfquery>
			<cfquery datasource="CBoxDS" name="response">
				SELECT #ARGUMENTS.attribute#
					FROM #ARGUMENTS.tableName#
				WHERE cuid = #ARGUMENTS.cuid# 
			</cfquery>		
		<cfreturn response>	
				
	</cffunction>
	--->
	<cffunction name="insertReply" access="public" returntype="query" >
		<cfargument name="content" required="true" type="string">
		<cfargument name="ReplyID" required="true" type="String" >
		<cftransaction>
		<cfquery datasource="CBoxDS">
			INSERT INTO Users.Comments
					(uid,cuid,CommentTypeID,Comment,CreationDate)
				VALUES
					(
						(
							SELECT uid
								FROM Users.Comments
							WHERE CommentId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.ReplyID#" maxlength="10" null="false" > 
						),
					#SESSION.uid#,2,
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.content#" maxlength="500" null="false" >,
					'#DateTimeFormat(now())#'	
					)
		</cfquery>
		<cfquery datasource="CBoxDS" >
			UPDATE Users.Comments
				SET ReplyId = (SELECT TOP 1 CommentId
								FROM Users.Comments
									WHERE cuid = #SESSION.uid#
								ORDER BY CommentId DESC)
			WHERE CommentId = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.ReplyID#" maxlength="10" null="false" > 
		</cfquery>
		<cfquery datasource="CBoxDS" name="response">
			SELECT TOP 1 Comment
			FROM Users.Comments
				WHERE cuid = #SESSION.uid#
					AND
				CommentTypeID = 2
			ORDER BY CommentId DESC
		</cfquery>
		</cftransaction>
		<cfreturn response>
	</cffunction>
</cfcomponent>
