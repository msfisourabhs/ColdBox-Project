<cfcomponent >
	<cffunction name="getCompanyData" access="public" returntype="struct" >
		<cfargument name="cuid" required="true" type="string" >
		<!---Append all data to this struct and retrun it--->
		<cfset companyData = {}>
		<!---Fetch various data related to company--->
		<!--- Fetch Email Address from Users.Details--->
		<!--- StreetName,City,State,Country from Users.Address--->
		<!--- CompanyName,Introduction,Ratings from Users.ComapnyDetails--->
		<!--- Lattitude,Longitude from Users.CompanyProfileLocations--->
		
		<!---ADVICE Try to replace all the querries to a single join querry--->
		<cfquery name="registeredData" datasource="CBoxDS" result="fetchCompany">
			SELECT EmailAddress,StreetName,City,State,Country,CompanyName,PhoneNumber,
					Introduction,Ratings,Lattitude,Longitude,Motto,ProductMotto
				FROM Users.Details
					INNER JOIN Users.Address ON Users.Details.uid = Users.Address.uid
					INNER JOIN Users.ComapnyDetails ON Users.ComapnyDetails.cuid = Users.Details.uid
					INNER JOIN Users.CompanyProfileLocations ON Users.CompanyProfileLocations.cuid = Users.Details.uid
					
			WHERE 
				Users.CompanyProfileLocations.StoreTypeID = 2 
				AND 
				Users.Details.uid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
			
		</cfquery>
		
		<!---Fetch ProductName,Description,Price from Users.CompanyProducts--->
		<cfquery name="fetchProducts" datasource="CBoxDS">
			SELECT ProductName,Description,Price,PictureLocation,PictureName,PictureID		
				FROM Users.CompanyProducts
				INNER JOIN Users.ProfilePictures ON Users.CompanyProducts.PictureID = Users.ProfilePictures.PictureUID
			WHERE cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
		</cfquery>
		<!---fetch Facebook,Youtube,LinkedIn,Twitter from Users.CompanyProfileSocial--->
		<cfquery name="fetchSocial" datasource="CBoxDS">
			SELECT Facebook,Youtube,LinkedIn,Twitter
				FROM Users.CompanyProfileSocial
			WHERE cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
		</cfquery>
		<!---fetch  from Users.CompanyAdditionalData--->
		<cfquery name="fetchExecutives" datasource="CBoxDS" >
			SELECT Description,Designation,Name,PictureName,PictureLocation,PictureId
				FROM Users.CompanyExecutives 
					INNER JOIN Users.ProfilePictures ON Users.ProfilePictures.PictureUID = Users.CompanyExecutives.PictureId
			WHERE cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
				
		</cfquery>
		<!---fetch all the comments for the company--->
		<cfquery datasource="CBoxDS" name="fetchComments">
			SELECT FirstName,LastName,CommentId,ReplyId,CommentTypeID,Comment,CreationDate,cuid,Users.RegisteredUsersDetails.uid
				FROM Users.Comments INNER JOIN Users.RegisteredUsersDetails 
					ON Users.RegisteredUsersDetails.uid = Users.Comments.uid
			WHERE Users.Comments.cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
				AND
				 Users.Comments.CommentTypeID = 1
			ORDER BY Users.RegisteredUsersDetails.uid
		</cfquery>
		<!---Fetch all replies for the company--->
		<cfquery datasource="CBoxDS" name="fetchReplies">
			SELECT CommentId,Comment,CreationDate
				FROM Users.Comments  
			WHERE Users.Comments.cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false">
				AND
				Users.Comments.CommentTypeID = 2	
			ORDER BY uid
		</cfquery>	
		<!---If all the querries were successful than append all the data to companyData--->
		<cfset StructInsert(companyData,"registeredData",registeredData)>
		<cfset StructInsert(companyData,"Products",fetchProducts)>
		<cfset StructInsert(companyData,"Social",fetchSocial)>
		<cfset StructInsert(companyData,"Data",fetchExecutives)>
		<cfset StructInsert(companyData,"Comments",fetchComments)>
		<cfset StructInsert(companyData,"Replies",fetchReplies)>
		<cfreturn companyData>
	</cffunction>
	<cffunction name="getCompanyPictures" access="public" returntype="query" >
		<cfargument name="cuid" required="true" type="string" > 
		<cfargument name="pictureTypeID" required="true" type="numeric" >
		
			<cfquery name="fetchPicture" datasource="CBoxDS" >
				SELECT PictureLocation,PictureUID
					FROM  Users.ProfilePictures
				WHERE 
					uid = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.cuid#" maxlength="10" null="false" >
				AND
					PictureTypeID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.pictureTypeID#" maxlength="10" null="false" >
			</cfquery>
			<cfreturn fetchPicture>
	</cffunction>
	<cffunction name="listOfCompanies" access="public" returntype="query" >
		<cfquery datasource="CBoxDS" name="fetchCompanies">
			SELECT CompanyName,cuid,TypeName
				FROM Users.ComapnyDetails INNER JOIN Users.CompanyType 
					ON Users.CompanyType.TypeID = Users.ComapnyDetails.CompanyTypeID

			
		</cfquery>
		<cfreturn fetchCompanies>
	</cffunction>
	<cffunction name="companyExsist" access="public" returntype="boolean" >
		<cfargument name="cuid" required="true" type="numeric" >
				<cfquery datasource="CBoxDS" result="fetchCompany">
					SELECT cuid
						FROM Users.ComapnyDetails
					WHERE cuid = <cfqueryparam cfsqltype="cf_sql_integer" value="#ARGUMENTS.cuid#" maxlength="10" null="false" > 
				</cfquery>
				<cfif fetchCompany.RecordCount NEQ 0>
					<cfreturn true>
				<cfelse>
					<cfreturn false>
				</cfif>	
	</cffunction>
</cfcomponent>