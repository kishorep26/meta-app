<%@page import="com.nttdatacasestudy.dto.Faculty"%>
<%@page import="com.nttdatacasestudy.daoimpl.FacultyDAOImpl"%>
<%@page import="com.nttdatacasestudy.dao.FacultyDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Institute Faculty</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			  <meta name="viewport" content="width=device-width, initial-scale=1">        
	        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" />
			<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js" ></script>
			<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	</head>
	<body>
    <div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-12" style="text-align:center;">
                    <h2> Displaying Faculty Details </h2><br>
                </div>
            </div>
        </div>
      
        <table class="display" id="myTable" style="width:100%" >
            <thead>
                <tr>
                	<th>Faculty ID</th>
                    <th>Faculty Name</th>
                </tr>
            </thead>
            <tbody>
            <%
            FacultyDAO facultydao = new FacultyDAOImpl();
            
            int instituteid = (Integer)session.getAttribute("instituteid");
            List<Faculty> faclst = facultydao.ViewFaculty(instituteid);
            if(faclst.size() > 0)
            {
            	for(Faculty f : faclst)
            	{
            		
                  %>
                  <tr>
                	<td><%=f.getFacultyID()%></td>
                	<td><%=f.getFacultyName()%></td>
                	<%
                }
            }
                	%>
                	</tr>
                </tbody>
       </table>
   </div>
         </div>
<script>
$(function() {
$("#myTable").dataTable(
	{
		"pagingType": "full_numbers"
	}	
		);
});
</script>

<div class="col-md-12 text-center">
       <button type="button" class="btn btn-dark btn-secondary"><a href="InstituteDashboard.jsp"> Back </a></button>
</div>
</body>
</html>