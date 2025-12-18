<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nttdatacasestudy.dao.StudentDAO"%>
<%@page import="com.nttdatacasestudy.dto.Student"%>
<%@page import="com.nttdatacasestudy.daoimpl.StudentDAOImpl"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
	<head>
	<title>View Students</title>
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
                        <h2> Students' Details</h2><br>
                    </div>
                </div>
            </div>
            <table class="display" id="myTable" style="width:100%" >
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Email ID</th>
                        <th>Student Name</th>
                        <th>Qualification</th>
                        <th>Number</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                            StudentDAO studentdao = new StudentDAOImpl();
                            
                    		int instituteid = (Integer)session.getAttribute("instituteid");
                            List<Student> stdlst = studentdao.viewStudentProfile(instituteid);

                            if(stdlst.size() > 0)
                            {
                            for (Student s : stdlst) 
                            {
                    %>
                    <tr>
                        <td><%=s.getUserID()%></td>
                        <td><%=s.getEmailID()%></td>
                        <td><%=s.getStudentName()%></td>
                        <td><%=s.getQualification()%></td>
                        <td><%=s.getNumber()%></td>
                        <td><%=s.getAddress()%></td>
                        <%}
                            }%>
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