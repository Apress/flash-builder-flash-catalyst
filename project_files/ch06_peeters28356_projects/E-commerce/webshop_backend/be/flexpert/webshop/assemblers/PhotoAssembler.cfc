<cfcomponent output="false" persistent="false">

	<cffunction name="getAllPhotos" returntype="Array" access="remote">
		<cfreturn EntityLoad("Photo")/>
	</cffunction>
	
	<cffunction name="findPhotosByCategory" returntype="Array" access="remote">
		<cfargument name="category" type="string" required="true">
		<cfreturn EntityLoad("Photo", {category="#UCase(category)#"})/>
	</cffunction>

</cfcomponent>