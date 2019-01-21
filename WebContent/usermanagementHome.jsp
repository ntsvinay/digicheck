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
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<style>
#signofButton {
	background-color: white;
	color: black;
	font-weight: bold;
}

#signofButton:hover {
	background-color: #AED6F1;
}
</style>
</head>
<body>
	<div class="container-fluid" style="margin-top: 20px;" id="heading">
		<div class="col-sm-12">
			<div class="col-sm-2" style="float: right">
				<a href="IncludeUserManagement.jsp"><button type="button"
						class="btn btn-info"
						style="color: black; margin-top: 20px; font-weight: bold;"
						onclick="reportDivData()">ADD USER</button></a>
				<!-- <form action="CreateUser" method="post">
<button type="submit"  class="btn btn-info"style="color:black; margin-top:20px; font-weight:bold;" onclick="reportDivData()">ADD USER</button>
</form> -->
			</div>
		</div>
	</div>
	<div class="container-fluid" style="margin-top: 20px;"
		id="mainContainer">
		<div class="col-sm-12"
			style="border-bottom: 2px solid black; font-size: 17px;">
			<div class="col-sm-1">
				<b>SR NO.</b>
			</div>
			<div class="col-sm-2">
				<b>NAME</b>
			</div>
			<div class="col-sm-2">
				<b>RANK</b>
			</div>
			<div class="col-sm-2">
				<b>DATE OF JOINING</b>
			</div>
			<div class="col-sm-5"></div>
		</div>
	</div>
</body>
<script>
	var editRight = 1;
	var totalEmployee = 10;
	var userData = [
			[ "Devesh Gautam", "Cheif Engineer", "14-may-2011", "profile1.jpg" ],
			[ "Priyanshu Suri", "Captain", "15-may-2011", "profile1.jpg" ],
			[ "Prashant Parmar", "3rd Engineer", "16-may-2011", "profile1.jpg" ],
			[ "Vinay Bhaghel", "4th Mate", "17-may-2011", "profile1.jpg" ],
			[ "Nirbhay", "Bosun", "18-may-2011", "profile1.jpg" ],
			[ "Nirbhay1", "FILTER", "19-may-2011", "profile1.jpg" ],
			[ "Nirbhay2", "OTHER", "20-may-2011", "profile1.jpg" ], ];
	for (var i = 0; i < totalEmployee; i++) {
		if (editRight > 0) {
			var employeeDataManagement = '<div class="col-sm-12" style="margin-top:10px;">'
					+ '<div class="col-sm-1"><center>'
					+ (i + 1)
					+ '</center></div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][0]
					+ '</div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][1]
					+ '</div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][2]
					+ '</div>'
					+ '<div class="col-sm-1"><img src="images/'+userData[i][3]+'" height="50px" width="70px"/></div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ '<a href="#"><button id="signofButton" value=userData[i][1]> SIGN OFF</button</a>'
					+ '</div><div class="col-sm-1"></div></div>';
			document.getElementById("mainContainer").innerHTML += employeeDataManagement;
		} else {
			var employeeDataManagement = '<div class="col-sm-12" style="margin-top:10px;">'
					+ '<div class="col-sm-1"><center>'
					+ (i + 1)
					+ '</center></div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][0]
					+ '</div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][1]
					+ '</div>'
					+ '<div class="col-sm-2" style="padding-top:15px;">'
					+ userData[i][2]
					+ '</div>'
					+ '<div class="col-sm-1"><img src="images/'+userData[i][3]+'" height="50px" width="70px"/></div>'
					+ '<div class="col-sm-2"></div></div>';
			document.getElementById("mainContainer").innerHTML += employeeDataManagement;
		}

	}
</script>
</html>