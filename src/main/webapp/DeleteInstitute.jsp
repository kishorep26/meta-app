<%@page import="com.nttdatacasestudy.dto.Institute"%>
<%@page import="java.util.List"%>
<%@page import="com.nttdatacasestudy.dao.InstituteDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.InstituteDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<title>Delete Institute</title>
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
                        <th>Institute ID</th>
                        <th>Institute Name</th>
                        <th>Affiliation Date</th>
                        <th>Address</th>
                        <th>Number of Seats</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                            InstituteDAO institutedao = new InstituteDAOImpl();
                            
                            List<Institute> instlst = institutedao.viewAllInstitutesUsingMapperClass();

                            if(instlst.size() > 0)
                            {
                            for (Institute i : instlst) 
                            {
                    %>
                    <tr>
						<td><%=i.getInstituteID()%></td>
                        <td><%=i.getInstituteName()%></td>
                        <td><%=i.getAffiliationDate()%></td>
                        <td><%=i.getAddress()%></td>
                        <td><%=i.getSeats()%></td>
						<td>
                            <form action="InstituteDeleted.jsp" method="post">
                            <input type="hidden" name="instituteid" value="<%=i.getInstituteID()%>"/>
                            <button class = "btn btn-danger" type="submit"><i class="fa fa-trash" aria-hidden="true"></i>Delete</button>
                            </form>
                        </td>
                    </tr>
                <%
                }
                            }
                            %>
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
       	<button class="btn btn-default"><a href="AdminDashboard.jsp">Back</a></button>
</div>              
</body>                    
</html>