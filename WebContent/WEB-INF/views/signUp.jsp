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
	<section class="vh-100 gradient-custom background">
		<div class=" container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-light text-dark" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">

							<div class="mb-md-5 mt-md-4">

								<h2 class="fw-bold mb-2 text-uppercase">Register</h2>
								<p class="text-dark-50 mb-5">Please fill in your login and
									password!</p>

								<%-- Display error message if it exists --%>
								<c:if test="${not empty error}">
									<div class="alert alert-danger" role="alert">${error}</div>
								</c:if>
								<form action="/MBIPproject2/account/register" method="post">

									<div class="form-outline form-dark mb-4">
										<input type="email" id="typeEmailX"
											class="form-control form-control-lg" name="email" /> <label
											class="form-label" for="typeEmailX">Email</label>
									</div>

									<div class="form-outline form-dark mb-4">
										<input type="text" id="typeEmailX"
											class="form-control form-control-lg" name="username" /> <label
											class="form-label" for="typeEmailX">Username</label>
									</div>

									<div class="form-outline form-dark mb-4">
										<input type="text" id="typeEmailX"
											class="form-control form-control-lg" name="address" /> <label
											class="form-label" for="typeEmailX">Address</label>
									</div>

									<div class="form-outline form-dark mb-4">
										<input type="number" id="typeEmailX"
											class="form-control form-control-lg" name="phone" /> <label
											class="form-label" for="typeEmailX">Phone Number</label>
									</div>

									<div class="form-outline form-dark mb-4">
										<input type="password" id="typePasswordX"
											class="form-control form-control-lg" name="password" /> <label
											class="form-label" for="typePasswordX">Password</label>
									</div>


									<div class="form-outline form-dark mb-4">
										<input type="password" id="typePasswordX"
											class="form-control form-control-lg" name="confirmpwd" /> <label
											class="form-label" for="typePasswordX">Confirm
											password</label>
									</div>


									<button class="btn btn-outline-dark btn-lg px-5" type="submit">Register</button>
									<p class="small fw-bold mt-2 pt-1 mb-0">
										Already have an account? <a href="${pageContext.request.contextPath}/" class="link-danger">Sign In!</a>
									</p>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>