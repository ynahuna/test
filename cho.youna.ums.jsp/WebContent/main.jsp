<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Ums</h2>
		<div class="btn-group btn-group-justified">
			<div class="btn-group">
				<form action="user/listUser.jsp">
					<button type="submit" class="btn btn-primary" id="userName">
						목록 <span class="glyphicon glyphicon-user"></span>
					</button>
			</form>
			</div>
			<div class="btn-group">
				<form action="user/join.jsp">
					<button type="submit" class="btn btn-success">
						추가 <span class="glyphicon glyphicon-th-list"></span>
					</button>
				</form>
			</div>

			<div class="btn-group">
				<button type="button" class="btn btn-warning">
					수정 <span class="glyphicon glyphicon-pencil">
				</button>
			</div>
			<div class="btn-group">
			<form action="secede.jsp">
					<button type="submit" class="btn btn-success">
					삭제 <span class="glyphicon glyphicon-trash"></span>
				</button>
				</form>
			</div>
		</div>

	</div>

	<br>
	<br>



</body>
</html>