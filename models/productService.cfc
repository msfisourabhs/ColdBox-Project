<cfcomponent>
	<cffunction name="addProduct" access="public" returntype="Any" >
		<cfargument name="rc" type="Struct" required="true" >
		<!---save the new file--->
		<cftry>
			<cfif len(trim(rc.fileUpload))>
				  <cffile action="upload"
				     fileField="fileUpload"
				     destination="C:\ColdFusion10\cfusion\wwwroot\Projects\CBox\includes\images\uploads"
					accept="image/jpg,image/png,image/jpeg"
					result="uploadResponse">
				</cfif>
			<cfcatch name="errorResponse" type="any" >
				<cfreturn errorResponse.Detail>
			</cfcatch>
			</cftry>
			<cftransaction>	
			<!---Update the new file in the database--->
				<cfquery datasource="CBoxDS" >
					INSERT INTO Users.ProfilePictures
						(uid,PictureName,PictureLocation,PictureTypeID)
					VALUES
						(#Session.uid#,'#uploadResponse.serverfilename#','uploads/#uploadResponse.serverfile#',9)
				</cfquery>
			<!--- add new product into the database--->
				<cfquery datasource="CBoxDS" >
					INSERT INTO Users.CompanyProducts
						(cuid,ProductName,Description,Price,PictureID)
					VALUES
						(#Session.uid#,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.productname#" maxlength="100" null="false" >,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.productdescription#" maxlength="200" null="false">,
						<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.productprice#" maxlength="5" null="false" >,
							(
							SELECT TOP 1 PictureUID
								FROM Users.ProfilePictures
							WHERE uid = #Session.uid#
								ORDER BY PictureUID DESC
							)					
						)
				</cfquery>
				<cfquery datasource="CBoxDS" result="response">
					SELECT TOP 1 ProductName,Description,Price,PictureID
					FROM Users.CompanyProducts
					WHERE cuid = #Session.uid#
					ORDER BY PictureID DESC 
				</cfquery>
				</cftransaction>
			
				
		<cfreturn response>
	</cffunction>
</cfcomponent>