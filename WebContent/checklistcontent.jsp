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
<script>
/*	$(document).on("click", "#checkListworking", function() {
		$("#somediv1").text("place your thumb on the sensor");
		document.getElementById("somediv1").style.color = "blue";
		$.get("Incomplete_check_List", function(responseText) {
			$("#somediv1").text(responseText);

		});

	}); */
</script>
<script>
	var b_id;
	var divID;
	function passDatafromScanButton(buttonID, showDataDivID) {
		var disableDivID = "#" + buttonID + "DisableDiv" + " :input";
		divID = "#" + showDataDivID;
		b_id = "#" + buttonID;

		$(divID).text("place your thumb on the sensor");
		$(divID).css("color", "blue");
		//document.getElementById(divID).style.color = "blue";
		$.get("Safety3", function(responseText) {
			$(divID).text(responseText);
			if ('unsuccessful...! try again' == responseText) {
				$(divID).css("color", "red");

			} else {
				$(divID).css("color", "blue");
				var x = document.getElementById(b_id);
				$(b_id).text("Done");
				$(b_id).css("background-color", "#5398CD");
				$(b_id).attr("disabled", "disabled");
				$(disableDivID).attr('disabled', true);

			}
		});
	}
</script>
<style>
a {
	color: black;
}

#contentarea {
	/* height: 500px; */
}

#nameofchecklist {
	padding-bottom: 50px;
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
	font-size: 25px;
}

#listFile {
font-size:25px;
	
}

#checkListNestedButton {
	font-size: 18px;
}

#scrolabbleDiv {
	overflow: scroll;
	margin-top: 5%;
	height: 90%;
}

#checkListButton {
	color: black;
	font-size:20x;
	font-weight: bold;
	width: 150px;
}

#nameofchecklist {
	font-size: 18px;
}

A:hover {
	TEXT-DECORATION: none
}
</style>
</head>
<body >
	<div class="col-sm-12" id="mainPage">
		<div class="col-sm-2 " style="padding: 30px; ">
			 <input
				type="button" onclick=hideShow("idone1"); class="btn btn-info" value="NEW" id="checkListButton">
			<p id="idone1" style="display:none;">
				<a href="#" style="margin-left: 10px; text-decoration: none"
					onclick="navigationCall()" id="checkListNestedButton">Navigation</a>
				<br> <a href="#"
					style="margin-left: 10px; text-decoration: none"
					onclick="engineRoomCall()" id="checkListNestedButton">E-
					Room</a> <br> <a href="#"
					style="margin-left: 10px; text-decoration: none"
					onclick="SafetyCall()" id="checkListNestedButton">Safety</a>
			</p>
			<br> <br> <a data-toggle="collapse" data-target="#idone2"
				style="margin-top: 20px;color:black" onclick="workingCheckListDisplay()"> <input type="button"
				class="btn btn-info" value="WORKING" id="checkListButton"">
			</a> <br> <br> <a data-toggle="collapse" data-target="#idone3">
				<a href="Safety3_re"><input type="button" class="btn btn-info"
					value="CLOSED" id="checkListButton"></a>
			</a>
		</div>
		<div class="col-sm-10 " id="contentarea" ></div>
	</div>
	<div class="col-sm-12" id="hide1">
		<div class="col-sm-7">
			<div class="col-sm-8">
				<b> <!-- <a href="Call_InComple"> -->
					<p id="somediv1"></p> <!-- </a> -->
				</b>
			</div>
			<div class="col-sm-2">
				<p id="somed2"></p>
			</div>
			<div class="col-sm-2">
				<p id="some3"></p>
			</div>
		</div>
	</div>
