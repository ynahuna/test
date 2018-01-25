<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List, java.util.ArrayList"%>
<%@ page import="java.util.StringTokenizer, java.util.Iterator"%>

<%@ page import="cho.youna.ums.dao.UserDao"%>
<%@ page import="cho.youna.ums.dao.UserDaoImpl"%>
<%@ page import="cho.youna.ums.service.UserService"%>
<%@ page import="cho.youna.ums.service.UserServiceImpl"%>

<%
	UserDao userDao = new UserDaoImpl();
	UserService userService = new UserServiceImpl(userDao);
	userService.secede(Integer.parseInt(request.getParameter("userNo")));
%>

<c:redirect url="secede.jsp" />
