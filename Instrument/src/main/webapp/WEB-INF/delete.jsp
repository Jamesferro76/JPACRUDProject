<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<main class="container-fluid">


<c:choose>
<c:when test="${not empty inst }">
<h1>Delete Successful</h1>
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
<th>First Name</th>
<th>Last Name</th>
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
<td>${inst.firstName }</td>
<td>${inst.lastName }</td>
</tr>

</tbody>
</table>

</c:when>
<c:otherwise>
<h3>Delete Failed</h3>
</c:otherwise>





</c:choose>

</main>
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
</body>
</html>