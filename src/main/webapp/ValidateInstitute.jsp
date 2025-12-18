<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import = "com.nttdatacasestudy.dto.Institute" %>
     <%@page import = "com.nttdatacasestudy.dao.InstituteDAO" %>
     <%@page import = "com.nttdatacasestudy.daoimpl.InstituteDAOImpl" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate Institute</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="resources/sweetalert2.all.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body><div class = "container">

<%

	int instituteid = Integer.parseInt(request.getParameter("instituteid"));

	String institutePassword = request.getParameter("institutepassword");

    Institute institute= new Institute(instituteid, institutePassword);
 
    InstituteDAO instituteDao = new InstituteDAOImpl();
	
	if(instituteDao.validateInstituteForLogin(institute))
	{
		session = request.getSession();
		session.setAttribute("instituteid", instituteid);
		response.sendRedirect("InstituteDashboard.jsp");

	}
	else{
%>	

<script>
$(document).ready(function(){
swal ( 'Meta Institute Says' ,  'Please Enter Valid Credentials!!' ,'error');
});
</script>

<jsp:include page = "InstituteLogin.jsp"></jsp:include>
	
<%   
	}
%>

</div>
</body>
</html>