<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
<head>

<cfoutput>
#styleSheetLinkTag("uniform.default,base")#
#javaScriptIncludeTag("jquery-1.4.2.min,jquery.uniform.min")#
</cfoutput>

<script type="text/javascript" charset="utf-8">
$(function(){
	$("input, textarea, select, button").uniform();
});
</script>

</head>
<body>
	<div id="wrapper">
		<div class="flash">
		#flash("message")#
		</div>
		#contentForLayout()#
		<div id="license">
		<p>
		<a href="http://creativecommons.org/licenses/by-nc-sa/3.0/us/" rel="license" target="license"><img src="http://i.creativecommons.org/l/by-nc-sa/3.0/us/88x31.png" alt="Creative Commons License" style="border-width: 0;"></a>
		</p>
		<p>
		<a href="http://pixelmatrixdesign.com/uniform/" target="uniform">Uniform - Sexy forms with jQuery</a>
		</p>
		</div>
	</div>
</body>
</html>
</cfoutput>
