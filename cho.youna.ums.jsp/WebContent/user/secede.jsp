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
<script>
	function go_del(userno,frm){
		$("input[name=userNo]").val(userno);
		
		frm.action="secedeproc.jsp";
		frm.submit();
	}
</script>
<body>
	<div class="container">
		<!-- 글 목록 -->
		<form name="delsecede"  action="#">
			<input type="text" name="userNo"  style="display:none;">
		</form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>작성일</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.userNo}</td>
						<td>${user.userName}</td>
						<td>${user.regDate}</td>
						<td><button  value="삭제"  onclick="go_del(${user.userNo},delsecede)">삭제</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
</body>
</html>