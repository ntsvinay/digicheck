<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta me="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Include jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Include Date Range Picker -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

<style>
#heading {
	color: black;
}

body {
	overflow: none;
	background-color: red;
}

div {
	font-size: 15px;
	color: black;
}

#topTable {
	border-collapse: separate;
	border-spacing: 35px 0px;
}

#preEntry {
	border-collapse: separate;
	border-spacing: 35px 10px;
}

#preEntry td { //
	border: 1px solid black;
}

textarea {
	resize: ne;
}

#photoButton {
	border: 0px;
	background-color: white;
	color: black;
}

#scanData1, #scanData2, #scanData3, #scanData4, #scanData5, #scanData6,
	#scanData7, #scanData8, #scanData9, #scanData10, #scanData11,
	#scanData12, #scanData13, #scanData14, #scanData15, #scanData16,
	#scanData17, #scanData18 {
	border: 0px;
	background-color: white;
	color: black;
	cursor: working;
}

#activateButton {
	border: 0px;
	background-color: white;
	color: black;
	font-weight: normal;
}

#datetimeLabel {
	font-size: 15px;
}

.gasNumber {
	width: 60px;
}

m {
	font-size: 11px;
	font-color: red;
}

#leftDiv {
	float: right;
}

#sectiolDiv {
	font-size: 20px;
	font-weight: bold;
	border: 1px solid black;
	margin-top: 20px;
}

#mainLine {
	margin-top: 10px;
}

textarea {
	resize: none;
}

.scanData {
	border: 0px;
	background-color: white;
	color: black;
}

button:disabled {
	cursor: not-allowed;
}

.officerName {
	color: green;
	font-weight: bold;
}
</style>

