<cfcomponent output="false" persistent="true" accessors="true">
	<cfproperty name="photo_id" ormtype="integer" fieldtype="id" generator="native"/>
	<cfproperty name="photo_name" ormtype="string"/>
	<cfproperty name="price" ormtype="float"/>
	<cfproperty name="thumbnail" ormtype="string"/>
	<cfproperty name="location" ormtype="string"/>
	<cfproperty name="category" ormtype="string"/>
</cfcomponent>