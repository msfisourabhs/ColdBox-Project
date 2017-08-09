<cfcomponent output="true">
	<cffunction name="getLattLong" access="remote" returntype="Struct" returnformat="JSON" >
		<cfargument name="uid" required="true" type="string">
			<cfquery name="fetchUserAddress" datasource="CBoxDS">
				SELECT StreetName,City,State,Country
					FROM Users.Address
				WHERE uid = #ARGUMENTS.uid#
			</cfquery>
			<cfset address = fetchUserAddress.StreetName & fetchUserAddress.City & fetchUserAddress.State & fetchUserAddress.Country>
			<cfset urlRequest = "https://maps.googleapis.com/maps/api/geocode/json?address="&#address#&"&key=AIzaSyDIPe8u1CUa5pyOIS4vr4KHjVQhMnl_lDc">
			<cfhttp result="googleMapsResponse" url="#urlRequest#" method="GET">
			<cfset latlonJSON="#deserializeJSON(googleMapsResponse.fileContent)#">
			<cfdump var="#deserializeJSON(googleMapsResponse.fileContent)#">
			<cfreturn "#latlonJSON.results[1].geometry.location#">
	</cffunction>
</cfcomponent>