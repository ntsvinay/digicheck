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

<script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format:'dd-M-yyyy',
            endDate: '+0d',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>
<script>
var b_id;
var divID;
function passDatafromScanButton(buttonID,showDataDivID)
{
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Safety3",
										function(responseText) {
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
<script>
var b_id;
var divID;
var div_value;
var div_num_value,decrease_div;
var div_h_value,final_decresed_div,value_for_same_name;
function passDatafromScanButton3_auto(buttonID,showDataDivID)
{
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	divID1=showDataDivID;
	b_id="#"+buttonID;
	div_num_value=divID1.substr(4,5);
	div_h_value=divID1.substr(0,4);
	decrease_div=--div_num_value;
	final_decresed_div=div_h_value.concat(decrease_div);
	div_value= document.getElementById(final_decresed_div).textContent;
	//'place your thumb on the sensor'
		if(div_value==null|| div_value=='unsuccessful...! try again')
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Safety3",
										function(responseText) {
											$(divID).text(responseText);
											if(responseText.includes(value_for_same_name))
												{
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
											    $(b_id).attr("disabled", "disabled");
											    $(disableDivID).attr('disabled', true);
												}
											else if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");

											} else {
												$(divID).text("Only in person can out");
												$(divID).css("color", "red");
												
											}
										});
		}
						}
</script>
<script>
var b_id;
var divID;
var div_value;
var div_num_value,decrease_div;
var div_h_value,final_decresed_div,value_for_same_name;
function passDatafromScanButton4_auto(buttonID,showDataDivID)
var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	divID1=showDataDivID;
	div_value=document.getElementById(divID1).textContent;
	alert(div_value);
	b_id="#"+buttonID;
	div_num_value=divID1.substr(4,5);
	div_h_value=divID1.substr(0,4);
	decrease_div=--div_num_value;
	final_decresed_div=div_h_value.concat(decrease_div);
	div_value= document.getElementById(final_decresed_div).textContent;
	alert(div_value);
		if(div_value=='place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Safety3",
										function(responseText) {
											$(divID).text(responseText);
											if(responseText.includes(value_for_same_name))
												{
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
											    $(b_id).attr("disabled", "disabled");
											    $(disableDivID).attr('disabled', true);
												}
											else if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");

											} else {
												$(divID).text("Only in person can out");
												$(divID).css("color", "red");
												
											}
										});
		}
						}
</script>
<script>
var b_id;
var divID;
function passDatafromScanButton1(buttonID,showDataDivID)
{	
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Managment_Level",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");

											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('disabled', true);
											}
										});
						}
</script>

<style>
#heading {
	color: black;
	position: fixed; //
	background-color: #78a1e2;
	overflow: none;
	height: 100px;
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

