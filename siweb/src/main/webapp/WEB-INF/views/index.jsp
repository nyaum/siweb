<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
	<%@ include file="utility.jsp"%>
	<h2>Home</h2>
	<c:choose>
		<c:when test="${loginUserId == null}">
			<a href="${pageContext.request.contextPath}/register">Sign Up</a>
			<a href="${pageContext.request.contextPath}/login">Login</a>
		</c:when>
		<c:otherwise>
			${loginUserId}님, 반갑습니다.
			<a href="${pageContext.request.contextPath}/logout">Logout</a>
			<br>
			<a href="${pageContext.request.contextPath}/account?userId=${loginUserId}">내 정보</a>
			<c:if test="${userLv == 1}">
				<a href="${pageContext.request.contextPath}/admin/selectUser">회원 관리</a>
			</c:if>
		</c:otherwise>
	</c:choose>
</body>
</html>