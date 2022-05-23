<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); // // post방식으로 넘어올 경우 body의 encoding방식을 무조건 지정해줘야한다.

String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");

EmaillistVo vo = new EmaillistVo();
vo.setFirstName(firstName);
vo.setLastName(lastName);
vo.setEmail(email);

new EmaillistDao().insert(vo);

response.sendRedirect("/emaillist01");
%>