#scrolabbleDiv {
	overflow: scroll;
	height: auto;
	margin-top: 5%;
	height: 90%;
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
</style>
</head>
<body style="background-color: #AED6F1">
<%
String first_text=request.getAttribute("name_and_loc_En_Space").toString();
String second_text=request.getAttribute("reason_enrty_En_Space").toString();
String PREPRATION_Oxy=request.getAttribute("PREPRATION_Oxy").toString();
String PREPRATION_Hydro=request.getAttribute("PREPRATION_Hydro").toString();
String PREPRATION_ToxicGas=request.getAttribute("PREPRATION_ToxicGas").toString();
String sec1_date=request.getAttribute("sec1_date").toString();
String sec1_time=request.getAttribute("sec1_time").toString();
String interval=request.getAttribute("interval").toString();
String interval_mintby=request.getAttribute("interval_mintby").toString();
String sec3_from_date=request.getAttribute("sec3_from_date").toString();
String minutes=null;
String cond="checked";
%>
	<form action="Complete_check" method="get">
		<div class="col-sm-12" id="heading">
			<center>
				<h1>SAF-05 ENCLOSED SPACE ENTRY PERMIT</h1>
			</center>
		</div>
		<div class="col-sm-12" id="scrolabbleDiv"
			style="border-top: 2px solid black;">
			<div class="col-sm-12">
				<div class="col-sm-4">PERMIT : NTS | 2018 | 01 | ESE</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-5">NAME / LOCATION OF ENCLOSED SAPCE</div>
				<div class="col-sm-6">
					<textarea cols="40" rows="3" name="enclo_space" 
						onkeyup="this.value = this.value.toUpperCase();"><%=first_text%></textarea>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-5">REASON FOR ENTRY INTO ENCLOSED SPACE</div>
				<div class="col-sm-6">
					<textarea cols="40" rows="3" name="reason_enclo_space"
						onkeyup="this.value = this.value.toUpperCase();"><%=second_text%></textarea>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 1: PRE ENTRY PREPRATION</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<div class="col-sm-4">YES</div>
						<div class="col-sm-4">NO</div>
						<div class="col-sm-4">NA</div>
					</div>
				</div>
			</div>
			<div id="scanData1DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">HAS THE SPACE BEEN THOROUGHLY
						VENTILATED BY MECHANICAL MEANS</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="yes">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="no">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="na" <%=cond %>>
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData1"
									onclick=passDatafromScanButton1("scanData1","hide1");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div name="value_of_div" class="col-sm-7">
							<b><p id="hide1"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData2DisableDiv">
				<!--  <div class="col-sm-12 well" id=scanData2DisableDiv"> -->
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">HAS THE SPACE BEEN CLEANED WHERE
						NECESSARY</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="yes" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="No">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="NA">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData2"
									onclick=passDatafromScanButton1("scanData2","hide2");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide2"></p></b>
						</div>
					</div>

				</div>
			</div>
			<div id="scanData3DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">HAS SPACE BEEN TESTED AND FOUND SAFE
						FOR ENTRY</div>
					<div class="col-sm-5"></div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-3">Date</div>
							<div class="col-sm-6">
								<input class="form-control" id="scanDataDate3" name="sec1_date" value=<%=sec1_date %>
									placeholder="DD/MM/YYY" type="text" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-3">TIME</div>
							<div class="col-sm-6">
								<input type="time" id="scanDataTime3" name="sec1_time" value=<%=sec1_time%>>
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
								<input type="number" name="sec1_oxygen" class="gasNumber" value=<%=PREPRATION_Oxy %>
									id="scanData3Entry1">
							</div>
						</div>
						<div class="col-sm-4">
							<div class="col-sm-12">HYDROCARBON</div>
							<div class="col-sm-12">
								<input type="number" name="sec1_hydrocarbon" class="gasNumber" value=<%=PREPRATION_Hydro %>
									id="scanData3Entry2">
							</div>
						</div>
						<div class="col-sm-4">
							<div class="col-sm-12">TOXIC GASES</div>
							<div class="col-sm-12">
								<input type="number" name="sec1_toxic_gas" class="gasNumber" value=<%=PREPRATION_ToxicGas %>
									id="scanData3Entry3">
							</div>
						</div>
					</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio4" value="Yes" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio4" value="No">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio4" value="NA">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<div id="scanDataDiv3"
									onmouseover="scanButton3HoverTestingMethod()"
									onmouseleave="scanButton3HLeaveTestingMethod()">
									<button type="button" id="scanData3"
										onclick=passDatafromScanButton1("scanData3","hide3");>Scan</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide3"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData4DisableDiv">
				<div class="col-sm-12" id="sectiolDiv">
					<div class="col-sm-7">SECTION 2: PRE ENTRY CHECK</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">YES</div>
							<div class="col-sm-4">NO</div>
							<div class="col-sm-4">NA</div>
						</div>
					</div>
				</div>

				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">I HAVE RECEIVED PERMISSION FROM THE
						RESPONSIBLE OFFICER TO ENTER THE ENCLOSED SPACE</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="Yes" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="No">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="NA">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData4"
									onclick=passDatafromScanButton("scanData4","hide4");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide4"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData5DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">I AGREED AND UNDERSTAND THE
						COMMUNICATION PROCEDURE</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="Yes" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="No">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="NA">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData5"
									onclick=passDatafromScanButton("scanData5","hide5");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide5"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData6DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">
						WE HAVE AGREED UPON REPORTING INTERVAL OF <select
							name="interval_value">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
						</select> MINUTES BY <input type="text" name="interval_by" value=<%=minutes%>
							class="gasNumber"
							onkeyup="this.value = this.value.toUpperCase();" />
					</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="Yes" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="No">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="NA">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData6"
									onclick=passDatafromScanButton("scanData6","hide6");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide6"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData7DisableDiv">
				<div class="col-sm-12" id="sectiolDiv">
					<div class="col-sm-7">SECTION 3: APPROVAL</div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
					</div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5">MASTER OR RESPONSIBLE PERSON</div>
					<div class="col-sm-2"></div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<button type="button" id="scanData7"
									onclick=passDatafromScanButton1("scanData7","hide7");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide7"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData8DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5">ATTENDANT</div>
					<div class="col-sm-2"></div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<button type="button" id="scanData8"
									onclick=passDatafromScanButton("scanData8","hide8");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide8"></p></b>
						</div>
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
							<input class="form-control" id="date" name="sec3_from_date"
								placeholder="DD/MM/YYY" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3">TIME</div>
						<div class="col-sm-6">
							<input type="time" name="sec3_from_time" id="datepicker">
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
							<input class="form-control" id="date" name="sec3_to_date"
								placeholder="DD/MM/YYY" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3">TIME</div>
						<div class="col-sm-6">
							<input type="time" name="sec3_to_time" id="datepicker">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7">PERSON ENTERING IN SPACE</div>
			</div>
			<div class="col-sm-12" id="repeateDiv"
				style="border: 0px solid black;">
				<div id="scanData9DisableDiv">
					<div class="col-sm-12" id="mainLine">
						<div class="col-sm-7">
							<b><p id="hide9"></p></b>
						</div>
						<div class="col-sm-5">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<div class="col-sm-6">IN</div>
								<div class="col-sm-6">
									<button type="button" id="scanData9"
										onclick=passDatafromScanButton1("scanData9","hide9");>Scan</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="scanData10DisableDiv">
					<div class="col-sm-12" id="mainLine">
						<div class="col-sm-7">
							<b><p id="hide10"></p></b>
						</div>
						<div class="col-sm-5">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<div class="col-sm-6">OUT</div>
								<div class="col-sm-6">
									<div onmouseover=scan2TestinButtonHover("scanData9","scanData10");>
										<button type="button" id="scanData10"
											onclick=passDatafromScanButton1("scanData10","hide10");>Scan</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="repeateDivButton">
				<div onmouseover=scan2TestinButtonHoverforPlus(
					"scanData9","plus1"); onmouseleave=scan2TestinButtonLeaveforPlus("plus1");>
					<button type="button" style="float: right" id="plus1"
						onclick="addEntry()">+</button>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 4: MONITERING</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<div class="col-sm-4">YES</div>
						<div class="col-sm-4">NO</div>
						<div class="col-sm-4">NA</div>
					</div>
				</div>
			</div>
			<div id="scanData11DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-12">
						ADDITIONAL GAS CHECKS TO BE CARRIED OUT EVERY : <select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
						</select> HOUR
					</div>
				</div>
				<div class="col-sm-12" id="repeateGas">
					<div class="col-sm-12 " id="mainLine">
						<div class="col-sm-7">
							<div class="col-sm-4">
								<div class="col-sm-12">OXYGEN</div>
								<div class="col-sm-12">
									<input type="number" class="gasNumber" id="scanData11Entry1">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="col-sm-12">HYDROCARBON</div>
								<div class="col-sm-12">
									<input type="number" class="gasNumber" id="scanData11Entry2">
								</div>
							</div>
							<div class="col-sm-4">
								<div class="col-sm-12">TOXIC GASES</div>
								<div class="col-sm-12">
									<input type="number" class="gasNumber" id="scanData11Entry3">
								</div>
							</div>
						</div>
						<div class="col-sm-5">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<div class="col-sm-6"></div>
								<div class="col-sm-6">
									<div id="scanDataDiv11" onmouseover=scanData11EnableFunction(
										"scanData11");
							onmouseleave=scanData11EnableFunctionLeave("scanData11");>
										<button type="button" id="scanData11"
											onclick=passDatafromScanButton1("scanData11","hide11");>Scan</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="col-sm-7">
								<b><p id="hide11"></p></b>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-12" id="repeatGasButton">
				<div onmouseover=scan2TestinButtonHoverforPlus(
					"scanData11","plusButton"); onmouseleave=scan2TestinButtonLeaveforPlus("plusButton");>
					<button id="plusButton" type="button" style="float: right"
						onclick="addEntryGas()">+</button>
				</div>
			</div>
			<div id="scanData12DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">IS CONTINIOUS VENTILATION BEING
						MAINTAINED</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio8" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio8">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio8">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData12"
									onclick=passDatafromScanButton("scanData12","hide12");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide12"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData13DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">ARE REPORTS RECEIVED AT REGULAR
						INTERVALS AS AGREED</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio9" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio9">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio9">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData13"
									onclick=passDatafromScanButton("scanData13","hide13");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide13"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-7">SECTION 5: COMPLETION OF WORK</div>
				<div class="col-sm-5">
					<div class="col-sm-6">
						<div class="col-sm-4">YES</div>
						<div class="col-sm-4">NO</div>
						<div class="col-sm-4">NA</div>
					</div>
				</div>
			</div>
			<div id="scanData14DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">JOB COMPLETED AND EQUIPMENTS WITHDRAWN</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio10" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio10">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio10">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData14"
									onclick=passDatafromScanButton("scanData14","hide14");>Scan</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="col-sm-7">
						<b><p id="hide14"></p></b>
					</div>
				</div>
			</div>
			<div id="scanData15DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-7">SPACE SECURED AGAINST ENTRY</div>
					<div class="col-sm-5">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11" checked>
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-6">
								<button id="photoButton">Photo</button>
								IMG
							</div>
							<div class="col-sm-6">
								<button type="button" id="scanData15"
									onclick=passDatafromScanButton("scanData15","hide15");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide15"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData16DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5">MASTER OR RESPONSIBLE PERSON</div>
					<div class="col-sm-2"></div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<button type="button" id="scanData16"
									onclick=passDatafromScanButton("scanData16","hide16");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide16"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div id="scanData17DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5">TEAM LEADER</div>
					<div class="col-sm-2"></div>
					<div class="col-sm-5">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">
								<button type="button" id="scanData17"
									onclick=passDatafromScanButton("scanData17","hide17");>Scan</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide17"></p></b>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12">
				<!-- <div id="checkListOverview" onmouseover="completedMouseOver()"
					onmouseleave="completedMouseLeave()"> -->
				<button type="submit" id="checkListCompleteButton"
					class="btn btn-primary btn-block" onclick="completeChecklist()"
					style="margin-top: 20px; margin-bottom: 20px;">CHECKLIST
					COMPLETED</button>
				<!--  </div> -->
			</div>
	</form>
