<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../utility.jsp"%>
<meta charset="UTF-8">
<style>
	table {
		text-align: center;
	}
	
	.wrapper {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  min-height: 100vh;
	}
	
	nav	{
		position: fixed;
		height: 100%;
	}
</style>
<script>
	$(function(){
		$('#delete').click(function(){
			if(!confirm('정말 삭제하시겠습니까?')){
				return false;
			}	
		});
	});
</script>
<title>User List</title>
</head>
<body>
<div class="container-fluid">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>UserId</th>
				<th>UserEmail</th>
				<th>UserAged</th>
				<th>UserLevel</th>
				<th>UserStatus</th>
				<th>CreateDate</th>
				<th>UpdateDate</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.userId}</td>
					<td>${user.userEmail}</td>
					<td>${year - user.userBirth}</td>
					<td>
						<c:choose>
							<c:when test="${user.userLv == 1}">
								<select class="custom-select custom-select-sm" name="userLv" onchange="if(this.value) location.href=(this.value);">
									<option value="${pageContext.request.contextPath}/admin/updateLv?userId=${user.userId}&userLv=1" id="updateLv">Admin</option>
									<option value="${pageContext.request.contextPath}/admin/updateLv?userId=${user.userId}&userLv=0" id="updateLv">User</option>
								</select>
							</c:when>
							<c:otherwise>
								<select class="custom-select custom-select-sm" name="userLv" onchange="if(this.value) location.href=(this.value);">
									<option value="${pageContext.request.contextPath}/admin/updateLv?userId=${user.userId}&userLv=0" id="updateLv">User</option>
									<option value="${pageContext.request.contextPath}/admin/updateLv?userId=${user.userId}&userLv=1" id="updateLv">Admin</option>
								</select>
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<c:choose>
							<c:when test="${user.userStatus == 1}">
								Deleted
							</c:when>
							<c:otherwise>
								Normal
							</c:otherwise>
						</c:choose>
					</td>
					<td><fmt:formatDate pattern="yyyy/MM/dd" value="${user.createDate}"/></td>
					<td><fmt:formatDate pattern="yyyy/MM/dd" value="${user.updateDate}"/></td>
					<td>
						<c:choose>
							<c:when test="${user.userLv == 1}">
								-
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${user.userStatus == 1}">
										-
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/admin/deleteUser?userId=${user.userId}" class="text-danger" id="delete">Delete</a>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="8"></td>
			</tr>
		</tfoot>
	</table>
	<div align="center">
		<table>
			<tr>
				<td>
					<c:choose>
						<c:when test="${currentPage > 1}">
							<a href="${pageContext.request.contextPath}/admin/selectUser?&currentPage=${currentPage-1}" class="btn btn-outline-secondary text-dark">PREV</a>
						</c:when>
						<c:when test="${currentPage == 1}">
							<label style="width:62px"></label>
						</c:when>
					</c:choose>
				</td>
				<td>
					<c:choose>
						<c:when test="${currentPage < lastPage}">
							<a href="${pageContext.request.contextPath}/admin/selectUser?&currentPage=${currentPage+1}" class="btn btn-outline-secondary text-dark">NEXT</a>
						</c:when>
						<c:when test="${currentPage == lastPage}">
							<label style="width:62px"></label>
						</c:when>
					</c:choose>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>