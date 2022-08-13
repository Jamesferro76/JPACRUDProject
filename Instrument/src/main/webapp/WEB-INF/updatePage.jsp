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

<form action="updateAction.do" method="post">
<input type="hidden" name="instId" value="${inst.id }" />
Instrument: <input class= "form-control" type="text" name="instrument" placeholder="${inst.instrument }" />
Brand: <input class= "form-control" type="text" name="brand" placeholder="${inst.brand }" />
Model: <input class= "form-control" type="text" name="modelOfInstrument" placeholder="${inst.modelOfInstrument }" />
Family: <input class= "form-control" type="text" name="instrumentFamily" placeholder="${inst.instrumentFamily }" />
Condition: <input class= "form-control" type="text" name="condition" placeholder="${inst.condition }" />
<input class="bttn btn-primary" type="submit" value="Update Instrument" >
</form>


<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>