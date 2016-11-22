<cfcomponent output="no">
	<cffunction name="getAllPersons" displayname="getAllPersons" 
	            description="Retrieve all the persons from the database" 
				access="remote" output="no"
				returntype="com.domain.project.valueObjects.PersonDTO[]">
		<cfquery name="qPersons" datasource="Flex4" >
			SELECT * FROM person
        </cfquery>
	
		<cfset myArr = arrayNew(1)/>
		<cfset var obj=""/>
	
		<cfloop query="qPersons">
        	<cfscript>
				obj = createObject("component", "com.domain.project.valueObjects.PersonDTO").init();	
				obj.setId(qPersons.id);
				obj.setFirstname(qPersons.firstname);
				obj.setLastname(qPersons.lastname);
				obj.setPhone(qPersons.phone);
				obj.setEmail(qPersons.email);
				ArrayAppend(myArr, obj);		
			</cfscript>
		</cfloop>
		
		<cfreturn myArr>
	</cffunction>
</cfcomponent>