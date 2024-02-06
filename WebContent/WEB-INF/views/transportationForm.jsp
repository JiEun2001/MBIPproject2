<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electric Carbon Consumption</title>
    <style>
        .div {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 1px 0;
        }

        .div-2 {
            border-radius: 10px;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
            background-color: #fff;
            display: flex;
            width: 100%;
            padding-bottom: 50px;
            flex-direction: column;
        }

        @media (max-width: 991px) {
            .div-2 {
                max-width: 100%;
            }
        }

        .div-3 {
            color: #fff;
            white-space: nowrap;
            border-radius: 10px;
            background-color: #8bc34a;
            z-index: 1;
            width: 100%;
            justify-content: center;
            align-items: start;
            padding: 30px 60px 30px 26px;
            font: 800 32px Libre Franklin, sans-serif;
        }

        @media (max-width: 991px) {
            .div-3 {
                white-space: initial;
                max-width: 100%;
                padding: 0 20px;
            }
        }

        .div-4 {
            display: flex;
            width: 100%;
            flex-direction: column;
            margin: 76px 0 10px;
            padding: 0 63px;
        }

        @media (max-width: 991px) {
            .div-4 {
                max-width: 100%;
                margin-top: 40px;
                padding: 0 20px;
            }
        }

        .div-5 {
            color: #000;
            text-align: left;
            white-space: nowrap;
            margin: 0 -2px 0 -4px;
            font: 400 20px Libre Franklin, sans-serif;
        }

        @media (max-width: 991px) {
            .div-5 {
                max-width: 100%;
                white-space: initial;
            }
        }

        .div-6 {
            border-radius: 5px;
            border: 1px solid #d9d9d9;
            background-color: #fff;
            display: flex;
            margin-top: 15px;
            width: 838px;
            max-width: 100%;
            height: 39px;
            flex-direction: column;
        }

        .div-7 {
            color: #000;
            text-align: left;
            margin-top: 35px;
            white-space: nowrap;
            font: 400 20px Libre Franklin, sans-serif;
        }

        @media (max-width: 991px) {
            .div-7 {
                max-width: 100%;
                white-space: initial;
            }
        }

        .div-8 {
            border-radius: 5px;
            border: 1px solid #d9d9d9;
            background-color: #fff;
            display: flex;
            margin-top: 15px;
            width: 838px;
            max-width: 100%;
            height: 39px;
            flex-direction: column;
        }

        .div-9 {
            display: flex;
            margin-top: 44px;
            align-items: start;
            justify-content: space-between;
            gap: 0px;
        }

        @media (max-width: 991px) {
            .div-9 {
                max-width: 100%;
                flex-wrap: wrap;
                justify-content: center;
                margin-top: 40px;
            }
        }

        .div-10 {
            color: #fff;
            text-align: left;
            white-space: nowrap;
            border-radius: 5px;
            background-color: #8bc34a;
            margin-top: 8px;
            flex-grow: 1;
            justify-content: center;
            align-items: center;
            padding: 12px 60px;
            font: 400 20px Libre Franklin, sans-serif;
        }

        @media (max-width: 991px) {
            .div-10 {
                white-space: initial;
                padding: 0 20px;
            }
        }

        .div-11 {
            color: #fff;
            text-align: left;
            font: 400 20px Libre Franklin, sans-serif;
        }

        .div-12 {
            color: #fff;
            text-align: center; /* Center the text */
            white-space: nowrap;
            border-radius: 5px;
            background-color: #8bc34a;
            margin-top: 8px;
            flex-grow: 1;
            justify-content: center;
            align-items: center;
            padding: 12px 60px;
            font: 400 20px Libre Franklin, sans-serif;
        }
        
        .textInput {
            border-radius: 5px;
            border: 1px solid #d9d9d9;
            background-color: #fff;
            display: flex;
            margin-top: 15px;
            width: 70%; /* Adjusted width */
            max-width: 100%;
            height: 50px; /* Adjusted height */
            flex-direction: column;
            padding: 10px; /* Added padding for better appearance */
        }

        @media (max-width: 991px) {
            .div-12 {
                white-space: initial;
                padding: 0 20px;
            }
        }
    </style>
</head>
<body>
	<form action="/MBIPproject2/transportationForm/submit-consumption" method="post">
    <div class="div">
        <div class="div-2">
            <div class="div-3">Electric Carbon Consumption</div>
            <div class="div-4">
                <div class="div-5">
                    <p style="text-align: left; float: left">Date</p>
                </div>
                <input type="date" id="date" class="textInput" name="date" placeholder="Current Date">
                
                <div class="div-7">
                	<p style="text-align: left; float: left">Fuel Consumed</p>
                </div>
                <input type="number" id="fuelConsumed" class="textInput" name="fuelConsumed" placeholder="Litre" >
                
                <div class="div-7">
                	<p style="text-align: left; float: left">Distance Travelled (KM)</p>
                </div>
                <input type="number" id="distanceTravelled" class="textInput" name="distanceTravelled" placeholder="Kilometer (KM)" >
                
                <div class="div-7">
                	<p style="text-align: left; float: left">Vehicle Type</p>
                </div>
                <input type="text" id="vehicleType" class="textInput" name="vehicleType" placeholder="What is your Vehicle?" >
                
                <div class="div-7">
                	<p style="text-align: left; float: left">Carbon Emission Factor </p>
                </div>
                <input type="number" id="emissionFactor" class="textInput" name="emissionFactor" placeholder="Insert Carbon Emission Factor Amount" >
                
                               
                <div class="div-7">
                    <p style="text-align: left">Comments</p>
                </div>
                <input type="text" id="comment" name="comment" class="textInput" placeholder="Your Comments" >
                
                <div class="div-9">
                    <div class="div-10">
                    <button type="submit">Calculate</button>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    </form>

    
</body>
</html>

