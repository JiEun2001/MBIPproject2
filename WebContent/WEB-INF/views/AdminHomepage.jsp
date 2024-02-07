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
					href="${pageContext.request.contextPath}/admin/electric">Electric
						Consumption</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="${pageContext.request.contextPath}/admin/water">Water
						Consumption</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="${pageContext.request.contextPath}/admin/recycle">Recyle Activity</a></li>
				<li><i class="fa fa-rocket" aria-hidden="true"></i> <a
					href="${pageContext.request.contextPath}/admin/transport">Transportation
						Management</a></li>
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
				<div class="card-header" >
					<h3>Generate Carbon Emission Report</h3>
				</div>
				<div class="card-body" >
					<div class="side-by-side">
					<button onclick = "generatePDF()">Generate PDF</button>
					</div>
				</div>
			</div>
			
            <script src="https://unpkg.com/jspdf-invoice-template@1.4.0/dist/index.js"></script>
			
			<script>
			  var now = new Date();
			  var datetime = now.toLocaleString();
			
			function generatePDF(){
				var pdfObject = jsPDFInvoiceTemplate.default(props);
				
				console.log("Object Created", pdfObject);
				
				}

			var props = {
				    outputType: jsPDFInvoiceTemplate.OutputType.Save,
				    returnJsPDFDocObject: true,
				    fileName: "Invoice 2021",
				    orientationLandscape: false,
				    compress: true,
				    logo: {
				        src: "https://www.shutterstock.com/image-vector/reducing-co2-emissions-stop-climate-600nw-2143986923.jpg",
				        type: 'JPG', //optional, when src= data:uri (nodejs case)
				        width: 53.33, //aspect ratio = width/height
				        height: 26.66,
				        margin: {
				            top: 0, //negative or positive num, from the current position
				            left: 0 //negative or positive num, from the current position
				        }
				    },
				    stamp: {
				        inAllPages: true, //by default = false, just in the last page
				        src: "https://raw.githubusercontent.com/edisonneza/jspdf-invoice-template/demo/images/qr_code.jpg",
				        type: 'JPG', //optional, when src= data:uri (nodejs case)
				        width: 20, //aspect ratio = width/height
				        height: 20,
				        margin: {
				            top: 0, //negative or positive num, from the current position
				            left: 0 //negative or positive num, from the current position
				        }
				    },
				    business: {
				        name: "MBIP Low Carbon Monitoring System",
				        address: "UTM 81310 Johor Bahru Johor, Malaysia ",
				        phone: "+6 07-553 3333",
				        email: "corporate@utm.my",
				        email_1: "muhammad.akmal2001@graduate.utm.my",
				        website: "https://www.utm.my/",
				    },
				    contact: {
				        label: "Report issued for:",
				        name: "Majlis Perbandaran Iskandar Puteri",
				        address: "MAJLIS BANDARAYA ISKANDAR PUTERI",
				        phone: "07-5555000",
				        email: "admin@mbip.gov.my",
				        otherInfo: "https://www.mbip.gov.my/",
				    },
				    invoice: {
				        label: "Report # : ",
				        num: 001,
				        invDate: "Payment Date: 02/07/2024",
				        invGenDate: "Invoice Date: 02/07/2024",
				        headerBorder: false,
				        tableBodyBorder: false,
				        header: [
				          {
				            title: "#", 
				            style: { 
				              width: 10 
				            } 
				          }, 
				          { 
				            title: "Title",
				            style: {
				              width: 60
				            } 
				          }, 
				          { 
				            title: "Date and Time",
				            style: {
				              width: 30
				            } 
				          }, 
				          { title: "Water"},
				          { title: "Electric"},
				          { title: "Recycle"},
				          { title: "Transportation"}
				        ],
				        table: Array.from(Array(1), (item, index)=>([
				            index + 1,
				            "MBIP Low Carbon Monitoring System ",
				            "02/07/2024",
				            "${electricTotal} kgCO2",
				            "${waterTotal} kgCO2",
				            "${recyTotal} kgCO2",
				            "${transTotal} kgCO2"
				        ])),
				        additionalRows: [{
				            col1: 'Total:',
				            col2: '145,250.50',
				            col3: 'ALL',
				            style: {
				                fontSize: 14 //optional, default 12
				            }
				        },
				        {
				            col1: 'VAT:',
				            col2: '20',
				            col3: '%',
				            style: {
				                fontSize: 10 //optional, default 12
				            }
				        },
				        {
				            col1: 'SubTotal:',
				            col2: '116,199.90',
				            col3: 'ALL',
				            style: {
				                fontSize: 10 //optional, default 12
				            }
				        }],
				        invDescLabel: "Invoice Note",
				        invDesc: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.",
				    },
				    footer: {
				        text: "The invoice is created on a computer and is valid without the signature and stamp.",
				    },
				    pageEnable: true,
				    pageLabel: "Page ",
				};
							
			</script>
		</article>
	</section>
</body>
</html>