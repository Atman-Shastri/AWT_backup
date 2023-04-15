<!DOCTYPE html>
<html>
  <head>
    <title>Color Effects using jQuery</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
      /* default styles */
      p, h1, h2, h3, h4, h5, h6 {
        color: black;
      }
      
      /* change heading color on hover */
      h1:hover, h2:hover, h3:hover, h4:hover, h5:hover, h6:hover {
        color: green;
      }
      
      /* change paragraph color on click */
      p.clickable {
        cursor: pointer;
        color: blue;
      }
      
      /* change entire page background color on load */
      $(document).ready(function() {
        $("body").css("background-color", "yellow");
      });
    </style>
  </head>
  <body>
    <h1>Atman Shastri</h1>
    <p class="clickable">100</p>
    <h2>Program 19</h2>
    <p class="clickable">JQuery</p>
  </body>
</html>

<%--<!DOCTYPE html>
<html>
<head>
	<title>Atman Shastri</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#box").animate({ left: '500px' }, 2000);
            $("h1").animate({ left: '0px', opacity: 1 }, 2000);
            $("h2").delay(1000).animate({ left: '0px', opacity: 1 }, 2000);
            $("p").delay(2000).animate({ left: '0px', opacity: 1 }, 2000);
        });
	</script>
	<style>
    #box {
      width: 100px;
      height: 100px;
      background-color: red;
      position: relative;
      margin-bottom: 20px;
      box-shadow: 0px 0px 20px rgba(255, 0, 0, 0.5);
      border-radius: 50%;
      animation: pulse 2s infinite;
    }

    @keyframes pulse {
      0% {
        transform: scale(0.8);
        box-shadow: 0px 0px 0px rgba(255, 0, 0, 0.5);
      }
      50% {
        transform: scale(1);
        box-shadow: 0px 0px 20px rgba(255, 0, 0, 0.5);
      }
      100% {
        transform: scale(0.8);
        box-shadow: 0px 0px 0px rgba(255, 0, 0, 0.5);
      }
    }
		h1, h2, p {
			font-size: 24px;
			font-weight: bold;
			margin: 0;
			padding: 10px;
			border: 2px solid black;
			background-color: #eee;
			position: relative;
			left: -500px;
			opacity: 0;
		}
		h1 {
			color: red;
		}
		h2 {
			color: green;
		}
		p {
			color: blue;
		}
	</style>
</head>
<body>
	<div id="box"></div>
	<h1>Atman Shastri</h1>
	<h2>Roll Number: 100</h2>
	<p>Welcome to my humble abode!</p>
	
</body>
</html>--%>