</body>
<script>
function scanData11EnableFunction(buttonID)
{
	var id1=buttonID+"Entry"+1;
	var id2=buttonID+"Entry"+2;
	var id3=buttonID+"Entry"+3;
	var errorCount=0;
	var gas1=document.getElementById(id1).value;
	var gas2=document.getElementById(id2).value;
	var gas3=document.getElementById(id3).value;
	if(gas1=='')
		{
		errorCount++;
		}
	if(gas2=='')
	{
	errorCount++;
	}
	if(gas2=='')
	{
	errorCount++;
	}
	if(errorCount>0){
		document.getElementById(buttonID).disabled = true;
	}
}
function scanData11EnableFunctionLeave(buttonID)
{
	document.getElementById(buttonID).disabled = false;
}
function scanButton3HoverTestingMethod()
{
	var blankCount=0;
	document.getElementById("scanDataTime3").value;
	var dateValue,timeValue,gas1,gas2,gas3,buttonName;
	buttonName=document.getElementById("scanData3").textContent;
	if(buttonName="Scan"){
	 dateValue = $("#scanDataDate3").datepicker({ dateFormat: 'dd,MM,yyyy' }).val();
	 timeValue=document.getElementById("scanDataTime3").value;
	 gas1=document.getElementById("scanData3Entry1").value;
	 gas2=document.getElementById("scanData3Entry2").value;
	 gas3=document.getElementById("scanData3Entry3").value;
	 
	if(dateValue=='')
		{
		blankCount++;
		}
	if(timeValue=='')
	{
	blankCount++;
	}
	if(gas1=='')
		{
		blankCount++;
		}
	if(gas2=='')
	{
	blankCount++;
	}
	if(gas3=='')
	{
	blankCount++;
	}
	//alert(blankCount);
	if(blankCount>0)
		{
		document.getElementById("scanData3").disabled = true;
		}
	}
}
function scanButton3HLeaveTestingMethod()
{
	var x = document.getElementById("scanData3").textContent;
	 if(x=="Done"){
		 //alert("No need for Testing");
	 }
	 else{
	document.getElementById("scanData3").disabled = false;
	 }
}

