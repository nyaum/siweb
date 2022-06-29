<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
	input::-webkit-input-placeholder{
		font-style: italic;
		font-weight: bold;
	}
	
	.login-box{
		width: 500px;
		height: 500px;
		border-radius:15px;
		background-color: white;
		outline-style: solid;
		outline-width: 2px;
		box-shadow: 4px 4px 4px 4px gray;
	}
	
	.wrapper {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  min-height: 100vh;
	  background-color: #e9ecef;
	}

</style>
</head>
<body>
<%@ include file="utility.jsp"%>
<div align="center" class="wrapper">
	<div class="login-box" align="center">
	<div style="height: 130px"></div>
		<div class="container-fluid">
			<form method="post" action="/login">
				<table>
					<tr>
						<td>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">
										<i class='fas fa-id-badge'></i>
									</span>
								</div>
								<input type="text" name="userId" class="form-control" style="width:300px" placeholder="User Name" required>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">
										<i class='fas fa-lock'></i>
									</span>
								</div>
								<input type="password" name="userPwd" class="form-control" style="width:300px" placeholder="Password" required>
							</div>
						</td>
					</tr>	
					<tr>
						<td align="center">
							<button type="submit" class="btn btn-outline-primary" style="width:160px;">Login</button>
							&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/" class="btn btn-outline-warning" style="width:160px;">Back</a>
						</td>
					</tr>
					<tr>
						<td>
							<hr>
						</td>
					</tr>
					<tr>
						<td align="center">
							Need an account?
						</td>
					</tr>
					<tr>
						<td align="center">
							<a href="${pageContext.request.contextPath}/register" class="btn btn-outline-success" style="width: 340px">Sign up</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
</body>
</html>