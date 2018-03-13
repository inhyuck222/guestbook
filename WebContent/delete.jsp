<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(vo);
	
	response.sendRedirect("/guestbook");
%>