<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/js/bootstrap-select.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<link rel="stylesheet" href="time.css">
<script>

	$(document).ready(
			function() {
				var date_input = $('input[id="datepicker"]'); //our date input has the name "date"
				var container = $('.bootstrap-iso form').length > 0 ? $(
						'.bootstrap-iso form').parent() : "body";
				date_input.datepicker({
					format : 'dd-M-yyyy',
					 endDate: '+0d',
					container : container,
					todayHighlight : true,
					autoclose : true,
				})
			});
</script>
<script type="text/javascript">
            $(function () {
                $('#timepicker1').datetimepicker({
                    format: 'HH:mm'
                });
            });
            $(function () {
                $('#timepicker2').datetimepicker({
                    format: 'HH:mm'
                });
            });
            $(function () {
                $('#timepicker3').datetimepicker({
                    format: 'HH:mm'
                });
            });
         
        </script>
<script>
					function deg_to_dmslatitude(deg) {
						var d = Math.floor(deg);
						var minfloat = (deg - d) * 60;
						var m = Math.floor(minfloat);
						var secfloat = (minfloat - m) * 60;
						var s = Math.round(secfloat);
						// After rounding, the seconds might become 60. These two
						// if-tests are not necessary if no rounding is done.
						if (s == 60) {
							m++;
							s = 0;
						}
						if (m == 60) {
							d++;
							m = 0;
						}
						var side;
						if (d > 0) {
							side = "N";
						} else {
							side = "S";
							d = d * (-1);
						}
						return ("" + d + " Deg " + m + " Min " + s + " Sec " + side);
					}
					function deg_to_dmslongitude(deg) {
						var d = Math.floor(deg);
						var minfloat = (deg - d) * 60;
						var m = Math.floor(minfloat);
						var secfloat = (minfloat - m) * 60;
						var s = Math.round(secfloat);
						// After rounding, the seconds might become 60. These two
						// if-tests are not necessary if no rounding is done.
						if (s == 60) {
							m++;
							s = 0;
						}
						if (m == 60) {
							d++;
							m = 0;
						}
						var side;
						if (d > 0) {
							side = "E";
						} else {
							side = "W";
							d = d * (-1);
						}
						return ("" + d + " Deg " + m + " Min " + s + " Sec " + side);
					}