</head>
<body style="background-color: #AED6F1" onload="LoadData()">
	<%
	String imgDataBase64=request.getAttribute("ab").toString();
	String pic2=request.getAttribute("pic2").toString();
	String pic3=request.getAttribute("pic3").toString();
	String pic4=request.getAttribute("pic4").toString();
	String pic5=request.getAttribute("pic5").toString();
	String pic6=request.getAttribute("pic6").toString();
	String pic7=request.getAttribute("pic7").toString();
	String pic8=request.getAttribute("pic8").toString();
	String pic9=request.getAttribute("pic9").toString();
	String pic10=request.getAttribute("pic10").toString();
	String pic11=request.getAttribute("pic11").toString();
	String pic12=request.getAttribute("pic12").toString();

	
		String gas = request.getAttribute("gas").toString();
		String sec4_gas_scan = request.getAttribute("sec4_scan").toString();
		String auto_scan_btn = request.getAttribute("in_out_scan").toString();
		String scan = request.getAttribute("image").toString();
		String cond = request.getAttribute("condition").toString();
		String image = request.getAttribute("image_builder").toString();
		System.out.println(scan);
	%>
	<div id="content">
		<div class="col-sm-12" id="heading">
			<center>
				<h1>SAF-05 ENCLOSED SPACE ENTRY PERMIT</h1>
			</center>
		</div>
		<div class="col-sm-12" id="scrolabbleDiv"
			style="border-top: 2px solid black;">
			<div class="col-sm-12">
				<div class="col-sm-4">
					PERMIT :<b id="permitAddress">NTS | 2018 | 01 | ESE</b>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-5">NAME / LOCATION OF ENCLOSED SAPCE</div>
				<div class="col-sm-6">
					<p id="text1"><%=request.getAttribute("LOC_OF_ES").toString()%></p>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-5">REASON FOR ENTRY INTO ENCLOSED SPACE</div>
				<div class="col-sm-6">
					<p id="text2"><%=request.getAttribute("REASN_OF_ES").toString()%></p>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 1: PRE ENTRY PREPRATION</div>
				<div class="col-sm-5">
					<div class="col-sm-6"></div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					HAS THE SPACE BEEN THOROUGHLY VENTILATED BY MECHANICAL MEANS
					<p id="Scaned1" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective1"></p>
					</div>
					<div class="col-sm-6">
						<p id="img1">
							<img src="data:image/gif;base64,<%= imgDataBase64 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					HAS THE SPACE BEEN CLEANED WHERE NECESSARY
					<p id="Scaned2" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective2"></p>
					</div>
					<div class="col-sm-6">
						<p id="img2">
							<img src="data:image/gif;base64,<%= pic2 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>


			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					HAS SPACE BEEN TESTED AND FOUND SAFE FOR ENTRY
					<p id="Scaned3" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective3"></p>
					</div>
					<div class="col-sm-6">
						<p id="img3">
							<img src="data:image/gif;base64,<%= pic3 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-3">Date</div>
							<div class="col-sm-6">
								<p id="date1"><%=request.getAttribute("sec1_date")%></p>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-3">TIME</div>
							<div class="col-sm-6">
								<p id="time1"><%=request.getAttribute("sec1_time")%></p>
							</div>
						</div>
					</div>
					<div class="col-sm-5"></div>
				</div>
				<div class="col-sm-12 " id="mainLine">
					<div class="col-sm-7">
						<div class="col-sm-4">
							<div class="col-sm-12">OXYGEN</div>
							<div class="col-sm-12">
								<p id="gas11"><%=request.getAttribute("sec1_o")%></p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="col-sm-12">HYDROCARBON</div>
							<div class="col-sm-12">
								<p id="gas12"><%=request.getAttribute("sec1_h")%></p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="col-sm-12">TOXIC GASES</div>
							<div class="col-sm-12">
								<p id="gas13"><%=request.getAttribute("sec1_t")%></p>
							</div>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
						<div class="col-sm-6"></div>
					</div>

				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 2: PRE ENTRY CHECK</div>
				<div class="col-sm-5">
					<div class="col-sm-6"></div>
				</div>
			</div>

			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					I HAVE RECEIVED PERMISSION FROM THE RESPONSIBLE OFFICER TO ENTER
					THE ENCLOSED SPACE
					<p id="Scaned4" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective4"></p>
					</div>
					<div class="col-sm-6">
						<p id="img4">
							<img src="data:image/gif;base64,<%= pic4 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					I AGREED AND UNDERSTAND THE COMMUNICATION PROCEDUREENTRY
					<p id="Scaned5" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective5"></p>
					</div>
					<div class="col-sm-6">
						<p id="img5">
							<img src="data:image/gif;base64,<%= pic5 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-7">
						<b><p id="hide5"></p></b>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					WE HAVE AGREED UPON REPORTING INTERVAL OF <b id="number1"> <%=request.getAttribute("SEC2_INTERVAL").toString()%>
					</b> MINUTES BY <b id="text3"> <%=request.getAttribute("SEC2_MINTBY").toString()%></b>
					<p id="Scaned6" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective6"></p>
					</div>
					<div class="col-sm-6">
						<p id="img6">
							<img src="data:image/gif;base64,<%= pic6 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 3: APPROVAL</div>
				<div class="col-sm-5">
					<div class="col-sm-6"></div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">MASTER OR RESPONSIBLE PERSON</div>
				
				<div class="col-sm-5">
				<div class="col-sm-6">
					<p id="Scaned7" class="officerName"></p>
				</div>
				
				<div class="col-sm-6">
						<p id="img6">
							<img src="data:image/gif;base64,<%= pic7 %>" width="130px" height="90px"/>
						</p>
					</div>
			
			</div>
			</div>
			
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">ATTENDANT</div>
				<div class="col-sm-5">
				<div class="col-sm-6">
					<p id="Scaned8" class="officerName"></p>
					</div>
					<div class="col-sm-6">
					
					<p id="img6">
							<img src="data:image/gif;base64,<%= pic8 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine"
				style="border-top: 1px solid white; padding-top: 10px;">
				<div class="col-sm-7">PERIOD OF VALIDITY</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5">FROM :</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-3">Date</div>
						<div class="col-sm-6">
							<p id="date2"><%=request.getAttribute("sec3_from_date").toString()%></p>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3">TIME</div>
						<div class="col-sm-6">
							<p id="time2"><%=request.getAttribute("sec3_from_time").toString()%></p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5">TO:</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-3">Date</div>
						<div class="col-sm-6">
							<p id="date3"><%=request.getAttribute("sec3_to_date").toString()%></p>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3">TIME</div>
						<div class="col-sm-6">
							<p id="time3"><%=request.getAttribute("sec3_to_time").toString()%></p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-12">PERSON ENTERING IN SPACE</div>
				<div id="SpaceEntryList" class="officerName"></div>


			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 4: MONITERING</div>
				<div class="col-sm-5">
					<div class="col-sm-6"></div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-12">
					ADDITIONAL GAS CHECKS TO BE CARRIED OUT EVERY : <b id="number2"><%=request.getAttribute("sec4_additional").toString()%></b>
					HOUR
				</div>
				<div class="col-sm-12 " id="mainLine">
					<div class="col-sm-12" id="repeatGasData">
						<div class="col-sm-7">
							<div class="col-sm-4">OXYGEN</div>
							<div class="col-sm-4">HYDROCARBON</div>
							<div class="col-sm-4">TOXIC GASES</div>
						</div>
						<div class="col-sm-5"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					IS CONTINIOUS VENTILATION BEING MAINTAINED
					<p id="Scaned9" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective7"></p>
					</div>
					<div class="col-sm-6">
						<p id="img7">
							<<img src="data:image/gif;base64,<%= pic9 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-7">
						<b><p id="hide12"></p></b>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					ARE REPORTS RECEIVED AT REGULAR INTERVALS AS AGREED
					<p id="Scaned10" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective8"></p>
					</div>
					<div class="col-sm-6">
						<p id="img8">
							<img src="data:image/gif;base64,<%= pic10 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 5: COMPLETION OF WORK</div>
				<div class="col-sm-5">
					<div class="col-sm-6"></div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					JOB COMPLETED AND EQUIPMENTS WITHDRAWN
					<p id="Scaned11" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective9"></p>
					</div>
					<div class="col-sm-6">
						<p id="img9">
							<img src="data:image/gif;base64,<%= pic11 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">
					SPACE SECURED AGAINST ENTRY
					<p id="Scaned12" class="officerName"></p>
				</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<p id="objective10"></p>
					</div>
					<div class="col-sm-6">
						<p id="img10">
							<img src="data:image/gif;base64,<%= pic12 %>" width="130px" height="90px"/>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5">MASTER OR RESPONSIBLE PERSON</div>
				<div class="col-sm-7">
					<p id="Scaned13" class="officerName"></p>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5">TEAM LEADER</div>
				<div class="col-sm-7">
					<p id="Scaned14" class="officerName"></p>
				</div>
			</div>
		</div>
	</div>
	<div id="editor"></div>
	<div class="col-sm-12">
		<div class="col-sm-4">
			<button type="button" id="removeDetails"
				class="btn btn-primary btn-block"
				style="margin-top: 20px; margin-bottom: 20px;"
				onclick="removeOfficer()">Remove Details</button>

		</div>
		<div class="col-sm-4">
			<button type="button" id="removeImage"
				class="btn btn-primary btn-block"
				style="margin-top: 20px; margin-bottom: 20px;"
				onclick="removeImage()">Remove Image</button>

		</div>
		<div class="col-sm-4">
			<button type="button" id="cmd" class="btn btn-primary btn-block"
				style="margin-top: 20px; margin-bottom: 20px;" onclick="printDiv()">Print</button>
		</div>
	</div>
	<script>
		var scannedName =
	<%=scan%>
		;
		var gasCheckData =
	<%=gas%>
		;
		var gasCheckDataName =
	<%=sec4_gas_scan%>
		;
		var spaceEnteringandExit =
	<%=auto_scan_btn%>
		;
		<%-- var imgAddress =
	<%=image%>
		; --%>
		var objectiveArray =
	<%=cond%>
		;
		var i, id, htmlData;
		function LoadData() {
			for (i = 1; i <= objectiveArray.length; i++) {
				id = "objective" + i;
				document.getElementById(id).innerHTML = objectiveArray[i - 1];
			}
			for (var i = 1; i <= scannedName.length; i++) {
				id = "Scaned" + i;
				document.getElementById(id).innerHTML = scannedName[i - 1];
			}
			for (var k = 0; k < spaceEnteringandExit.length; k++) {
				var htmlData = '<p>Entry : ' + spaceEnteringandExit[k][0]
						+ ' , Exit :' + spaceEnteringandExit[k][1] + '</p>'
				document.getElementById("SpaceEntryList").innerHTML += htmlData;
			}
			/* for (var l = 1; l < imgAddress.length; l++) {
				var id = "img" + l;
				htmlData = '<a href='+imgAddress[l]+'>'
						+ '<img src='+imgAddress[l]+' height=100px; width=100px;>'
						+ '</a>';
				document.getElementById(id).innerHTML = htmlData;
			} */
			for (var j = 0; j <= gasCheckData.length; j++) {
				htmlData = '<div class="col-sm-7" id="repeatGasDiv"><div class="col-sm-4">'
						+ gasCheckData[j][0]
						+ '</div>'
						+ '<div class="col-sm-4">'
						+ gasCheckData[j][1]
						+ '</div>'
						+ '<div class="col-sm-4">'
						+ gasCheckData[j][2]
						+ '</div></div>'
						+ '<div class="col-sm-5"><div class="officerName">'
						+ gasCheckDataName[j] + '</div></div>'
				document.getElementById("repeatGasData").innerHTML += htmlData;
			}

		}
	</script>
	<script>
		function removeOfficer() {
			var id;
			var x = document.getElementById("removeDetails").textContent;
			if (x == 'Remove Details') {
				for (var i = 1; i <= scannedName.length; i++) {
					id = "Scaned" + i;
					document.getElementById(id).style.display = "none";
				}
				document.getElementById("removeDetails").textContent = 'Add Details';
			} else {
				for (var i = 1; i <= scannedName.length; i++) {
					id = "Scaned" + i;
					document.getElementById(id).style.display = "block";
				}
				document.getElementById("removeDetails").textContent = 'Remove Details';
			}
		}
		function removeImage() {
			var id, j;
			var x = document.getElementById("removeImage").textContent;
			if (x == "Remove Image") {
				document.getElementById("removeImage").textContent = 'Add Image';

				for (j = 1; j <= imgAddress.length; j++) {
					id = "img" + j;
					document.getElementById(id).style.display = "none";
				}
			} else {
				document.getElementById("removeImage").textContent = 'Remove Image';
				for (j = 1; j <= imgAddress.length; j++) {
					id = "img" + j;
					document.getElementById(id).style.display = "block";
				}

			}
		}
	</script>
	<script>
		function printDiv() {
			var printContents = document.getElementById('content').innerHTML;
			var originalContents = document.body.innerHTML;
			document.body.innerHTML = printContents;
			window.print();
			document.body.innerHTML = originalContents;
		}
	</script>
</body>
</html>