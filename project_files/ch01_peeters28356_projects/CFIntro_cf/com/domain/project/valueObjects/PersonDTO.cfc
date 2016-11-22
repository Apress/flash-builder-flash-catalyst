<cfcomponent output="false" alias="com.domain.project.valueObjects.PersonDTO">
	<cfproperty name="id" type="numeric" default="0">
	<cfproperty name="firstname" type="string" default="">
	<cfproperty name="lastname" type="string" default="">
	<cfproperty name="phone" type="string" default="">
	<cfproperty name="email" type="string" default="">

	<cfscript>
		//Initialize the CFC with the default properties values.
		variables.id = 0;
		variables.firstname = "";
		variables.lastname = "";
		variables.phone = "";
		variables.email = "";
	</cfscript>

	<cffunction name="init" output="false" returntype="PersonDTO">
		<cfreturn this>
	</cffunction>
	<cffunction name="getId" output="false" access="public" returntype="any">
		<cfreturn variables.id>
	</cffunction>

	<cffunction name="setId" output="false" access="public" returntype="void">
		<cfargument name="val" required="true">
		<cfif (IsNumeric(arguments.val)) OR (arguments.val EQ "")>
			<cfset variables.id = arguments.val>
		<cfelse>
			<cfthrow message="'#arguments.val#' is not a valid numeric"/>
		</cfif>
	</cffunction>

	<cffunction name="getFirstname" output="false" access="public" returntype="any">
		<cfreturn variables.firstname>
	</cffunction>

	<cffunction name="setFirstname" output="false" access="public" returntype="void">
		<cfargument name="val" required="true">
		<cfset variables.firstname = arguments.val>
	</cffunction>

	<cffunction name="getLastname" output="false" access="public" returntype="any">
		<cfreturn variables.lastname>
	</cffunction>

	<cffunction name="setLastname" output="false" access="public" returntype="void">
		<cfargument name="val" required="true">
		<cfset variables.lastname = arguments.val>
	</cffunction>

	<cffunction name="getPhone" output="false" access="public" returntype="any">
		<cfreturn variables.phone>
	</cffunction>

	<cffunction name="setPhone" output="false" access="public" returntype="void">
		<cfargument name="val" required="true">
		<cfset variables.phone = arguments.val>
	</cffunction>

	<cffunction name="getEmail" output="false" access="public" returntype="any">
		<cfreturn variables.email>
	</cffunction>

	<cffunction name="setEmail" output="false" access="public" returntype="void">
		<cfargument name="val" required="true">
		<cfset variables.email = arguments.val>
	</cffunction>
</cfcomponent>