var count=0;
var countAddEntry=0;
function addEntry()
{
countAddEntry++;
var inputid1="addEntry"+countAddEntry;
var buttonOneId="ButtonOneId"+countAddEntry;
var divOneId="DivOneId"+countAddEntry;
var buttonTwoId="ButtonTwoId"+countAddEntry;
var divTwoId="DivTwoId"+countAddEntry;
var disableDivOneID=buttonOneId+"DisableDiv";
var disableDivTwoID=buttonTwoId+"DisableDiv";
var plusButtonID="plusButton"+countAddEntry;
var minusButtonID="minusButton"+countAddEntry;
var htmlData='<div id="'+inputid1+'"><div id="'+disableDivOneID+'"><div class="col-sm-12" id="mainLine"><div class="col-sm-7" ><b><p id="'+divOneId+'"></p></b></div><div class="col-sm-5">'
+'<div class="col-sm-6"></div><div class="col-sm-6"><div class="col-sm-6">IN</div><div class="col-sm-6">'
+'<button type="button" class="scanData" id="'+buttonOneId+'" onclick=passDatafromScanButton1("'+buttonOneId+'","'+divOneId+'");>Scan</button></div></div></div></div></div>'
+'<div id="'+disableDivTwoID+'"><div class="col-sm-12" id="mainLine"><div class="col-sm-7" ><b><p id="'+divTwoId+'"></p></b></div><div class="col-sm-5">'
+'<div class="col-sm-6"></div><div class="col-sm-6"><div class="col-sm-6">OUT</div><div class="col-sm-6">'
+'<div onmouseover=scan2TestinButtonHover("'+buttonOneId+'","'+buttonTwoId+'");>'
+'<button type="button" class="scanData" id="'+buttonTwoId+'" onclick=passDatafromScanButton1("'+buttonTwoId+'","'+divTwoId+'");>Scan</button></div></div></div></div></div></div></div>';
var buttonCreate1='<div onmouseover=scan2TestinButtonHoverforMinus("'+buttonOneId+'","'+minusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforMinus("'+minusButtonID+'");>'
	+'<button type="button" style="float:right;" onclick=displayHideaddEntry("'+inputid1+'"); id="'+minusButtonID+'">-</button></div>'
+'<div onmouseover=scan2TestinButtonHoverforPlus("'+buttonOneId+'","'+plusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforPlus("'+plusButtonID+'");><button type="button"  style="float:right" onclick="addEntry()" id="'+plusButtonID+'">+</button></div>'; 
document.getElementById("repeateDiv").innerHTML +=htmlData;
jQuery('#repeateDivButton').html('');
document.getElementById("repeateDivButton").innerHTML +=buttonCreate1;
}
function scan2TestinButtonHover(button1ID,button2ID)
{
	//alert("Yes, I Called"+button1ID+"  "+button2ID);
	var x = document.getElementById(button1ID).textContent;
	var y = document.getElementById(button2ID).textContent;
	//document.getElementById(button1ID).disabled = true;
	//document.getElementById(button2ID).disabled = true;
	if(y=='Scan')
		{
		if(x=='Scan')
			{
			document.getElementById(button2ID).disabled = true;
			}
		else{
			
			document.getElementById(button2ID).disabled = false;
		}
		}
}
function scan2TestinButtonHoverforPlus(button1ID,button2ID)
{
	document.getElementById(button2ID).disabled = true;
	var x = document.getElementById(button1ID).textContent;
	if(x=='Done'){
		document.getElementById(button2ID).disabled = false;
	}
	else{
		document.getElementById(button2ID).disabled = true;
	}
}
function scan2TestinButtonLeaveforPlus(button2ID){
	document.getElementById(button2ID).disabled = false;
}
function scan2TestinButtonHoverforMinus(button1ID,button2ID)
{
	document.getElementById(button2ID).disabled = true;
	var x = document.getElementById(button1ID).textContent;
	if(x=='Done'){
		document.getElementById(button2ID).disabled = true;
		
	}
	else{
		document.getElementById(button2ID).disabled = false;
	}
}
function scan2TestinButtonLeaveforMinus(button2ID){
	document.getElementById(button2ID).disabled = false;
}
/*function scan2TestinButtonLeave(button1ID,button2ID)
{
	var x = document.getElementById(button1ID).textContent;
	var y = document.getElementById(button2ID).textContent;	
	if(y=='Scan')
		{
		document.getElementById(button2ID).disabled = false;
		}
} */

