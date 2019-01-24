/**
 * 
 */
var dt = new Date();
		var m =dt.getMinutes();
		var s =dt.getSeconds();
		alert(s);
		function take_snapshot() {
			// take snapshot and get image data
			Webcam.snap( function(data_uri) {
document.getElementById('buttonID').innerHTML = '<img src="'+data_uri+'" style="height: 50px; width: auto;"/><br>';
    document.getElementById( "buttonID" ).setAttribute( "onClick", "javascript: Boo();" );


				// display results in page
				document.getElementById('results').innerHTML = 
					'<h2>Here is your image:</h2>' + 
					'<img src="'+data_uri+'"/><br>'+
					'<a href="'+data_uri+'" download="IMG'+s+m+dt.getFullYear()+'" class="btn btn-info" onClick="closePopup()">Download</a>'
					;
			} );
		}