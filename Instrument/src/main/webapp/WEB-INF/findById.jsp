<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<c:choose>
<c:when test="${not empty inst }">

<table class="table table-striped table-hover">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>Instrument</th>
<th>Brand</th>
<th>Model</th>
<th>Family</th>
<th>Date Created</th>
<th>Date Updated</th>
<th>Condition</th>
</tr>
</thead>

<tbody>

<tr>
<td>${inst.id }</td>
<td>${inst.instrument }</td>
<td>${inst.brand }</td>
<td>${inst.modelOfInstrument }</td>
<td>${inst.instrumentFamily }</td>
<td>${inst.dateCreated }</td>
<td>${inst.lastUpdate }</td>
<td>${inst.condition }</td>
</tr>

</tbody>
</table>

</c:when>
<c:otherwise>
<h3>No film found</h3>
</c:otherwise>





</c:choose>


<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
</body>
</html>