<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
				<form action="listUser.jsp">
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



	<form class="form-inline" action="joinproc.jsp">
		<div class="form-group">
			<label for="userName">이름:</label> <input type="text"
				class="form-control" name="userName" placeholder="Name">
		</div>
			<button type="submit" class="btn btn-default">확인</button>
		</form>
	
		
	
</body>
</html>