<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("utf-8"); // // post방식으로 넘어올 경우 body의 encoding방식을 무조건 지정해줘야한다.

Long no = Long.parseLong(request.getParameter("no"));
String password = request.getParameter("password");

GuestBookVo vo = new GuestBookVo();
vo.setNo(no);
vo.setPassword(password);

new GuestBookDao().delete(vo);

response.sendRedirect("/guestbook01");
%>