function addEntryGas(){
count++;
var buttonId="ButtonId"+count;
var gas11=buttonId+"Entry1";
var gas22=buttonId+"Entry2";
var gas33=buttonId+"Entry3";
var divId="DivOneId"+count;
var inputid="mainLine"+count;
var disableDivID=buttonId+"DisableDiv";
var plusButtonID="plusButton"+countAddEntry;
var minusButtonID="minusButton"+countAddEntry;
var htmlData='<div id="'+inputid+'"><div id="'+disableDivID+'"><div class="col-sm-12 " id="mainLine"><div class="col-sm-7"><div class="col-sm-4">'
+'<div class="col-sm-12">OXYGEN</div><div class="col-sm-12"><input id="'+gas11+'" type="number" class="gasNumber"></div>'
+'</div><div class="col-sm-4"><div class="col-sm-12">HYDROCARBON</div><div class="col-sm-12"><input type="number" class="gasNumber" id="'+gas22+'"></div>'
+'</div><div class="col-sm-4"><div class="col-sm-12">TOXIC GASES</div><div class="col-sm-12"><input type="number" class="gasNumber" id="'+gas33+'"></div></div></div>'
+'<div class="col-sm-5"><div class="col-sm-6"></div><div class="col-sm-6"><div class="col-sm-6"></div>'
+'<div class="col-sm-6"><div id="scanDataDiv11" onmouseover=scanData11EnableFunction("'+buttonId+'"); onmouseleave=scanData11EnableFunctionLeave("'+buttonId+'");>'
+'<button class="scanData" id="'+buttonId+'" onclick=passDatafromScanButton1("'+buttonId+'","'+divId+'");>Scan</button></div></div></div></div></div>'
+'<div class="col-sm-12" ><div class="col-sm-7">'
+'<b><p id="'+divId+'"></p></b></div></div></div></div>'
var buttonCreate='<div onmouseover=scan2TestinButtonHoverforMinus("'+buttonId+'","'+minusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforMinus("'+minusButtonID+'");>'
	+'<button type="button" style="float:right;"onclick=displayHide("'+inputid+'"); id="'+minusButtonID+'">-</button></div>'
+'<div onmouseover=scan2TestinButtonHoverforPlus("'+buttonId+'","'+plusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforPlus("'+plusButtonID+'");>'
+'<button type="button"  style="float:right" onclick="addEntryGas()" id="'+plusButtonID+'">+</button></div>';
document.getElementById("repeateGas").innerHTML +=htmlData;
jQuery('#repeatGasButton').html('');
document.getElementById("repeatGasButton").innerHTML =buttonCreate;
}
function displayShow(divID,buttonID)
{
var y = document.getElementById(divID);
y.style.display = "block";
var x = document.getElementById(buttonID);
x.style.background="#5398CD";
document.getElementById(buttonID).innerHTML = "Done";
}
function displayHideaddEntry(divID)
{
countAddEntry--;
var inputid="addEntry"+countAddEntry;
var removeDiv="#"+divID;
$(removeDiv).remove();
//var y = document.getElementById(divID);
//y.style.display = "none";
if(countAddEntry==0){
var buttonCreate='<button type="button"  style="float:right" onclick="addEntry()">+</button>';
jQuery('#repeateDivButton').html('');
document.getElementById("repeateDivButton").innerHTML=buttonCreate;
}else{
var buttonCreate1='<button type="button" style="float:right;" onclick=displayHideaddEntry("'+inputid+'");>-</button>'
+'<button type="button" style="float:right" onclick="addEntry()">+</button>';
jQuery('#repeateDivButton').html('');
document.getElementById("repeateDivButton").innerHTML=buttonCreate1;
}
}
function displayHide(divID)
{
count--;
var inputid="mainLine"+count;
var removeDiv="#"+divID;
$(removeDiv).remove();
//var y = document.getElementById(divID);
//y.style.display = "none";
if(count==0){
var buttonCreate2='<button type="button"  style="float:right" onclick="addEntryGas()">+</button>';
jQuery('#repeatGasButton').html('');
document.getElementById("repeatGasButton").innerHTML+=buttonCreate2;
}else{
var buttonCreate1='<button type="button" style="float:right;"onclick=displayHide("'+inputid+'");>-</button>'
var buttonCreate2='<button type="button"  style="float:right" onclick="addEntryGas()">+</button>';
jQuery('#repeatGasButton').html('');
document.getElementById("repeatGasButton").innerHTML+=buttonCreate1;
document.getElementById("repeatGasButton").innerHTML+=buttonCreate2;
}
}
var i;
function completeChecklist()
{
var entryNotFilled=0;
for(i=1;i<19;i++)
{
var buttonid="scanData"+i;
var x = document.getElementById(buttonid).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonid);
colorCode.style.background="yellow";
entryNotFilled++;
}else{
//alert("its done");
}
}
for(var i=1;i<=count;i++){
var buttonidforcolor="ButtonId"+i;
var x = document.getElementById(buttonidforcolor).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonidforcolor);
colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
}
for(var i=1;i<=countAddEntry;i++){
var buttonidforcolor1="ButtonOneId"+i;
var x = document.getElementById(buttonidforcolor1).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonidforcolor1);
colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
var buttonidforcolor2="ButtonTwoId"+i;
var y = document.getElementById(buttonidforcolor2).textContent;
if(y=="Scan"){
var colorCode = document.getElementById(buttonidforcolor2);
colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
}
if(entryNotFilled>0){
alert("Please Fill Up hilighted Entry");
}
else{
alert("its done");
}
}
</script>
<script>
function completedMouseOver()
{
var entryNotFilled=0;
for(i=1;i<18;i++)
{
var buttonid="scanData"+i;
var x = document.getElementById(buttonid).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonid);
//colorCode.style.background="yellow";
entryNotFilled++;
}else{
//alert("its done");
}
}
for(var i=1;i<=count;i++){
var buttonidforcolor="ButtonId"+i;
var x = document.getElementById(buttonidforcolor).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonidforcolor);
//colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
}
for(var i=1;i<=countAddEntry;i++){
var buttonidforcolor1="ButtonOneId"+i;
var x = document.getElementById(buttonidforcolor1).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonidforcolor1);
//colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
var buttonidforcolor2="ButtonTwoId"+i;
var y = document.getElementById(buttonidforcolor2).textContent;
if(y=="Scan"){
var colorCode = document.getElementById(buttonidforcolor2);
//colorCode.style.background="yellow";
entryNotFilled++;
}
else{
//alert("its done");
}
}
if(entryNotFilled>0){
document.getElementById("checkListCompleteButton").disabled = true;
}
else{
alert("its done");
}
}
function completedMouseLeave()
{
document.getElementById("checkListCompleteButton").disabled = false;
}
</script>
</html>