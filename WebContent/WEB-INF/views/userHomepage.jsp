<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Welcome to Your User Homepage</h2>

<!-- Display user information from the session -->
<h3>Hello, ${sessionScope.name}</h3>
<p>Your UID is ${sessionScope}</p>

<!-- Add a logout link -->
<a href="${pageContext.request.contextPath}/user/logout">Logout</a>

</body>
</html>