<%@page import="com.nttdatacasestudy.dao.InstituteDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.InstituteDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Institute</title>
</head>
<body>
<%
	int instituteid = Integer.parseInt(request.getParameter("instituteid"));

	InstituteDAO institutedao = new InstituteDAOImpl();
	
	if(institutedao.deleteInstitute(instituteid))
	{
		response.sendRedirect("Delete_Success.jsp");
	}
	else
	{
		response.sendRedirect("Delete_Failure.jsp");
	}
%>

</body>
</html>