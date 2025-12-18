<%@page import="com.nttdatacasestudy.daoimpl.AdmissionRequestDAOImpl"%>
<%@page import="com.nttdatacasestudy.mapper.AdmissionRequestMapperImpl"%>
<%@page import="com.nttdatacasestudy.dao.AdmissionRequestDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display response</title>
</head>
<body>

<%
	String userid = request.getParameter("userid");

	AdmissionRequestDAO admissionrequestdao = new AdmissionRequestDAOImpl();
	
	
	if(admissionrequestdao.displayResponse(userid))
	{
		response.sendRedirect("ResponseSuccess.jsp");
	}
	else
	{
		response.sendRedirect("ResponseFailure.jsp");
	}
%>


</body>
</html>