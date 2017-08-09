<cfcomponent>
	<cffunction name="uploadPicture" access="public" returntype="ANY" >
		<cfargument name="fileUpload" type="any" required="false" >		
		<cfargument name="fileType" type="string" required="true" >
		<cfparam name="fileUpload" default="">
		<cfset fileIdentifier = fileType.Split("_")[2]>
		<!---Grab the file location for the older file--->
		<cfquery datasource="CBoxDS" name="fetchFileName">
			SELECT PictureLocation,PictureName
				FROM Users.ProfilePictures
			WHERE PictureUID = #fileIdentifier#
		</cfquery>
		<!---Delete the older file--->
		<cfif fetchFileName.PictureName NEQ "unknown-user" OR fetchFileName.PictureName EQ "add" OR fetchFileName.PictureName EQ "add_image">
			<cffile action="delete" file="C:\ColdFusion10\cfusion\wwwroot\Projects\CBox\includes\images\#fetchFileName.PictureLocation#">
		</cfif>
		<!---Save the new file--->
		<cftry>
			<cfif len(trim(arguments.fileUpload))>
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
		<!---Update the new file in the database--->
		<cfquery datasource="CBoxDS" >
			
			UPDATE Users.ProfilePictures
			SET 
				PictureName = '#uploadResponse.serverfilename#' ,
				PictureLocation = 'uploads/#uploadResponse.serverfile#' 
			WHERE 
				uid = #Session.uid# 
				AND
				PictureUID = #fileIdentifier#
		</cfquery>
		<cfreturn uploadResponse>
	</cffunction>
	
</cfcomponent>