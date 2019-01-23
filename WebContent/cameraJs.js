/**
 * 
 */
var ss=document.getElementById('photoButton4');


function closeWindow()
{
window.close();
ss.style.Display=hidden;
alert("00000");
}


var b_id;
var divID;
var camerabuttonId
function photo_btn4(buttonID,showDataDivID,img)
{
	////(buttonID+" "+showDataDivID+" "+img);
	alert(ss);
	var queryString = '?xmlData='+'2.1';
	camerabuttonId =(buttonID);
	var url="snapshot.html" + queryString;
	newWindow=window.open(url,'html','name','height=800,width=800');
	
	var disableDivID="#"+buttonID+"DisableDiv"+" :input";
	divID="#"+showDataDivID;
	b_id="#"+buttonID;

						//$(divID).text("please confirm image");
						$(divID).css("color", "blue");
						//document.getElementById(divID).style.color = "blue";
						
						
						}






//preload shutter audio clip
var shutter = new Audio();
shutter.autoplay = false;
shutter.src = navigator.userAgent.match(/Firefox/) ? 'shutter.ogg' : 'shutter.mp3';

function preview_snapshot() {
	// play sound effect
	try { shutter.currentTime = 0; } catch(e) {;} // fails in IE
	shutter.play();
	
	// freeze camera so user can preview current frame
	Webcam.freeze();
	
	// swap button sets
	document.getElementById('pre_take_buttons').style.display = 'none';
	document.getElementById('post_take_buttons').style.display = '';
}

function cancel_preview() {
	// cancel preview freeze and return to live camera view
	Webcam.unfreeze();
	document.getElementById('my_camera').style.display = 'block';
	document.getElementById('mycanvas').style.display = 'none';
	// swap buttons back to first set
	document.getElementById('pre_take_buttons').style.display = '';
	document.getElementById('post_take_buttons').style.display = 'none';
	
}


function save_photo() {
	Webcam.snap( function(data_uri) {
		loadCanvas(data_uri);				
		Webcam.reset();
		ss.style.display=hidden;
		document.getElementById('my_camera').style.display = 'none';
		 var a = sessionStorage.getItem("4thcameraid");
		    alert(a);
	} );
}
 function loadCanvas(dataURL) {
var canvas = document.getElementById('mycanvas');
var context = canvas.getContext('2d');

// load image from data url
var imageObj = new Image();
imageObj.onload = function() {
  context.drawImage(this,0,0);
};
imageObj.src = dataURL;
to_image();
document.getElementById('post_take_buttons').style.display = 'none';
document.getElementById('mycanvas').style.display = 'none';
document.getElementById('confirmCam').style.display = 'block';
}
function to_image(){
		//closeWindow();	
		//var wshShell = new ActiveXObject("WScript.Shell");
		//wshShell.Run("a.bat");
        var canvas = document.getElementById("mycanvas");
       //document.getElementById("theimage").src = canvas.toDataURL();
        Canvas2Image.saveAsJPEG(canvas);
        
        $.get("#", function(responseText) {
			var urlParams = new URLSearchParams(location.search);
			var xmlData=urlParams.get('xmlData');
			
			window.location.replace("Confirm_Image?name="+xmlData);	
		});
			
}
