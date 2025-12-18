<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.nttdatacasestudy.dto.RequestNResponse"%>
<%@page import="com.nttdatacasestudy.daoimpl.AdmissionRequestDAOImpl"%>
<%@page import="com.nttdatacasestudy.dao.AdmissionRequestDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Response</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <style>
        	.center{
        	margin: auto;
        	}
        	
        	.center-btn{
        		margin: auto;
  				position: absolute;
  				top: 60%;
  				left: 46%;
  				-ms-transform: translate(-50%, -50%);
  				transform: translate(-50%, -50%);
        	}
        	body {
	font-family: Arial, Helvetica, sans-serif;
			}
			.table-striped>tbody>tr:nth-child(odd)>td, 
			.table-striped>tbody>tr:nth-child(odd)>th {
   			background-color: #f7f7f2; 
 			}
			.table-striped>tbody>tr:nth-child(even)>td, 
			.table-striped>tbody>tr:nth-child(even)>th {
   			background-color: #f7f7f2
 			}
</style>
</head>
<body>
<div class="container items-align-center">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-12 center" style="text-align:center;">
                        <h2>Admission Request Status</h2><br>
                    </div>
                </div>
            </div>
            <%
            	AdmissionRequestDAO admissionrequestdao = new AdmissionRequestDAOImpl();
	            
            	String userid = (String)session.getAttribute("userid");
	            List<RequestNResponse> displst = admissionrequestdao.mapViewResponseRecord(userid);
	
	            if(displst.size() > 0)
	            {
	            	for (RequestNResponse d : displst) 
	            	{
            %>
            <table class="table table-sm table-striped table-hover table-bordered center" style="width:50%">
                <tr>
                    <td style="width:40%">Request ID </td>
                    <td><%=d.getRequestID() %> </td>
                </tr>
                <tr>
                    <td>Student ID </td>
                    <td><%=d.getUserID()%></td>
                </tr>
                <tr>
                    <td>Student Name</td>
                    <td> <%=d.getStudentName()%></td>
                </tr>
                <tr>
                    <td>Course ID </td>
                    <td><%=d.getCourseID()%></td>
                </tr>
                <tr>
                    <td>Course Name </td>
                    <td><%=d.getCourseName()%></td>
                </tr>
                <tr>
                    <td>Institute ID </td>
                    <td><%=d.getInstituteID()%></td>
                </tr>
                <tr>
                    <td>Institute Name </td>
                    <td><%=d.getInstituteName()%></td>
                </tr>
                <tr>
                	<td>Request Date</td>
                	<td><%=d.getRequestDate()%></td>
                </tr>
                <tr>
                <%	LocalDate currentDate = LocalDate.now();
    				String abc = " ";
    				long noOfDaysBetween = 0;
    				abc = d.getRequestDate().toString();
    				boolean status = d.isStatus();
    				LocalDate dateAfter = LocalDate.parse(abc);
    			    noOfDaysBetween = ChronoUnit.DAYS.between(dateAfter, currentDate);
    			    if (noOfDaysBetween >= 4) 
    			    {
    			 %>
                </tr>
                <tr>
	                <td colspan="2" style="text-align:center;">
	                	<form action="ResponseDisplay.jsp" method="POST">
		             		<input type="hidden" name="userid" value="<%=d.getUserID()%>"/>
		                  	<button id="myBtn" class="btn btn-danger">
		                  		Check Status
		                  	</button>   	
		             	</form>		       			
		             </td>
                </tr>
                <%} 
    			    else 
                {
                %>	
                	<td colspan="2" style="text-align:center; color: red;"> PLEASE CHECK YOUR STATUS AFTER 4 DAYS </tr>
                	
              <%} } } %>
             </table>   
            </div>
            </div>
            <br> 
<div class="col-md-12 text-center">
             		<button type="button" class="btn btn-dark btn-secondary"><a href="StudentDashboard.jsp"> Back </a></button>
             </div>     
</body>
</html>