<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instrument App</title>
<jsp:include page="bootstrapHead.jsp"/>
<link rel="stylesheet" href="css/myPhoto.css">
</head>
<body>
<div class="bg">
<jsp:include page="navbar.jsp"/>
<main class="container-fluid">
<h1>Welcome to the Instrument App</h1>

<form action="findById.do">
Instrument ID: <input class= "form-control" type="text" name="instId" required/>
<br/>
</div>
<input class="btn btn-primary" type="submit" value="Find Instrument By Id">
</form>

<br/>
<br/>

<form action="findByNamePage.do">
<input class="btn btn-primary" type="submit" value="Find By Name">
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