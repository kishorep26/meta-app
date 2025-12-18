<%@page import="com.nttdatacasestudy.daoimpl.AdmissionRequestDAOImpl"%>
<%@page import="com.nttdatacasestudy.dao.AdmissionRequestDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Response</title>
</head>
<body>
<%
String userid = request.getParameter("userid");
boolean status = false;

AdmissionRequestDAO admissiondao = new AdmissionRequestDAOImpl();

if(admissiondao.updateAdmissionRequestStatus(userid, status))
{
	response.sendRedirect("RequestSuccess.jsp");
}
else
{
	response.sendRedirect("RequestFailure.jsp");
}
%>
</body>
</html>