<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find By Name</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<main class="container-fluid">

<form action="findByName.do" method="post">
Renter's First Name: <input class= "form-control" type="text" name="firstName" required/>
Renter's Last Name: <input class= "form-control" type="text" name="lastName" required/>
<br/>
<input class="btn btn-primary" type="submit" value="Search by Name">
</form>

</main>
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>