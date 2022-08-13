<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instrument App</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<h1>Welcome to the Instrument App</h1>

<form action="findById.do">
Instrument ID: <input class= "form-control" type="text" name="instId" />
<input class="bttn btn-primary" type="submit" value="find instrument by id">
</form>

<form action="findAll.do">
<input class="bttn btn-primary" type="submit" value="find all instruments">
</form>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>