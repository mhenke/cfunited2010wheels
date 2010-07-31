<h1>Create new evaluation</h1>

<cfoutput>

			#errorMessagesFor("evaluation")#
	
			#startFormTag(action="create")#
				
						#select(objectName="evaluation", property="speakerId", options=speakers, includeBlank="--Select One--", label="Speaker")#
					
						#textField(objectName='evaluation', property='title', label='Title')#
					
						#textField(objectName='evaluation', property='comments', label='Comments')#
					
						#textField(objectName='evaluation', property='name', label='Name')#
					
						#textField(objectName='evaluation', property='email', label='Email')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
