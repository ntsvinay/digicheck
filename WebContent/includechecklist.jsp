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
		$("#checklisthome").load("checklistcontent.jsp");
	});
</script>
<style>
#heading{
color:black;
//position:fixed;
//background-color:red;
overflow:none;
height:auto;
}
a{
color:black;
}
#contentarea{
height:900px;
}
#scrolabbleDiv{
overflow:scroll;
margin-top:5%;
height:90%;
}
#nameofchecklist{
padding-bottom:50px;
}
.block {
    display: block;
    width: 100%;
    border: none;
    background-color: #1F7FB5;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
    font-size:25px;
}
#mainPage{
overflow: auto;
}
#checkListNestedButton{
font-size:18px;
}
#checkListButton{
color:black; 
font-weight:bold;
width:100px;
}
#nameofchecklist{
font-size:18px;
}
body{
overflow: none;
}
</style>
</head>
<body>
	<div id="header"></div>
	<div id="logincontent"></div>
	<div id="checklisthome" ></div>
</body>
</html>