<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cho.youna.ums.dao.UserDao"%>
<%@ page import="cho.youna.ums.dao.UserDaoImpl"%>
<%@ page import="cho.youna.ums.service.UserService"%>
<%@ page import="cho.youna.ums.service.UserServiceImpl"%>

<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	pageContext.setAttribute("users", userService.listUsers());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Insert title here</title>
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
				<form action="join.jsp">
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

	<div class="container">
		<!-- 글 목록 -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.userNo}</td>
						<td>${user.userName}</td>
						<td>${user.regDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>