<cfcomponent extends="Controller" output="false">
	
	<!--- -evaluations/index --->
	<cffunction name="index">
		<cfset evaluations = model("Evaluation").findAll(include="speaker")>
		
	</cffunction>
	
	<!--- -evaluations/show/key --->
	<cffunction name="show">
        
		<!--- Find the record --->
    	<cfset evaluation = model("Evaluation").findByKey(key=params.key,include="speaker")>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(evaluation)>
	        <cfset flashInsert(message="Evaluation #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- -evaluations/new --->
	<cffunction name="new">

        <!--- new --->
        <cfset speakers = model("Speaker").findAll()>

		<cfset evaluation = model("Evaluation").new()>
	</cffunction>
	
	<!--- -evaluations/edit/key --->
	<cffunction name="edit">
	
		<!--- edit --->
        <cfset speakers = model("Speaker").findAll()>
        
		<!--- Find the record --->
    	<cfset evaluation = model("Evaluation").findByKey(key=params.key,include="speaker")>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(evaluation)>
	        <cfset flashInsert(message="Evaluation #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- -evaluations/create --->
	<cffunction name="create">

        <!--- create --->
        <cfset speakers = model("Speaker").findAll()>
        
		<cfset evaluation = model("Evaluation").new(params.evaluation)>
		
		<!--- Verify that the evaluation creates successfully --->
		<cfif evaluation.save()>
			<cfset flashInsert(message="The evaluation was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(message="There was an error creating the evaluation.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- -evaluations/update --->
	<cffunction name="update">
	
		<!--- update --->
        <cfset speakers = model("Speaker").findAll()>
        
		<cfset evaluation = model("Evaluation").findByKey(params.key)>
		
		<!--- Verify that the evaluation updates successfully --->
		<cfif evaluation.update(params.evaluation)>
			<cfset flashInsert(message="The evaluation was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(message="There was an error updating the evaluation.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- -evaluations/delete/key --->
	<cffunction name="delete">
		<cfset evaluation = model("Evaluation").findByKey(params.key)>
		
		<!--- Verify that the evaluation deletes successfully --->
		<cfif evaluation.delete()>
			<cfset flashInsert(success="The evaluation was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(message="There was an error deleting the evaluation.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
