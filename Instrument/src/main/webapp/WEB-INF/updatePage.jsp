<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Instrument Log</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<main class="container-fluid">


<form action="updateAction.do" method="post">
<input type="hidden" name="instId" value="${inst.id }" />
Instrument: <input class= "form-control" type="text" name="instrument" placeholder="${inst.instrument }" />
Brand: <input class= "form-control" type="text" name="brand" placeholder="${inst.brand }" />
Model: <input class= "form-control" type="text" name="modelOfInstrument" placeholder="${inst.modelOfInstrument }" />
Family: <input class= "form-control" type="text" name="instrumentFamily" placeholder="${inst.instrumentFamily }" />
Condition: <input class= "form-control" type="text" name="condition" placeholder="${inst.condition }" />
<br/>
<input class="btn btn-primary" type="submit" value="Update Instrument" >
</form>
</main>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>