<h1>Listing evaluations</h1>

<cftable query="evaluations" colHeaders="true" HTMLTable="true">
	
				
					<cfcol header="Speaker Name" text="#speakername#" />
				
					<cfcol header="Title" text="#title#" />
				
					<cfcol header="Comments" text="#comments#" />
				
					<cfcol header="Name" text="#name#" />
				
					<cfcol header="Email" text="#email#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New evaluation", action="new")#</p>
</cfoutput>
