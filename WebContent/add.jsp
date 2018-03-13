<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	
	response.sendRedirect("/guestbook");
%>