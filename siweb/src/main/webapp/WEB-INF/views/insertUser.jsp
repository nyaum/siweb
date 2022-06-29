<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input::-webkit-input-placeholder{
		font-style: italic;
		font-weight: bold;
	}
	
	.register-box{
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
	
	.id_ok {
		color:blue;
		display: none;
	}
	
	.id_already {
		color:#6A82FB; 
		display: none;
	}
	
</style>
<script>
	function checkId(el, length){
	    var id = $('#id').val();
		$.ajax({
		    url:'/idCheck',
		    type:'post',
		    data:{userId:id},
		    success:function(cnt){
		    	$('[data-toggle="popover"]').popover('dispose');
		    	$('#id').attr('title',' ');
		    	$('#id').attr('data-trigger',' ');
		    	
		        if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
		            $('#id').attr('data-toggle','popover');
		            $('#id').attr('title','사용 가능');
		            $('#id').attr('data-trigger','focus');
		            $('#id').attr('data-content','사용 가능한 아이디입니다.');
		            $('[data-toggle="popover"]').popover('show');
		            $('#submit').attr("disabled",false);
		            
		            // 입력된 값이 없을 경우 popover 비활성화
		            if(el.value.length == 0){
			    		$('[data-toggle="popover"]').popover('dispose');
			    		$('#id').attr('title',' ');
				    	$('#id').attr('data-trigger',' ');
			    	}
		            
		        } else if (cnt == 1) { // cnt가 1일 경우 -> 이미 존재하는 아이디
		            $('#id').attr('data-toggle','popover');
		            $('#id').attr('title','사용 불가');
		            $('#id').attr('data-content','중복된 아이디입니다.');
		            $('[data-toggle="popover"]').popover('show');		     
		            $('#submit').attr("disabled",true);
		        }
		    },
		    error:function(){
		        alert("에러");
		    }
		});
	};
</script>
</head>
<body>
<%@ include file="utility.jsp"%>
	<div align="center" class="wrapper" style="height:1px">
		<div class="register-box" align="center">
		<div style="height: 130px"></div>
			<div class="container">
				<form method="post" action="/register">
					<table>
						<tr>
							<td style="vertical-align: middle;">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class='fas fa-id-badge'></i>
										</span>
									</div>
									<input type="text" id="id" name="userId" class="form-control" style="width:300px" placeholder="User Name" oninput="checkId(this, 0)" required>								
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
							<td>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class='fas fa-calendar-alt'></i>
										</span>
									</div>
									<input type="text" name="userBirth" class="form-control" style="width:300px" placeholder="Birthday Year" required>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<i class="fa-solid fa-envelope"></i>
										</span>
									</div>
									<input type="text" name="userEmail" class="form-control" style="width:300px" placeholder="Email Address" required>
								</div>
							</td>
						</tr>
						<tr>
							<td align="center">
								<button type="submit" class="btn btn-outline-primary" style="width:160px" id="submit">Sign up</button>
								&nbsp;&nbsp;
								<a href="${pageContext.request.contextPath}/" class="btn btn-outline-warning" style="width:160px">Back</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>