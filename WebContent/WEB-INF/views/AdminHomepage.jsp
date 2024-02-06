<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<style>
@charset "ISO-8859-1";

body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	min-height: 100vh;
	/* Set minimum height of body to full viewport height */
	display: flex;
	flex-direction: column; /* Arrange children in a column */
}

header {
	background-color: #38761d;
	color: #FFF;
	text-align: center;
	padding: 1px 0;
}

.row {
	flex: 1; /* Fill remaining vertical space */
	display: flex;
	margin: 0;
}

.article-left {
	flex: 0 0 230px; /* Less flexible, fixed width of 200px */
	background-color: #38761d;
	padding: 10px;
	box-sizing: border-box;
}

.article-right {
	flex: 1;
	background-color: #FFF;
	padding: 15px;
}

ul {
	list-style-type: none;
	padding: 0;
}

li {
	font-size: 1.2em;
	padding: 10px 0;
	display: flex; /* Add flex display for aligning icons and text */
}

li i {
	margin-right: 10px; /* Add margin to the right of the icons */
	color: #FFF; /* Set icon color */
}

li a {
	color: #FFF;
	text-decoration: none;
}

li:hover {
	background-color: #4A5E71;
}

h1 {
	font-size: 2em;
	color: #38761d;
	margin-bottom: 20px;
}

hr {
	border: 1px solid #405467;
	margin-bottom: 20px;
}

/* Responsive Styles */
@media screen and (max-width: 768px) {
	.row {
		flex-direction: column;
	}
	.article-left, .article-right {
		flex: 1;
		width: 100%;
	}
}

.card {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
	margin-bottom: 20px;
	background-color: #FFF;
}

.card-header {
	background-color: #38761d;
	color: #FFF;
	padding: 10px;
	text-align: center;
}

.card-body {
	padding: 20px;
}

.side-by-side {
	display: flex;
	flex-direction: row;
}

.carbon-footprint {
	border-right: 3px solid #ccc;
	/* Add a border to the right of each paragraph */
	padding-right: 15px;
	/* Optional: Add some padding to create space between the border and text */
}

.card-body p {
	margin-right: 10px; /* Optional: Add margin between the paragraphs */
}
</style>
<head>
<meta charset="ISO-8859-1">
<link href="../../css/admindashboard.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<section class="row">
		<article class="article-left">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a
					href="${pageContext.request.contextPath}/admin/">Dashboard</a></li>
				<li><i class="fa fa-user-o" aria-hidden="true"></i><a
					href="${pageContext.request.contextPath}/admin/userAll">User Management</a></li>
				<hr>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="/mbip_project/admin/showElectricSubmission">Electric
						Consumption</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="/mbip_project/admin/showWaterSubmission">Water
						Consumption</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="/mbip_project/admin/getallwasteactivity">Recyle Activity</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="/mbip_project/admin/getallwasteactivity">Transportation Management</a></li>
				<hr>
				<li><i class="fa fa-sign-out" aria-hidden="true"></i><a
					href="${pageContext.request.contextPath}/admin/logout">Log Out</a></li>
			</ul>
		</article>
		<article class="article-right">
			<h1>Dashboard</h1>
			<hr>
			<div class="card">
				<div class="card-header">
					<h3>Total Participants</h3>
				</div>
				<div class="card-body" style="text-align: center;">
					<!-- Use JSTL to get the total count directly from the list -->
					<p>Total participants: ${userTotal}</p>
				</div>
			</div>

			<div class="card">
				<div class="card-header" >
					<h3>Total Carbon</h3>
				</div>
				<div class="card-body" >
					<div class="side-by-side">
						<p class="carbon-footprint">Electric Carbon Footprint: ${electricTotal} kgCO2</p>
						<p class="carbon-footprint">Water Carbon Footprint: ${waterTotal} kgCO2</p>
						<p class="carbon-footprint">Recycle Carbon Footprint: ${recyTotal} kgCO2</p>
						<p class="carbon-footprint">Trasnportation Carbon Footprint: ${transTotal} kgCO2</p>
					</div>
				</div>
			</div>
		</article>
	</section>
</body>
</html>