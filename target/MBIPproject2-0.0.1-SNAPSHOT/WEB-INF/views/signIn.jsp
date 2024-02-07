<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!--  css file-->
<link href="assets/css/styles.css" rel="stylesheet" type="text/css"
	rel="stylesheet" />


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>MBIP</title>
</head>
<body>
	<section class="vh-100 d-flex">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://www.shutterstock.com/image-vector/reducing-co2-emissions-stop-climate-600nw-2143986923.jpg"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">

					<!-- Display login error message -->
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger" role="alert">${error}</div>
                    </c:if>

					<form action="/MBIPproject2/account/authenticate" method="post">

						<p class="text-center mt-3">Low Carbon Monitoring System</p>
						<p class="text-center mt-3">Your go-to tool for tracking
							carbon emissions in Iskandar Puteri.</p>



						<!-- Email input -->
						<div class="form-outline mb-4">
							<input type="email" id="form3Example3"
								class="form-control form-control-lg" name="email"
								placeholder="Enter a valid email address" /> <label
								class="form-label" for="form3Example3">Email address</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" id="form3Example4"
								class="form-control form-control-lg" name="password"
								placeholder="Enter password" /> <label class="form-label"
								for="form3Example4">Password</label>
						</div>

						<!--  <div class="d-flex justify-content-between align-items-center">
            
            <a href="#!" class="text-body">Forgot password?</a>
          </div> -->

						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
							<p class="small fw-bold mt-2 pt-1 mb-0">
								Don't have an account? <a href="signUp" class="link-danger">Register</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>

	</section>
</body>
</html>