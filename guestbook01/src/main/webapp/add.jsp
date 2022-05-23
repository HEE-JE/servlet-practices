<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("utf-8"); // // post방식으로 넘어올 경우 body의 encoding방식을 무조건 지정해줘야한다.

String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");

GuestBookVo vo = new GuestBookVo();
vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);

new GuestBookDao().insert(vo);

response.sendRedirect("/guestbook01");
%>