</script>
<script>
function getLocation(divID) {
	
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(pos) {
    //You have your locaton here
      console.log("Latitude: " + pos.coords.latitude +
        "Longitude: " + pos.coords.longitude);
		document.getElementById(divID).innerHTML += '<p style="color:green">'+deg_to_dmslatitude(pos.coords.latitude)+" , "+deg_to_dmslongitude(pos.coords.longitude)+'</p>';
    });
  } else {
    console.log("Geolocation is not supported by this browser.");
  }
}
</script>
<script>
    $(document).ready(function(){
        var date_input=$('input[id="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format:'dd-M-yyyy',
            endDate: '+0d',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    });
</script>
<script>
var b_id;
var divID;
function passDatafromPhotoButton(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
						.get(
								"ImageProfile",
								function(responseText) {
									$(divID).text(responseText);
									
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
	
		if(div_value==null|| div_value=='unsuccessful...! try again')
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
						$(divID).text("Place your thumb on the sensor");
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
											    $(disableDivID).attr('readonly', true);
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
{
var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	divID1=showDataDivID;
	div_value=document.getElementById(divID1).textContent;
	//(div_value);
	b_id="#"+buttonID;
	div_num_value=divID1.substr(4,5);
	div_h_value=divID1.substr(0,4);
	decrease_div=--div_num_value;
	final_decresed_div=div_h_value.concat(decrease_div);
	div_value= document.getElementById(final_decresed_div).textContent;
	//(div_value);
		if(div_value=='Place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
						$(divID).text("Place your thumb on the sensor");
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
{	//("from passData");
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Call_InComple",
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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function passDatafromScanButton(buttonID,showDataDivID)
{	
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Safety3",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
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
<script>
var b_id;
var divID;
var div_value;
var after_replace,value_for_same_name;
function passDatafromScanButton_auto_out(buttonID,showDataDivID)
{
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	//(after_replace);
	div_value=document.getElementById(after_replace).textContent;
	//(div_value);
		if(div_value=='Place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
			//(value_for_same_name);
						$(divID).text("Place your thumb on the sensor");
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

<!--************ Servlet calling for scan button*************** -->
<script>
var b_id;
var divID;
var x = document.getElementById("myAudio");
function scan_btn1(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
																		 $(b_id).prop('disabled',true);

						$
							    .get(
										"Scan_btn1",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();

											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												notautharised();
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												 $(b_id).prop('disabled',true);
												$(disableDivID).attr('readonly', true);
												detailsRegistered();
												getLocation(showDataDivID);
												
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function scan_btn2(buttonID,showDataDivID)
{
	readyForScan();
	
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn2",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();

											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												notautharised();
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												 $(b_id).prop('disabled',true);
													$(disableDivID).attr('readonly', true);
													detailsRegistered();
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function scan_btn3(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn3",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												notautharised();
													}
											
											else {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												 $(b_id).prop('disabled',true);
												 
													$(disableDivID).attr('readonly', true);
												
													detailsRegistered();
											}
										});						}
</script>
<script>
var b_id;
var divID;
function scan_btn4(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn4",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();

											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												notautharised();
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>

<script>
var b_id;
var divID;
function scan_btn5(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn5",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>

<script>
var b_id;
var divID;
function scan_btn6(buttonID,showDataDivID)
{readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn6",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>

<script>
var b_id;
var divID;
function scan_btn7(buttonID,showDataDivID)
{readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn7",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn8(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn8",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn9(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn9",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn10(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn10",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn11(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn11",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn12(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn12",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn13(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn13",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn14(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn14",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn15(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn15",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn16(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						 $(b_id).prop('disabled',true);

						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Scan_btn16",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>

<script>
var b_id;
var divID;
function scan_btn17(buttonID,showDataDivID)
{
	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
																		 $(b_id).prop('disabled',true);

						$
								.get(
										"Scan_btn17",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
												tryAgain();
											} 
											else if('Sorry You are Not Authorised for this :('==responseText)
													{
												 $(b_id).prop('disabled',false);

												$(divID).css("color", "red");
													}
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});						}
</script>
<!-- **********end of scan button calling ***********************-->
<!-- @@@@@@@@@@   for auto scan_button  @@@@@@@@@@@@ -->
<script>
var b_id;
var divID;
function auto_scan_in_31(buttonID,showDataDivID)
{	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_in_btn31",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();
											} 
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function auto_scan_in_32(buttonID,showDataDivID)
{	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_in_btn32",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();
											} 
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>

<script>
var b_id;
var divID;
function auto_scan_in_33(buttonID,showDataDivID)
{	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_in_btn33",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();
											} 
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function auto_scan_in_34(buttonID,showDataDivID)
{	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_in_btn34",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();
											} 
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>

<script>
var b_id;
var divID;
function auto_scan_in_35(buttonID,showDataDivID)
{	
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	

						$(divID).text("Place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_in_btn35",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();
											} 
											
											else {
												$(divID).css("color", "blue");
												var x = document.getElementById(b_id);
												$(b_id).text("Done");
												$(b_id).css("background-color", "#5398CD");
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
var div_value;
var after_replace,value_for_same_name;
function auto_scan_out_31(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	div_value=document.getElementById(after_replace).textContent;

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
										"Auto_scan_out_btn31",
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
												tryAgain();

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
var after_replace,value_for_same_name;
function auto_scan_out_32(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	
	div_value=document.getElementById(after_replace).textContent;
	
		if(div_value=='place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			
			value_for_same_name=div_value.substr(0,23);
			//(value_for_same_name);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_out_btn32",
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
												tryAgain();

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
var after_replace,value_for_same_name;
function auto_scan_out_33(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	//(after_replace);
	div_value=document.getElementById(after_replace).textContent;
	//(div_value);
		if(div_value=='place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
			//(value_for_same_name);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_out_btn33",
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
												tryAgain();

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
var after_replace,value_for_same_name;
function auto_scan_out_34(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	//(after_replace);
	div_value=document.getElementById(after_replace).textContent;
	//(div_value);
		if(div_value=='place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
			//(value_for_same_name);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_out_btn34",
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
												tryAgain();

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
var after_replace,value_for_same_name;
function auto_scan_out_35(buttonID,showDataDivID)
{
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	after_replace = showDataDivID.replace("Two", "One");
	//(after_replace);
	div_value=document.getElementById(after_replace).textContent;
	//(div_value);
		if(div_value=='place your thumb on the sensor' || div_value=='unsuccessful...! try again' || div_value==null)
		{
			$(divID).text("In First then Out");
			$(divID).css("color", "red");
		}
		else{
			value_for_same_name=div_value.substr(0,23);
			//(value_for_same_name);
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Auto_scan_out_btn35",
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
												tryAgain();

											} else {
												$(divID).text("Only in person can out");
												$(divID).css("color", "red");
												
											}
										});
		}
						}
</script>
<!--@@@@@@@@@@@@@@ Sec_4 scan button   @@@@@@@@@@@@ -->
<script>
var b_id;
var divID;
//pppp
function sec4_scan_btn(buttonID,showDataDivID)
{	//("sec4_scan_btn");
//(showDataDivID);
readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn1(buttonID,showDataDivID)
{	//("sec4_scan_btn1");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn1",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn2(buttonID,showDataDivID)
{	//("sec4_scan_btn2");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn2",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn3(buttonID,showDataDivID)
{	//("sec4_scan_btn3");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn3",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn4(buttonID,showDataDivID)
{	//("sec4_scan_btn4");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn4",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn5(buttonID,showDataDivID)
{	//("sec4_scan_btn5");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn5",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn6(buttonID,showDataDivID)
{	//("sec4_scan_btn6");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn6",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn7(buttonID,showDataDivID)
{	//("sec4_scan_btn7");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn7",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<script>
var b_id;
var divID;
function sec4_scan_btn8(buttonID,showDataDivID)
{	//("sec4_scan_btn8");
	readyForScan();
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	var textBodyValue = encodeURIComponent(document.getElementById(showDataDivID).value);
	  
						$(divID).text("place your thumb on the sensor");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
								.get(
										"Sec4_scan_btn8",
										function(responseText) {
											$(divID).text(responseText);
											if ('unsuccessful...! try again' == responseText) {
												$(divID).css("color", "red");
												tryAgain();

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
												$(disableDivID).attr('readonly', true);
											}
										});
						}
</script>
<!-- **** end of sec4 scan buttons&&&&& photo button is start **** -->
<script>
var b_id;
var divID;
function passDatafromPhotoButton(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
						.get(
								"ImageProfile",
								function(responseText) {
									$(divID).text(responseText);
									
								});
						}
</script>
<script>
var b_id;
var divID;
function photo_btn1(buttonID,showDataDivID,img)
{
	var queryString = '?xmlData='+'1.1';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
						.get(
								"##",
								function(responseText) {
									$(divID).text(responseText);
									
								});
						}
</script>
<script>
var b_id;
var divID;
function photo_btn2(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	
	
	
	var queryString = '?xmlData='+'1.2';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn3(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var queryString = '?xmlData='+'1.3';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn4(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var queryString = '?xmlData='+'2.1';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn5(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	
	var queryString = '?xmlData='+'2.2';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn6(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var queryString = '?xmlData='+'2.3';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
					
						}
</script>
<script>
var b_id;
var divID;
function photo_btn7(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	var queryString = '?xmlData='+'3.1';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn8(buttonID,showDataDivID,img)
{
	var queryString = '?xmlData='+'3.2';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	//(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn9(buttonID,showDataDivID,img)
{
	
	
	var queryString = '?xmlData='+'4.1';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	////(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
						.get(
								"Image_btn9",
								function(responseText) {
									$(divID).text(responseText);
									
								});
						}
</script>
<script>
var b_id;
var divID;
function photo_btn10(buttonID,showDataDivID,img)
{
	var queryString = '?xmlData='+'4.2';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	////(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn31(buttonID,showDataDivID,img)
{
	var queryString = '?xmlData='+'5.1';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	////(buttonID+" "+showDataDivID+" "+img);
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						}
</script>
<script>
var b_id;
var divID;
function photo_btn32(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	
	var queryString = '?xmlData='+'5.2';
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						$
						.get(
								"Image_btn32",
								function(responseText) {
									$(divID).text(responseText);
									
								});
						}
 


</script>
<!-- **********end of image button calling ***********************-->


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

.iconButton {
	background-color: white; /* Green */
	border: none;
	color: white;
	padding: 5px 10px;
	border-radius: 20%;
	box-shadow: 3px solid red;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.scanButton :hover {
	background-color: red; /* Green */
	border: none;
	color: white;
	padding: 5px 10px;
	border-radius: 20%;
	box-shadow: 3px solid red;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
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

#normalFont {
	font-size: 20px;
}

#scanImage {
	height: 50px;
	width: 50px;
}

#yesnona {
	height: 20px;
	width: 20px;
}

//
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 60%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

#sectiolDiv {
	background-color: #b8dde5;
}

.form-control {
	margin-top: 5px;
}

.input-group date {
	margin-top: 5px;
}
</style>
</head>
<body style="background-color: white">
	<audio id="readyforScan">
		<source src="AUDIO/scanaudio.mp3" type="audio/mpeg">
	</audio>
	<audio id="detailsSaved">
		<source src="AUDIO/detailsregistered.mp3" type="audio/mpeg">
	</audio>
	<audio id="tryagain">
		<source src="AUDIO/tryagain.mp3" type="audio/mpeg">
	</audio>
	<audio id="notautharised">
		<source src="AUDIO/notautharised.mp3" type="audio/mpeg">
	</audio>
	<audio id="preparePicture">
		<source src="AUDIO/preparePicture.mp3" type="audio/mpeg">
	</audio>
	<audio id="pictureSaved">
		<source src="AUDIO/pictureSaved.mp3" type="audio/mpeg">
	</audio>
	<script>
function readyForScan() { 
	var x = document.getElementById("readyforScan"); 	
	  x.play(); 
	}
function detailsRegistered() { 
	var x = document.getElementById("detailsSaved"); 	
	  x.play(); 
	}
function tryAgain() { 
	var x = document.getElementById("tryagain"); 	
	  x.play(); 
	}
function notautharised() { 
	var x = document.getElementById("notautharised"); 	
	  x.play(); 
	}
function preparePicture() { 
	var x = document.getElementById("preparePicture"); 	
	  x.play();
	
	}
function pictureSaved() { 
	var x = document.getElementById("pictureSaved"); 	
	  x.play(); 
	}
</script>

	<%-- <%String file=request.getParameter("pic_name");%> --%>
	<%
		String permit = request.getAttribute("permit_name").toString();
		System.out.println("permit:----" + permit);
	%>
	<form action="Complete_check" method="post">
		<div class="col-sm-12" id="heading">
			<div class="col-sm-2">
				<a href="includechecklist.jsp"><button type="button"
						style="margin-top: 10px; font-size: 20px; font-weight: bold; color: black;"
						class="iconButton">
						<img src="images/home.png" height="50px" width:50px />
					</button></a>
			</div>
			<center>
				<h1>SAF-05 ENCLOSED SPACE ENTRY PERMIT</h1>
			</center>
		</div>

		<div class="col-sm-12" id="scrolabbleDiv"
			style="border-top: 2px solid black;">
			<div class="col-sm-12">
				<div class="col-sm-4" id="normalFont">
					PERMIT : NTS |<%=permit%>;
				</div>
			</div>
			<div class="col-sm-12" style="margin-top: 15px">
				<div class="col-sm-5" id="normalFont">NAME / LOCATION OF
					ENCLOSED SAPCE</div>
				<div class="col-sm-6">
					<textarea cols="40" rows="3" name="enclo_space"
						onkeyup="this.value = this.value.toUpperCase();"
						style="margin-bottom: 10px;"></textarea>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="col-sm-5" id="normalFont">REASON FOR ENTRY INTO
					ENCLOSED SPACE</div>
				<div class="col-sm-6">
					<textarea cols="40" rows="3" name="reason_enclo_space"
						onkeyup="this.value = this.value.toUpperCase();"></textarea>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-5" id="normalFont">SECTION 1: PRE ENTRY
					PREPRATION</div>
				<div class="col-sm-7">
					<div class="col-sm-6" id="normalFont">
						<div class="col-sm-4" id="normalFont">YES</div>
						<div class="col-sm-4" id="normalFont">NO</div>
						<div class="col-sm-4" id="normalFont">NA</div>
					</div>
				</div>
			</div>
			<div id="scanData1DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">HAS THE SPACE BEEN
						THOROUGHLY VENTILATED BY MECHANICAL MEANS</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio1" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton1" class="iconButton"
									onclick=photo_btn1("photoButton1","pic1_Loc","image1");
									>
									<img src="images/cameraicon.png"
										style="height: 50px; width: 50px" />
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton1" class="iconButton"
									onclick=addComment("commentButton1");>
									<img src="images/commenticon.png"
										style="height: 50px; width: 50px" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData1" class="iconButton"
									onclick=scan_btn1("scanData1","hide1");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-7">
							<b><p id="hide1"></p></b>
						</div>
					</div>

				</div>
			</div>
			<div id="scanData2DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">HAS THE SPACE BEEN
						CLEANED WHERE NECESSARY</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio2" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton2" class="iconButton"
									onclick=photo_btn2("photoButton2","pic2_Loc","image2");>
									<img src="images/cameraicon.png" id="scanImage" />
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton2" class="iconButton"
									onclick=addComment("commentButton2");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>


							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData2" class="iconButton"
									onclick=scan_btn2("scanData2","hide2");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">HAS SPACE BEEN TESTED
						AND FOUND SAFE FOR ENTRY</div>
					<div class="col-sm-7"></div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5">
						<div class="col-sm-12">
							<div class="col-sm-6" id="normalFont">DATE</div>
							<div class="col-sm-6">
								<input class="form-control" id="datepicker" name="sec1_date"
									placeholder="DD/MM/YYY" type="text" />
							</div>
						</div>
						<div class="col-sm-12">
							<div class="col-sm-6" name="sec1_time" id="normalFont">TIME</div>
							<div class="col-sm-6">
								<div class='input-group date' id='timepicker1'
									style="margin-top: 5px;">
									<input type='text' class="form-control"
										style="margin-top: 0px;" /> <span class="input-group-addon"
										id="watch"> <span class="glyphicon glyphicon-time"></span>
									</span>
								</div>
							</div>
						</div>
						<div class="col-sm-5"></div>
					</div>
					<div class="col-sm-12 " id="mainLine">
						<div class="col-sm-5">

							<div class="col-sm-6" id="normalFont">OXYGEN</div>
							<div class="col-sm-4">
								<input type="number" name="sec1_oxygen" class="form-control"
									id="scanData3Entry1">
							</div>


							<div class="col-sm-6" id="normalFont">HYDROCARBON</div>
							<div class="col-sm-4">
								<input type="number" name="sec1_hydrocarbon"
									class="form-control" id="scanData3Entry2">
							</div>


							<div class="col-sm-6" id="normalFont">TOXIC GASES</div>
							<div class="col-sm-4">
								<input type="number" name="sec1_toxic_gas" class="form-control"
									id="scanData3Entry3">
							</div>

						</div>
						<div class="col-sm-7">
							<div class="col-sm-6">
								<div class="col-sm-4">
									<label class="radio-inline"> <input type="radio"
										name="optradio4" value="Yes" checked id="yesnona">
									</label>
								</div>
								<div class="col-sm-4">
									<label class="radio-inline"> <input type="radio"
										name="optradio4" value="No" id="yesnona">
									</label>
								</div>
								<div class="col-sm-4">
									<label class="radio-inline"> <input type="radio"
										name="optradio4" value="NA" id="yesnona">
									</label>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="col-sm-4">
									<button type="button" id="photoButton3" class="iconButton"
										onclick=photo_btn3("photoButton3","pic3_Loc","image3");
									>
										<img src="images/cameraicon.png"
											style="height: 50px; width: 50px" />
									</button>
								</div>
								<div class="col-sm-4">

									<button type="button" id="commentButton3" class="iconButton"
										onclick=addComment("commentButton3");>
										<img src="images/commenticon.png" id="scanImage" />
									</button>
								</div>
								<div class="col-sm-4">

									<!-- 		<div id="scanDataDiv3"
									onmouseover="scanButton3HoverTestingMethod()"
									onmouseleave="scanButton3HLeaveTestingMethod()">    -->
									<button class="iconButton" type="button" id="scanData3"
										onclick=scan_btn3("scanData3","hide3");>
										<img src="images/scanicon.png" id="scanImage" />
									</button>
									<!-- 		</div>		  -->
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
			</div>
			<div id="scanData4DisableDiv">
				<div class="col-sm-12" id="sectiolDiv">
					<div class="col-sm-5" id="normalFont">SECTION 2: PRE ENTRY
						CHECK</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4" id="normalFont">YES</div>
							<div class="col-sm-4" id="normalFont">NO</div>
							<div class="col-sm-4" id="normalFont">NA</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">I HAVE RECEIVED
						PERMISSION FROM THE RESPONSIBLE OFFICER TO ENTER THE ENCLOSED
						SPACE</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio5" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<button type="button" id="photoButton4" class="iconButton"
									onclick=photo_btn4("photoButton4","pic4_Loc","image4");
									>
									<img src="images/cameraicon.png">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton3" class="iconButton"
									onclick=addComment("commentButton4");>
									<img src="images/commenticon.png"
										style="height: 50px; width: 50px" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData4" class="iconButton"
									onclick=scan_btn4("scanData4","hide4");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">I AGREED AND UNDERSTAND
						THE COMMUNICATION PROCEDURE</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio6" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton5" class="iconButton"
									onclick=photo_btn5("photoButton5","pic5_Loc","image5");>
									<img src="images/cameraicon.png" id="scanImage">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton3" class="iconButton"
									onclick=addComment("commentButton5");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>

							<div class="col-sm-4">
								<button type="button" id="scanData5" class="iconButton"
									onclick=scan_btn5("scanData5","hide5");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">
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
						</select> MINUTES BY <span><input type="text" name="interval_by"
							class="form-control"
							onkeyup="this.value = this.value.toUpperCase();" /></span>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio7" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6 ">
							<div class="col-sm-4">

								<button type="button" id="photoButton" class="iconButton"
									onclick=photo_btn6("photoButton6","pic6_Loc","image6");
									>
									<img src="images/cameraicon.png" id="scanImage">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton6" class="iconButton"
									onclick=addComment("commentButton6");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>

							<div class="col-sm-4">
								<button type="button" id="scanData6" class="iconButton"
									onclick=scan_btn6("scanData6","hide6");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">SECTION 3: APPROVAL</div>
					<div class="col-sm-7">
						<div class="col-sm-6"></div>
					</div>
				</div>
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">MASTER OR RESPONSIBLE
						PERSON</div>
					<div class="col-sm-7">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton7" class="iconButton"
									onclick=photo_btn7("photoButton7","pic7_Loc","image7");
									>
									<img src="images/cameraicon.png">
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton7" class="iconButton"
									onclick=addComment("commentButton7");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>

							<div class="col-sm-4">
								<button type="button" id="scanData7" class="iconButton"
									onclick=scan_btn7("scanData7","hide7");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">ATTENDANT</div>
					<div class="col-sm-7">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton8" class="iconButton"
									onclick=photo_btn8("photoButton8","pic8_Loc","image8"); >
									<img src="images/cameraicon.png" id="scanImage">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton8" class="iconButton"
									onclick=addComment("commentButton8");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData8" class="iconButton"
									onclick=scan_btn8("scanData8","hide8");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
				<div class="col-sm-7" id="normalFont">PERIOD OF VALIDITY</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5" id="normalFont">FROM :</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-3" id="normalFont">Date</div>
						<div class="col-sm-6" style="margin-top: 5px;">
							<input class="form-control" style="margin-top: 0px;"
								id="datepicker" name="sec3_from_date" placeholder="DD/MM/YYY"
								type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3" id="normalFont">TIME</div>
						<div class="col-sm-6">
							<div class='input-group date' style="margin-top: 5px;"
								id='timepicker2'>
								<input type='text' class="form-control" style="margin-top: 0px;" />
								<span class="input-group-addon" id="watch"> <span
									class="glyphicon glyphicon-time"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-5" id="normalFont">TO:</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-3" id="normalFont">Date</div>
						<div class="col-sm-6">
							<input class="form-control" id="datepicker" name="sec3_to_date"
								placeholder="DD/MM/YYY" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="col-sm-3" id="normalFont">TIME</div>
						<div class="col-sm-6">
							<div class='input-group date' id='timepicker3'>
								<input type='text' class="form-control" style="margin-top: 0px;" />
								<span class="input-group-addon" id="watch"> <span
									class="glyphicon glyphicon-time"></span>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-7" id="normalFont">PERSON ENTERING IN SPACE</div>
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
								<div class="col-sm-6" id="normalFont">IN</div>
								<div class="col-sm-6">
									<button type="button" id="scanData9" class="iconButton"
										onclick=auto_scan_in_31("scanData9","hide9"); >
										<img src="images/scanicon.png" id="scanImage" />
									</button>
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
								<div class="col-sm-6" id="normalFont">OUT</div>
								<div class="col-sm-6">
									<div onmouseover=scan2TestinButtonHover("scanData9","scanData10");>
										<button type="button" id="scanData10" class="iconButton"
											onclick=auto_scan_out_31("scanData10","hide10"); >
											<img src="images/scanicon.png" id="scanImage" />
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" id="repeateDivButton">
				<div onmouseover=scan2TestinButtonHoverforPlus(
					"scanData9","plus1"); 
						onmouseleave=scan2TestinButtonLeaveforPlus("plus1");>
					<button type="button" style="float: right" id="plus1"
						onclick="addEntry()">+</button>
				</div>
			</div>
			<div class="col-sm-12" id="sectiolDiv">
				<div class="col-sm-5" id="normalFont">SECTION 4: MONITERING</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-4" id="normalFont">YES</div>
						<div class="col-sm-4" id="normalFont">NO</div>
						<div class="col-sm-4" id="normalFont">NA</div>
					</div>
				</div>
			</div>

			<div class="col-sm-12" id="mainLine">
				<div class="col-sm-12" id="normalFont">
					ADDITIONAL GAS CHECKS TO BE CARRIED OUT EVERY : <select
						name="sec4_everyHour">
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
				<div id="scanData11DisableDiv">
					<div class="col-sm-12 " id="mainLine">
						<div class="col-sm-5">
							<div class="col-sm-6" id="normalFont">OXYGEN</div>
							<div class="col-sm-4">
								<input type="number" name="sec4_oxy" class="form-control"
									id="scanData3Entry1">
							</div>


							<div class="col-sm-6" id="normalFont">HYDROCARBON</div>
							<div class="col-sm-4">
								<input type="number" name="sec4_hydro" class="form-control"
									id="scanData3Entry2">
							</div>


							<div class="col-sm-6" id="normalFont">TOXIC GASES</div>
							<div class="col-sm-4">
								<input type="number" name="sec4_tosic" class="form-control"
									id="scanData3Entry3">
							</div>
						</div>
						<div class="col-sm-7">
							<div class="col-sm-6"></div>
							<div class="col-sm-6">

								<div class="col-sm-4"></div>
								<div class="col-sm-4"></div>
								<div class="col-sm-4">
									<button type="button" id="scanData11" class="iconButton"
										onclick=scan_btn12("scanData11","hide11"); >
										<img src="images/scanicon.png" id="scanImage" />
									</button>
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
					"scanData11","plusButton");
					 onmouseleave=scan2TestinButtonLeaveforPlus("plusButton");>
					<button id="plusButton" type="button" style="float: right"
						onclick="addEntryGas()">+</button>
				</div>
			</div>
			<div id="scanData12DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">IS CONTINIOUS
						VENTILATION BEING MAINTAINED</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio8" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="No" name="optradio8" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="NA" name="optradio8" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton9" class="iconButton"
									onclick=photo_btn9("photoButton9","pic9_Loc","image9");>
									<img src="images/cameraicon.png" />
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton12" onclick=addComment(
									"commentButton12");  class="iconButton">
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData12" class="iconButton"
									onclick=scan_btn12("scanData12","hide12");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">ARE REPORTS RECEIVED AT
						REGULAR INTERVALS AS AGREED</div>
					<div class="col-sm-7 ">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio9" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="No" name="optradio9" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="NA" name="optradio9" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton10" class="iconButton"
									onclick=photo_btn10("photoButton10","pic10_Loc","image10");
									>
									<img src="images/cameraicon.png">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton13" class="iconButton"
									onclick=addComment( "commentButton13"); class="iconButton">
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData13" class="iconButton"
									onclick=scan_btn13("scanData13","hide13");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
				<div class="col-sm-5" id="normalFont">SECTION 5: COMPLETION OF
					WORK</div>
				<div class="col-sm-7">
					<div class="col-sm-6">
						<div class="col-sm-4" id="normalFont">YES</div>
						<div class="col-sm-4" id="normalFont">NO</div>
						<div class="col-sm-4" id="normalFont">NA</div>
					</div>
				</div>
			</div>
			<div id="scanData14DisableDiv">
				<div class="col-sm-12" id="mainLine">
					<div class="col-sm-5" id="normalFont">JOB COMPLETED AND
						EQUIPMENTS WITHDRAWN</div>
					<div class="col-sm-7">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="Yes" name="optradio10" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="No" name="optradio10" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									value="NA" name="optradio10" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton31" class="iconButton"
									onclick=photo_btn31("photoButton31","pic31_Loc","image31");
									>
									<img src="images/cameraicon.png">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton14" class="iconButton"
									onclick=addComment("commentButton14");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData14" class="iconButton"
									onclick=scan_btn14("scanData14","hide14");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">SPACE SECURED AGAINST
						ENTRY</div>
					<div class="col-sm-7 ">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11" value="Yes" checked id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11" value="No" id="yesnona">
								</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="optradio11" value="NA" id="yesnona">
								</label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">

								<button type="button" id="photoButton32" class="iconButton"
									onclick=photo_btn32("photoButton32","pic32_Loc","image32");
									>
									<img src="images/cameraicon.png">
								</button>

							</div>
							<div class="col-sm-4">
								<button type="button" id="commentButton15" class="iconButton"
									onclick=addComment("commentButton15");>
									<img src="images/commenticon.png" id="scanImage" />
								</button>
							</div>
							<div class="col-sm-4">
								<button type="button" id="scanData15" class="iconButton"
									onclick=scan_btn15("scanData15","hide15");>
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">MASTER OR RESPONSIBLE
						PERSON</div>
					<div class="col-sm-7">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-4"></div>
							<div class="col-sm-4"></div>
							<div class="col-sm-4">
								<button type="button" id="scanData16" class="iconButton"
									onclick=scan_btn16("scanData16","hide16"); >
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
					<div class="col-sm-5" id="normalFont">TEAM LEADER</div>

					<div class="col-sm-7">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-4 "></div>
							<div class="col-sm-4 "></div>
							<div class="col-sm-4">
								<button type="button" id="scanData17" class="iconButton"
									onclick=scan_btn17("scanData17","hide17"); >
									<img src="images/scanicon.png" id="scanImage" />
								</button>
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
				<div id="checkListOverview" onmouseleave="completedMouseLeave()"
					onmouseover="completedMouseOver()">
					<button type="submit" id="checkListCompleteButton"
						class="btn btn-primary btn-block" onclick="completeChecklist()"
						style="margin-top: 20px; margin-bottom: 20px;" id="normalFont">CHECKLIST
						COMPLETED</button>
				</div>
			</div>
		</div>
	</form>
	<div id="myModal" class="modal">
		<div class="modal-content" style="background-color: #D8CCCC;">
			<span class="close">&times;</span>
			<center>
				<p style="font-weight: bold; font-size: 20px">ADD YOUR COMMENT</p>
			</center>
			<center style="margin: 20px;">
				<textarea rows="5" cols="35" style="resize: none; font-size: 30px"
					id="popupText"></textarea>
			</center>
			<center>
				<button type="button" onclick="closePopup()"
					class="btn btn-success btn-block">Submit</button>
			</center>
		</div>
	</div>
	<script>
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];
function addComment(buttonID) {
  modal.style.display = "block";
}
function closePopup()
{
popupText
document.getElementById("popupText").value = "";
  modal.style.display = "none";
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
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
	////(blankCount);
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
		 ////("No need for Testing");
	 }
	 else{
	document.getElementById("scanData3").disabled = false;
	 }
}
var autoID=31;
var count=0;
var countAddEntry=0;
function addEntry()
{
	autoID++;
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
+'<button type="button" id="'+buttonOneId+'" class="iconButton" onclick=auto_scan_in_'+autoID+'("'+buttonOneId+'","'+divOneId+'");><img src="images/scanicon.png" id="scanImage" /></button></div></div></div></div></div>'
+'<div id="'+disableDivTwoID+'"><div class="col-sm-12" id="mainLine"><div class="col-sm-7" ><b><p id="'+divTwoId+'"></p></b></div><div class="col-sm-5">'
+'<div class="col-sm-6"></div><div class="col-sm-6"><div class="col-sm-6">OUT</div><div class="col-sm-6">'
+'<div onmouseover=scan2TestinButtonHover("'+buttonOneId+'","'+buttonTwoId+'");>'
+'<button type="button" class="iconButton" id="'+buttonTwoId+'" onclick=auto_scan_out_'+autoID+'("'+buttonTwoId+'","'+divTwoId+'");><img src="images/scanicon.png" id="scanImage" /></button></div></div></div></div></div></div></div>';
var buttonCreate1='<div onmouseover=scan2TestinButtonHoverforMinus("'+buttonOneId+'","'+minusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforMinus("'+minusButtonID+'");>'
	+'<button type="button" style="float:right;" onclick=displayHideaddEntry("'+inputid1+'"); id="'+minusButtonID+'">-</button></div>'
+'<div onmouseover=scan2TestinButtonHoverforPlus("'+buttonOneId+'","'+plusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforPlus("'+plusButtonID+'");><button type="button"  style="float:right" onclick="addEntry()" id="'+plusButtonID+'">+</button></div>'; 
document.getElementById("repeateDiv").innerHTML +=htmlData;
jQuery('#repeateDivButton').html('');
document.getElementById("repeateDivButton").innerHTML +=buttonCreate1;
}
function scan2TestinButtonHover(button1ID,button2ID)
{
	////("Yes, I Called"+button1ID+"  "+button2ID);
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
var sec4_btnID=0;
function addEntryGas(){
	sec4_btnID++;
count++;
var buttonId="ButtonId"+count;
var idincr=1;
var gas11=buttonId+"Entry1";
var gas22=buttonId+"Entry2";
var gas33=buttonId+"Entry3";
var divId="DivId"+count;
var inputid="mainLine"+count;
var disableDivID=buttonId+"DisableDiv";
var plusButtonID="plusButton"+countAddEntry;
var minusButtonID="minusButton"+countAddEntry; //pppp
var htmlData='<div id="'+inputid+'"><div id="'+disableDivID+'"><div class="col-sm-12 " id="mainLine"><div class="col-sm-5">'
+'<div class="col-sm-6" id="normalFont">OXYGEN</div><div class="col-sm-4"><input type="number" name="sec4_oxy" class="form-control" id="scanData3Entry1">'
+'</div><div class="col-sm-6" id="normalFont">HYDROCARBON</div><div class="col-sm-4"><input type="number" name="sec4_hydro"	class="form-control" id="scanData3Entry2" >'
+'</div><div class="col-sm-6" id="normalFont">TOXIC GASES</div><div class="col-sm-4"><input type="number" name="sec4_tosic" class="form-control"id="scanData3Entry3"></div></div>'
+'<div class="col-sm-7"><div class="col-sm-6"></div><div class="col-sm-6"><div class="col-sm-4"></div><div class="col-sm-4"></div>'
+'<div class="col-sm-4"><div id="scanDataDiv11" onmouseover=scanData11EnableFunction("'+buttonId+'"); onmouseleave=scanData11EnableFunctionLeave("'+buttonId+'");>'
+'<button type="button" class="iconButton" id="'+buttonId+'" onclick=sec4_scan_btn'+sec4_btnID+'("'+buttonId+'","'+divId+'");><img src="images/scanicon.png" id="scanImage" /></button></div></div></div></div></div>'
+'<div class="col-sm-12" ><div class="col-sm-7">'
+'<b><p id="'+divId+'"></p></b></div></div></div></div>'
var buttonCreate='<div onmouseover=scan2TestinButtonHoverforMinus("'+buttonId+'","'+minusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforMinus("'+minusButtonID+'");>'
	+'<button type="button" style="float:right;"onclick=displayHide("'+inputid+'"); id="'+minusButtonID+'">-</button></div>'
+'<div onmouseover=scan2TestinButtonHoverforPlus("'+buttonId+'","'+plusButtonID+'"); onmouseleave=scan2TestinButtonLeaveforPlus("'+plusButtonID+'");>'
+'<button type="button"  style="float:right" onclick="addEntryGas()" id="'+plusButtonID+'">+</button></div>';
document.getElementById('repeateGas').insertAdjacentHTML('beforeend', htmlData);
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
for(i=1;i<18;i++)
{
var buttonid="scanData"+i;
var x = document.getElementById(buttonid).textContent;
if(x=="Scan"){
var colorCode = document.getElementById(buttonid);
colorCode.style.background="yellow";
entryNotFilled++;
}else{
////("its done");
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
////("its done");
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
////("its done");
}
var buttonidforcolor2="ButtonTwoId"+i;
var y = document.getElementById(buttonidforcolor2).textContent;
if(y=="Scan"){
var colorCode = document.getElementById(buttonidforcolor2);
colorCode.style.background="yellow";
entryNotFilled++;
}
else{
////("its done");
}
}
if(entryNotFilled>0){
//("Please Fill Up hilighted Entry");
}
else{
////("its done");
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
colorCode.style.background="yellow";
entryNotFilled++;
}else{
////("its done");
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
////("its done");
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
////("its done");
}
var buttonidforcolor2="ButtonTwoId"+i;
var y = document.getElementById(buttonidforcolor2).textContent;
if(y=="Scan"){
var colorCode = document.getElementById(buttonidforcolor2);
colorCode.style.background="yellow";
entryNotFilled++;
}
else{
////("its done");
}
}
if(entryNotFilled>0){
document.getElementById("checkListCompleteButton").disabled = true;
}
else{
////("its done");
}
}
function completedMouseLeave()
{
document.getElementById("checkListCompleteButton").disabled = false;
}
</script>
</html>