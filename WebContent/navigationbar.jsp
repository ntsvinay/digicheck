
<html>
<head>
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

/* Style the tab */
.tab {
	float: left;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	width: 20%;
}

/* Style the buttons inside the tab */
.tab button {
	display: block;
	background-color: inherit;
	color: black;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	float: left;
	padding: 0px 12px; //
	border: 1px solid #ccc;
	width: 80%;
	border-left: none;
}

#alertheading {
	font-size: 30px;
	font-weight: bold;
	font-family: times new roman
}

#lowerheading {
	font-size: 15px;
	font-weight: bold;
	margin-top: 10px;
}

#selectiondrop {
	background-color: white;
	width: 70px;
}

#nameheading {
	font-size: 20px;
	font-weight: bold;
}
#navButton{
color: black; 
font-weight: bold;
font-size:20px;
padding:10px 32px 10px 32px;
background-color:#6fbbff;
}
</style>
</head>
<body >
	<div class="col-sm-12"
		style="padding: 10px; background-color: #d8ecff;">
		<div class="col-sm-3">
			<center>
				<a href="includechecklist.jsp"><input type="button"
					class="btn btn-info" value="Check List"
					id="navButton"></a>
			</center>
		</div>
		<div class="col-sm-3">
			<center>
				<input type="button" class="btn btn-info" value="Tool Box Meeting"
					id="navButton">
			</center>
		</div>
		<div class="col-sm-3">
			<center>
				<a href="Show_user_detaills"><input type="button"
					class="btn btn-info" value="User Management"
					id="navButton"></a>
			</center>
		</div>
		<div class="col-sm-3">
			<center>
				<input type="button" class="btn btn-info" value="Report"
					id="navButton">
			</center>
		</div>
	</div>
</body>
</html>