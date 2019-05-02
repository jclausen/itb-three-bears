<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to Coldbox!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />
	<!---css --->
	<link rel="stylesheet" type="text/css" href="#correctedElixirPath( "includes/css/app.css" )#" />
	#prc.assetBag.renderHead()#
</head>
<body>
	
	<!---Container And Views --->
	<div class="container" id="app">
		#renderView()#
	</div>

	<footer class="footer container">
		<p class="text-center text-muted">
			<a href="http://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
			<a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
	</footer>
	
	<script type="application/javascript" src="#correctedElixirPath( "includes/js/runtime.js" )#"></script>
    <script type="application/javascript" src="#correctedElixirPath( "includes/js/vendor.js" )#"></script>
	#prc.assetBag.renderFooter()#
    <script type="application/javascript" src="#correctedElixirPath( "includes/js/app.js" )#"></script>
</body>
</html>
</cfoutput>
