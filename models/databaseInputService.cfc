<cfcomponent output="false" >
	<cfproperty name="CBoxDS" inject = "coldbox:datasource:CBoxDS">
	<cfset dbResponse = {}>
	<cffunction name="insertUserData" access="public" output="true">
		<cfargument name="rc" type="struct" required="true" >
			<cfparam name="rc.introduction" type="string" default="This is a sample introduction">
			<cfparam name="rc.motto" type="string" default="Your company motto goes here">
			<cfparam name="rc.ProductMotto" type="string" default="Your product motto goes here">
			<!---salt and hash the passwords--->
			<cfset VARIABLES.salt = Hash(GenerateSecretKey("AES"), "SHA-512") /> 
			<cfset VARIABLES.hashedPassword = Hash(rc.password & VARIABLES.salt, "SHA-512") />
			<!---Set a dbResponse variable to report any database error--->
			<cfset dbResponse = {}>
			<!---Querries to input data into the Database--->
			<!---Querry to input data into Users.Details--->
			<cftransaction >
				
			<cfquery datasource="CBoxDS">
				INSERT INTO Users.Details
					(EmailAddress,Password,Salt,isActive,roleID)
				VALUES
					('#rc.email#','#VARIABLES.hashedPassword#','#VARIABLES.salt#',0,
						(SELECT roleID 
							FROM Users.Roles
					   	 WHERE RoleName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.account#" null="false" maxlength="20" >
						)
					)
			</cfquery>
			<!---Querry to select the userID--->
			<cfquery name="fetchUID" datasource="CBoxDS">
				SELECT uid
					FROM Users.Details
				WHERE EmailAddress = <cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.email#" null="false" maxlength="100">
			</cfquery>
			<!---Querry to input data into Users.Address--->
			<cfquery datasource="CBoxDS">
				INSERT INTO Users.Address
					(uid,StreetName,City,State,Country,AddressTypeID)
				VALUES
					(
						#fetchUID.uid#,
						(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.streetname#" null="false" maxlength="100">),
						(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.city#" null="false" maxlength="100">),
						(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.state#" null="false" maxlength="100">),
						(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.country#" null="false" maxlength="100">),
						(SELECT AddressTypeID 
							FROM Users.AddressType
						 WHERE AddressType = '#rc.addressType#'
						 )
					)
			</cfquery>
			
			<cfswitch expression="#rc.account#" >
				<cfcase value="User" >
					<!---Calculate the age--->
					<cfset VARIABLES.Age = calculateAge(rc.dob)>
					<cfquery datasource="CBoxDS">
						INSERT INTO Users.RegisteredUsersDetails
							(uid,FirstName,LastName,Gender,Phonenumber,Age)
						VALUES
							(
								#fetchUID.uid#,			
								(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.firstname#" maxlength="20" null="false">),
								(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.lastname#" maxlength="20" null="false">),
								(<cfqueryparam cfsqltype="cf_sql_char" value="#rc.gender#" maxlength="1" null="false">),
								(<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.phonenumber#" maxlength="10" null="false">),
								(<cfqueryparam cfsqltype="cf_sql_varchar" value="#VARIABLES.Age#" maxlength="2" null="false">)
							)
					</cfquery>	
				</cfcase>
				<cfcase value="Company">
					<cfquery datasource="CBoxDS">
						INSERT INTO Users.ComapnyDetails
							(cuid,CompanyName,PhoneNumber,CompanyTypeID,Introduction,Motto,ProductMotto)
						VALUES
							(
								#fetchUID.uid#,
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.companyname#" null="false" maxlength="20">,	
								<cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.phonenumber#" maxlength="10" null="false">,
								(
								 SELECT TypeID
									FROM Users.CompanyType
								 WHERE TypeName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#rc.companytype#" null="false" maxlength="50">
								),
								'#rc.introduction#',
								'#rc.motto#',
								'#rc.ProductMotto#'
							)
					</cfquery>
					<cfset resolvedLattLong = createObject("LocationService").getLattLong(fetchUID.uid)>
					<cfquery datasource="CBoxDS">
						INSERT INTO Users.CompanyProfileLocations
							(cuid,Lattitude,Longitude,StoreTypeID)
						VALUES
							(
								#fetchUID.uid#,
								#resolvedLattLong.lat#,
								#resolvedLattLong.lng#,
								(
									SELECT AddressTypeID
										FROM Users.Address
									WHERE uid = #fetchUID.uid#
								)		
							)	
					</cfquery>
					<cfquery datasource="CBoxDS" >
						INSERT INTO Users.ProfilePictures
							(uid,PictureName,PictureLocation,PictureTypeID)
						VALUES
							(#fetchUID.uid#,'Unknown Logo','add.png',1)
					</cfquery>
					<cfloop from="1" to="3" step="1" index="count">
						<cfquery datasource="CBoxDS" >
							INSERT INTO Users.ProfilePictures
								(uid,PictureName,PictureLocation,PictureTypeID)
							VALUES
								(#fetchUID.uid#,'Unknown Image Gallery','add_image.png',2)
						</cfquery>
					</cfloop>
					<cfloop from="1" to="3" step="1" index="count">
						<cfquery datasource="CBoxDS" >
							INSERT INTO Users.ProfilePictures
								(uid,PictureName,PictureLocation,PictureTypeID)
							VALUES
								(#fetchUID.uid#,'Unknown User','unknown-user.jpg',8)
						</cfquery>
						<cfquery datasource="CBoxDS" >
							INSERT INTO Users.CompanyExecutives
								(cuid,Description,Designation,Name,PictureId)
							VALUES
								(#fetchUID.uid#,'Description','Company Executive-#count#','Company_Executive_Name-#count#',
									(SELECT TOP 1 PictureUID
										FROM Users.ProfilePictures
									WHERE uid = #fetchUID.uid#
										ORDER BY PictureUID DESC
									)
								)	
						</cfquery>
					
					</cfloop>
				</cfcase>
			</cfswitch>
		</cftransaction>
		<cfreturn dbResponse>
	</cffunction>
	<cffunction name="calculateAge" access="public" returntype="String" >
		<cfargument name="dob" required="true" type="date">
			<cfreturn datediff("yyyy",dob,DateFormat(now(),"mm/dd/yyyy"))>
	</cffunction>
	<cffunction name="insertComment" access="public" returntype="Query" >
		<cfargument name="content" type="string" required="true" >
		<cfargument name="cuid" type="numeric" required="true" >
			<cftransaction>
			<cfquery datasource="CBoxDS" >
				INSERT INTO Users.Comments
					(uid,cuid,CommentTypeID,Comment,CreationDate)
				VALUES
					(#SESSION.uid#,#ARGUMENTS.cuid#,1,
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#ARGUMENTS.content#" maxlength="500" null="false" >,
					'#DateTimeFormat(now())#'	
					)
			</cfquery>
			<cfquery datasource="CBoxDS" name="response">
				SELECT TOP 1 Comment,CreationDate,FirstName,LastName
					FROM Users.Comments INNER JOIN Users.RegisteredUsersDetails
						ON Users.RegisteredUsersDetails.uid = Users.Comments.uid
				WHERE Users.Comments.uid = #SESSION.uid#
					AND
					Users.Comments.cuid = #ARGUMENTS.cuid#
				ORDER BY CommentId DESC
			</cfquery>
			</cftransaction>
			<cfreturn response>
	</cffunction>
</cfcomponent>