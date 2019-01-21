<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
	background-color: grey;
}

#header {
	overflow: hidden;
	background-color: white;  
	padding: 0px;
}

#header a {
	float: left;
	color: black;
	text-align: center;
	padding: 0px;
	text-decoration: none;
	font-size: 25px;
	line-height: 25px;
	border-radius: 4px;
}
#header a:hover {
	float: left;
	color: blue;
	text-align: center;
	padding: 0px;
	text-decoration: none;
	font-size: 25px;
	line-height: 25px;
	border-radius: 4px;
	text-decoration:none;
}


#header a.active {
	background-color: dodgerblue;
	color: red;
}

#header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	#header a {
		float: none;
		display: block;
		text-align: CENTER;
	}
	#header-right {
		float: none;
	}
}
#webName{
margin-top: 25px;
 font-size:40px;
 color:black;
 font-weight:bold;


}

</style>
</head>
<body>
	<div id="header" style="margin-left:0px; margin-right:0px;">
	<div class="col-sm-12 row">
	<div class="col-sm-2">
	<a href="#default" class="logo"><img src="images/logo.png" width="120"
		height="70" style="margin-top: 12px;"></a>
		</div>
		<div class="col-sm-8">
		<center>
		<p href="#default" id="webName"  >DiGi-MON</p></center>

	</div>
	<div class="col-sm-2 " >
	<center><img src="images/profile.jpg" width="50px"
		height="50px" style="margin-top: 10px;border-radius:50%"><br><p style="font-size:12px;">MR.Devesh Gautam</p>
		</center>
		</div>	
	</div>
	</div>
</body>
</html>