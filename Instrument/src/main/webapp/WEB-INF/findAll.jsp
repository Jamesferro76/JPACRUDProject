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
<c:when test="${not empty allInstruments }">

<table class="table table-striped table-hover">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>Instrument</th>
<th>Condition</th>
</tr>
</thead>

<tbody>

<c:forEach items="${allInstruments }" var="inst">
<tr>
<td>${inst.id }</td>
<td>
<a href="findById.do?instId=${inst.id }">${inst.instrument }</a>
</td>
<td>${inst.condition }</td>
</tr>
</c:forEach>

</tbody>
</table>

</c:when>
<c:otherwise>
<h3>No Instruments found</h3>
</c:otherwise>





</c:choose>


<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>