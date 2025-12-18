<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="com.nttdatacasestudy.dto.AdmissionRequest"%>
<%@page import="com.nttdatacasestudy.daoimpl.AdmissionRequestDAOImpl"%>
<%@page import="com.nttdatacasestudy.dao.AdmissionRequestDAO"%>
<%@page import="com.nttdatacasestudy.dao.CourseDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.CourseDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Request</title>
</head>
<body>
<%
	int courseid = Integer.parseInt(request.getParameter("courseid"));
	String userid = (String)session.getAttribute("userid");
	
	AdmissionRequestDAO admissiondao = new AdmissionRequestDAOImpl();
	AdmissionRequest admissionrequest = new AdmissionRequest();
	
	admissionrequest.setUserID(userid);
	admissionrequest.setCourseID(courseid);
	
	if(admissiondao.addNewAdmissionRequest(admissionrequest))
	{
		
		response.sendRedirect("AddSuccess.jsp");
	}
	else
	{
		System.out.println("Failure");
		response.sendRedirect("AddFailure.jsp");
	}
%>

</body>
</html>