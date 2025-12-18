<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import = "com.nttdatacasestudy.dto.Institute" %>
     <%@page import = "com.nttdatacasestudy.dao.InstituteDAO" %>
     <%@page import = "com.nttdatacasestudy.daoimpl.InstituteDAOImpl" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Institute</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body><div class = "container">


<%

	int instituteid = Integer.parseInt(request.getParameter("instituteid"));

	String institutename =  request.getParameter("institutename");
	
	String institutepassword =  request.getParameter("institutepassword");
	
	String instituteaffiliationdate =  request.getParameter("instituteaffiliationdate");
	
	String instituteaddress = request.getParameter("instituteaddress");
	
	int numberofseats = Integer.parseInt(request.getParameter("numberofseats"));

	Institute institute = new Institute();
    
	institute.setInstituteID(instituteid);
	institute.setInstitutePassword(institutepassword);
	institute.setInstituteName(institutename);
	institute.setAffiliationDate(instituteaffiliationdate);
	institute.setAddress(instituteaddress);
	institute.setSeats(numberofseats);
	
	InstituteDAO instituteDao = new InstituteDAOImpl();
	 

	if(instituteDao.addNewInstitution(institute))
	{
%>
	
	<p style=color:red>Institute added successfully</p>	
	
<%
		response.sendRedirect("InstituteLogin.jsp");

	}
	else{	
%>	
	<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ALERT!!</h5>
         <a href="InstituteLogin.jsp"><button type="button" class="close" data-dismiss="modal" aria-label="Close"></button></a><span aria-hidden="true">&times;</span>
        
      </div>
      <div class="modal-body">
       	Institute is not added!
      </div>
      <div class="modal-footer">
        <a href="InstituteLogin.jsp"><button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button></a>
      </div>
    </div>
  </div>
</div>
	<jsp:include page = "InstituteLogin.jsp"></jsp:include>
	
<%   
	}
%>
	
</body>
</html>