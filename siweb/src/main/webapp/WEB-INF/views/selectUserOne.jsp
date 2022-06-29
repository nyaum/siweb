<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="utility.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>${user.userId}</td>
		</tr>
		<tr>
			<td>${user.userEmail}</td>
		</tr>
		<tr>
			<td>${year - user.userBirth}</td>
		</tr>
		<tr>
			<td>
				<c:choose>
					<c:when test="${user.userLv == 0}">
						User
					</c:when>
					<c:otherwise>
						Admin
					</c:otherwise>	
				</c:choose>
			</td>
		</tr>
	</table>
</body>
</html>