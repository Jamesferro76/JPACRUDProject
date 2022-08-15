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
<main class="container-fluid">

<h1>Welcome to the Instrument App</h1>

<form action="findById.do">
Instrument ID: <input class= "form-control" type="text" name="instId" required/>
<input class="btn btn-primary" type="submit" value="Find Instrument By Id">
</form>
<br/>

<form action="findAll.do">
<input class="btn btn-primary" type="submit" value="Find All Instruments">
</form>
<br/>

<form action="createNewPage.do">
<input class="btn btn-primary" type="submit" value="Create Instrument Log">
</form>
</main>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>