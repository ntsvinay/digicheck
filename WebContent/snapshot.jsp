<!DOCTYPE html>
<html>
<head>
<script src="canvas2image.js"></script>
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
	// grab the canvas element, get the context for API access and 
	// preset some variables
	var canvas = document.querySelector('canvas'), c = canvas.getContext('2d'), mouseX = 0, mouseY = 0, width = 400, height = 350, colour = 'hotpink', mousedown = false;

	// resize the canvas
	canvas.width = width;
	canvas.height = height;

	function draw() {
		if (mousedown) {
			// set the colour
			c.fillStyle = colour;
			// start a path and paint a circle of 20 pixels at the mouse position
			c.beginPath();
			c.arc(mouseX, mouseY, 10, 0, Math.PI * 2, true);
			c.closePath();
			c.fill();
		}
	}

	// get the mouse position on the canvas (some browser trickery involved)
	canvas.addEventListener('mousemove', function(event) {
		if (event.offsetX) {
			mouseX = event.offsetX;
			mouseY = event.offsetY;
		} else {
			mouseX = event.pageX - event.target.offsetLeft;
			mouseY = event.pageY - event.target.offsetTop;
		}
		// call the draw function
		draw();
	}, false);

	canvas.addEventListener('mousedown', function(event) {
		mousedown = true;
	}, false);
	canvas.addEventListener('mouseup', function(event) {
		mousedown = false;
	}, false);

	var link = document.createElement('a');
	link.innerHTML = 'download image';
	link.addEventListener('click', function(ev) {
		link.href = canvas.toDataURL();
		link.download = "mypainting.png";
	}, false);
	document.body.appendChild(link);

	function to_image() {
		//closeWindow();	
		//var wshShell = new ActiveXObject("WScript.Shell");
		//wshShell.Run("a.bat");
		var canvas = document.getElementById("myCanvas");
		//document.getElementById("theimage").src = canvas.toDataURL();
		Canvas2Image.saveAsJPEG(canvas);

		$.get("#", function(responseText) {
			var urlParams = new URLSearchParams(location.search);
			var xmlData=urlParams.get('xmlData');
			
			window.location.replace("Confirm_Image?name="+xmlData);	
		});

	}
</script>
</head>
<body onload="init();" style="background-color: #AED6F1;">
	<div class="col-sm-12" style="margin-top: 30px;" id="clickpic">
		<center>
			<video onclick="snapshot(this);" width=700 height=500 id="video"
				controls autoplay></video>
		</center>
		<center>
			<button type="button" class="btn btn-info"
				style="color: black; font-weight: bold;" onclick="snapshot()">Take
				Snapshot</button>
		</center>
	</div>
	<div class="col-sm-12" id="showpic" style="margin-top: 30px;">
		<center>
			<canvas id="myCanvas" width=700 height=470></canvas>
		</center>
		<center>
			<button type="button" class="btn btn-info"
				style="color: black; font-weight: bold;" onclick="goBack()">GO
				BACK</button>

			<button type="button" class="btn btn-info"
				style="color: black; font-weight: bold;" onclick="to_image()">CONFIRM</button>

			<button type="button" class="btn btn-info"
				style="color: black; font-weight: bold;" onclick="closeWindow()">CLOSE</button>
		</center>
	</div>
</body>
<script>
	//--------------------
	// GET USER MEDIA CODE
	//--------------------
	navigator.getUserMedia = (navigator.getUserMedia
			|| navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia);
	var video;
	var webcamStream;
	function startWebcam() {
		if (navigator.getUserMedia) {
			navigator.getUserMedia(

			// constraints
			{
				video : true,
				audio : false
			},

			// successCallback
			function(localMediaStream) {
				video = document.querySelector('video');
				video.src = window.URL.createObjectURL(localMediaStream);
				webcamStream = localMediaStream;
			},

			// errorCallback
			function(err) {
				console.log("The following error occured: " + err);
			});
		} else {
			console.log("getUserMedia not supported");
		}
	}

	function stopWebcam() {
		webcamStream.stop();
	}
	//---------------------
	// TAKE A SNAPSHOT CODE
	//---------------------
	var canvas, ctx;

	function init() {
		// Get the canvas and obtain a context for
		// drawing in it
		canvas = document.getElementById("myCanvas");
		ctx = canvas.getContext('2d');
		startWebcam();

	}

	function snapshot() {
		// Draws current image from the video element into the canvas
		var m = document.getElementById("clickpic");
		m.style.display = "none";
		var n = document.getElementById("showpic");
		n.style.display = "block";
		ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
	}
	function goBack() {
		var m = document.getElementById("clickpic");
		m.style.display = "block";
		var n = document.getElementById("showpic");
		n.style.display = "none";
	}
	function closeWindow() {
		//window.open('','_parent','');
		window.close();
	}
</script>
</html>