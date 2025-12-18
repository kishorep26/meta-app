<%@page import="com.nttdatacasestudy.dto.DisplayCourse"%>
<%@page import="java.util.List"%>
<%@page import="com.nttdatacasestudy.dao.CourseDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.CourseDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<title>Send Request</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			  <meta name="viewport" content="width=device-width, initial-scale=1">        
	        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" />
			<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js" ></script>
			<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
			
	        <style type="text/css">
				i {
					margin-right: 15px;
				}
</style>
	</head>
	<body>
         <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-12" style="text-align:center;">
                        <h2> Institutes Enrolled </h2><br>
                    </div>
                </div>
            </div>
            <table class="display" id="myTable" style="width:100%" >
                <thead>
                    <tr>
                        <th>Course ID</th>
                        <th>Course Name</th>
                        <th>Institute ID</th>
                        <th>Institute Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                            CourseDAO coursedao = new CourseDAOImpl();
                            
                            List<DisplayCourse> courselst = coursedao.DisplayCourses();

                            if(courselst.size() > 0)
                            {
                            for (DisplayCourse i : courselst) 
                            {
                    %>
                    <tr>
                    	<td><%=i.getCourseID()%></td>
                        <td><%=i.getCourseName()%></td>
						<td><%=i.getInstituteID()%></td>
                        <td><%=i.getInstituteName()%></td>
						<td>
                            <form action="RequestSent.jsp" method="post">
                            <input type="hidden" name="courseid" value="<%=i.getCourseID()%>"/>
                            <input type="hidden" name="instituteid" value="<%=i.getInstituteID()%>"/>
                            <button class = "btn btn-primary" type="submit"><i class="fa fa-plus" aria-hidden="true"></i>Send Request</button>
                            </form>
                        </td>
                    </tr>
                <%}}%>
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
             		<button type="button" class="btn btn-dark btn-secondary"><a href="StudentDashboard.jsp"> Back </a></button>
             </div>                   
</body>                    
</html>