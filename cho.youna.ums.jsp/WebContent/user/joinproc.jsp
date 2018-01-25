<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cho.youna.ums.dao.UserDao" %>
<%@ page import="cho.youna.ums.dao.UserDaoImpl" %>
<%@ page import="cho.youna.ums.service.UserService" %>
<%@ page import="cho.youna.ums.service.UserServiceImpl" %>
<%
	String userName=request.getParameter("userName");
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	userService.join(userName);
%>
<c:redirect url="listUser.jsp"/>