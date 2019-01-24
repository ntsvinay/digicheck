<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$("#header").load("Header.jsp");
		$("#logincontent").load("navigationbar.jsp");
		$("#checklisthome").load("checklisthome.jsp");
	});
</script>
<style>
#mainPage{
overflow: scroll;
}
</style>
</head>

<body>

	<div id="header"></div>
	<div id="logincontent"></div>
	<div id="checklisthome"></div>
</body>
</html>