</body>
<script>
function hideShow(divID)
{
	 var x = document.getElementById(divID);
	 
	  if (x.style.display == "none") {
	    x.style.display = "block";
	  } else {
		
	    x.style.display = "none";
	  }
}
	var numberofchecklistinNavigation = 4;
	var navigationPDFName = [ "NAV_03_Port_Pre_arrival_Checklist.pdf",
			"NAV_05_Port_Pre_Departure_Checklist.pdf",
			"NAV_10_Navigation_in_Restricted_Visibility_Checklist.pdf",
			"NAV_16_Change_of_Watch_at_Sea_Checklist.pdf" ];
	var navigationName = [ "NAV-03 Port Pre-arrival Checklist",
			"NAV-05 Port Pre-Departure Checklist",
			"NAV-10 Navigation in Restricted Visibility Checklist",
			"NAV-16 Change of Watch at Sea Checklist" ];
	function navigationCall() {
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<div class="col-sm-2"></div><div class="col-sm-7" id="nameofchecklist"><h1 style="margin-bottom:50px;">Navigation Checklist</h1></div><div class="col-sm-3"></div>';
		for (i = 0; i < numberofchecklistinNavigation; i++) {
			document.getElementById("nameofchecklist").innerHTML +='<a style="cursor: pointer; text-decoration:none;" id="listFile" onclick=navigationpdfCall("'
					+ navigationPDFName[i] + '")>' + navigationName[i]
					+ '</a><br>';
		}
	}
	function navigationpdfCall(name) {
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<embed height="100%" width="100%" src="pdffiles/'
				+ name + '" type="application/pdf">';
	}	

	var numberofchecklistinengineRoom = 4;
	var engineRoomPDFName = [ "ENG_01_Pre_departureChecklist.pdf",
			"ENG_02_Pre_arrivalChecklist.pdf", "ENG_03_UMS_Checklist.pdf",
			"ENG_04ER_Change_of_Watch_Checklist.pdf" ];
	var engineRoomName = [ "ENG-01 Pre-departure Checklist",
			"ENG-02 Pre-arrival Checklist", "ENG-03 UMS Checklist",
			"ENG-04 ER Change of Watch Checklist" ];
	
	function engineRoomCall() {
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<div class="col-sm-2"></div><div class="col-sm-7" id="nameofchecklist"><h1 style="margin-bottom:50px;">Engine Room Checklist</h1></div><div class="col-sm-3"></div>';
		for (i = 0; i < numberofchecklistinNavigation; i++) {
			document.getElementById("nameofchecklist").innerHTML +='<a style="cursor: pointer; text-decoration:none;" id="listFile" onclick=engineRoompdfCall("'
					+ engineRoomPDFName[i] + '")>' + engineRoomName[i]
					+ '</a><br>';
		}
	}
	function engineRoompdfCall(name) {
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<embed height="100%" width="100%" src="pdffiles/'
				+ name + '" type="application/pdf">';
	}

	var numberofchecklistinSafety = 6;
	var SafetyPDFName = [ "SAF_02_General_Work_Permit.pdf",
			"SAF_03_Hot_Work_Permit.pdf",
			"SAF_05_Enclosed_Space_Entry_Permit.pdf",
			"SAF_06_Diving_Operations_Permit.pdf",
			"SAF_07_Working_Aloft_Outboard_Permit.pdf",
			"SAF_08_Electrical_Equipment_Permit.pdf" ];
	var SafetyName = [ "SAF-02 General Work Permit", "SAF-03 Hot Work Permit",
			"SAF-05 Enclosed Space Entry Permit",
			"SAF-06 Diving Operations Permit",
			"SAF-07 Working Aloft Outboard Permit",
			"SAF-08 Electrical Equipment Permit" ];
	var SafetyHtmlName = [ "Safety1.html", "Safety2.html", "Saf_05_Enclosed_space_Entry",
			"Safety4.html", "Safety5.html" ];
	var WorkingCheckListName = [ "workingCheckList1", "workingCheckList2", "workingCheckList3",
		"workingCheckList", "workingCheckList" ];
	var workingHTML = [ "workingCheckList1.html", "workingCheckList2.html", "workingCheckList3.jsp",
		"workingCheckList4.html", "workingCheckList5.html" ];
	function SafetyCall() {
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<div class="col-sm-2"></div><div class="col-sm-7" id="nameofchecklist"><h1 style="margin-bottom:50px;">Safety Permit</h1></div><div class="col-sm-3"></div>';
		for (i = 0; i < numberofchecklistinSafety; i++) {
			document.getElementById("nameofchecklist").innerHTML +='<a style="cursor: pointer; text-decoration:none;" id="listFile" onclick=SafetypdfCall("'
					+ SafetyPDFName[i] + '","' + SafetyHtmlName[i] + '")>'
					+ SafetyName[i] + '</a><br>';
		}
	}
	function SafetypdfCall(name, htmlName) {		
		jQuery('#contentarea').html('');
		//<form action="Saf_05_Enclosed_space_Entry" method="get"></form>
		document.getElementById("contentarea").innerHTML += '<center><button class="block" onclick=callDiv("'
				+ htmlName+ '"); style="color:white"> Start Working</button></center>'
				+ '<embed height="100%" width="100%" src="pdffiles/'
				+ name
				+ '" type="application/pdf">';
	}

	function callDiv(fileName) {
		window.location.href = fileName;
	}

//this is working script
function workingCheckListDisplay()
	{
		jQuery('#contentarea').html('');
		document.getElementById("contentarea").innerHTML += '<div class="col-sm-2"></div><div class="col-sm-7" id="nameofchecklist"><h1 style="margin-bottom:50px;">Working Checklist</h1></div><div class="col-sm-3"></div>';
		for (i = 0; i < numberofchecklistinNavigation; i++) {
			document.getElementById("nameofchecklist").innerHTML +='<a style="cursor: pointer; text-decoration:none;"  id="listFile" onclick=callDiv("'
					+ workingHTML[i] + '")>' + WorkingCheckListName[i]
					+ '</a><br>';
		}	
	}
</script>
</html>