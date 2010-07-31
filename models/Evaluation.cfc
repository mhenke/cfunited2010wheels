<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="speaker")>
		
		<cfset validatesPresenceOf(properties="speakerid,title,comments,email")>
        <cfset validatesLengthOf(properties="title,name,comments,email", maximum=45, allowBlank="true")>
        <cfset validatesFormatOf(property="email", type="email", allowBlank="true")>
        
	</cffunction>

</cfcomponent>
