<cfcomponent output="false" persistent="true" accessors="true">
	<cfproperty name="user_id" ormtype="integer" fieldtype="id" generator="native"/>
	<cfproperty name="firstname" ormtype="string"/>
	<cfproperty name="lastname" ormtype="string"/>
	<cfproperty name="email" ormtype="string"/>
	<cfproperty name="login" ormtype="string" getter="false"/>
	<cfproperty name="password" ormtype="string" getter="false"/>
</cfcomponent>