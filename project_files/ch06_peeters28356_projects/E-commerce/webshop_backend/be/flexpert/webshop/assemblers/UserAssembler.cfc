<cfcomponent output="false" persistent="false">

	<cffunction name="getUser" returntype="be.flexpert.webshop.dtos.User" access="remote">
		<cfargument name="id" type="string" required="true" />
		
		<cfreturn EntityLoad("User", {user_id=#id#}, true)/>
	</cffunction>
	
	<cffunction name="findUser" returntype="boolean" access="remote">
		<cfargument name="login" type="string" required="true" />
		
		<cfset user = EntityLoad("User", {login=#login#}, true)/>
		
		<cfreturn isDefined("user")/>
	</cffunction>

	<cffunction name="loginUser" returntype="any" access="remote">
		<cfargument name="login" type="string" required="true" />
		<cfargument name="password" type="string" required="true" />
		
		<cfreturn EntityLoad("User", {login=#login#, password=#password#}, true)/>
	</cffunction>
	
	<cffunction name="createUser" returntype="void" access="remote">
		<cfargument name="user" type="be.flexpert.webshop.dtos.User" required="true" />
		
		<cfset EntitySave(user, true)/>
	</cffunction>

</cfcomponent>