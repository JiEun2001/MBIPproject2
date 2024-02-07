<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Low Carbon Monitoring System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
        }
        .bg-overlay {
            background: rgba(0, 0, 0, 0.45);
            background-image: url('https://i.ibb.co/hdnngsm/homepage.png ');
            background-blend-mode: overlay;
            background-size: cover;
        }
        .sidebar {
            transform: translateX(-100%);
            transition: transform 0.3s ease;
            background-color: #2d3748; /* Adjusted for Tailwind's gray-800 */
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            height: 100vh; /* Adjusted for full height */
            z-index: 50;
            overflow-y: auto;
            display: none; /* Initially hidden */
        }
        .sidebar-open {
            display: block; /* Show sidebar */
            transform: translateX(0);
        }
    </style>
</head>
<body class="bg-overlay">
    <div class="flex">
        <!-- <div id="mySidebar" class="sidebar bg-gradient-to-b from-green-800 to-green-400 w-64 min-h-screen p-5">
            <button onclick="toggleSidebar()" class="text-white focus:outline-none w-full text-left">
                <i class="fas fa-times fa-lg p-5"></i> Close
            </button>
            <div class="flex flex-col">
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Home</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Notification</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Carbon Footprint</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Track Progress</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Generate Report</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Recommendations</a>
	            <a href="#" class="bg-green-700 text-white py-2 px-4 rounded my-2">Support</a>
             </div>
        </div> -->
        
        <div class="flex-1 flex flex-col items-center justify-center h-screen text-white">
            <!-- Hamburger Icon -->
           <!-- <div class="absolute top-0 left-0 p-5">
                <button onclick="toggleSidebar()" class="text-white focus:outline-none">
                    <i class="fas fa-bars fa-2x"></i>
                </button>
            </div>
            <div class="absolute top-0 right-0 p-5">
                <div class="flex space-x-4">
                    <button class="focus:outline-none">
                        <i class="fas fa-search fa-lg"></i>
                    </button>
                    <button class="focus:outline-none">
                        <i class="fas fa-bell fa-lg"></i>
                    </button>
                    <button class="focus:outline-none">
                        <i class="fas fa-user-circle fa-2x"></i>
                    </button>
                </div>
            </div>-->
            <div class="text-center">
                <h1 class="text-6xl font-bold">LOW CARBON MONITORING SYSTEM</h1>
                <p class="text-xl mt-4">"Low carbon initiatives, a global exchange."</p>
                <div class="mt-8 flex justify-center">
				    <form action="/MBIPproject2/account/" method="get" class="mr-2">
				        <button class="bg-white text-green-600 font-bold py-2 px-4 rounded-full hover:bg-green-100">Log-in</button>
				    </form>
				    <form action="/MBIPproject2/account/signUp" method="get">
				        <button class="bg-green-600 font-bold py-2 px-4 rounded-full hover:bg-green-700">Register</button>
				    </form>
				</div>
            </div>
            <div class="absolute bottom-0 left-0 p-5 text-sm">
                <p>MBIP</p>
            </div>
        </div>
    </div>
    <script>
        function toggleSidebar() {
            document.getElementById('mySidebar').classList.toggle('sidebar-open');
        }
    </script>
</body>
</html>
