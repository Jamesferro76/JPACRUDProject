<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Instrument Log</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<main class="container-fluid">


<form action="createNewAction.do" method="post">
Instrument: <input class= "form-control" type="text" name="instrument" required/>
Brand: <input class= "form-control" type="text" name="brand" />
Model: <input class= "form-control" type="text" name="modelOfInstrument" />
Family: <input class= "form-control" type="text" name="instrumentFamily" />
Condition: <input class= "form-control" type="text" name="condition" />
Renter's First Name: <input class= "form-control" type="text" name="firstName" />
Renter's Last Name: <input class= "form-control" type="text" name="lastName" />
<br/>
<input class="btn btn-primary" type="submit" value="Create Instrument">
</form>
</main>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>