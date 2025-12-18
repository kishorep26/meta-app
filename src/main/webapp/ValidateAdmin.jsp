<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import = "com.nttdatacasestudy.dto.Admin" %>
     <%@page import = "com.nttdatacasestudy.dao.AdminDAO" %>
     <%@page import = "com.nttdatacasestudy.daoimpl.AdminDAOImpl" %>
     <%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.SQLException"%>
		<%@page import="java.sql.PreparedStatement"%>
		<%@page import="com.nttdatacasestudy.connection.DbConnection"%>
		<%@page import="java.sql.Connection"%>
    
    
    <%
    session = request.getSession(false);
   	if(session.getAttribute("adminid") != null)
   	{
   		try (Connection con = DbConnection.getDatabaseConnection())
   		{
   			PreparedStatement pst = con.prepareStatement("select * from admin where adminid = ?");
   			pst.setString(1, session.getAttribute("adminid").toString());
   			ResultSet rs = pst.executeQuery();
   			if(rs.next())
   			{
   				session.setAttribute("adminpass",rs.getString("adminpassword"));
   			}
   		}
   		catch (SQLException e) 
   		{
   		      System.out.println(e.getMessage());
   		    }
   	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate Admin</title>
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

	String adminId = request.getParameter("adminid");

	String adminPassword = request.getParameter("adminpassword");

   Admin admin = new Admin(adminId, adminPassword);
  
  AdminDAO adminDao = new AdminDAOImpl();
	
if(adminDao.validateAdminForLogin(admin))
{
	session = request.getSession();
	session.setAttribute("adminid" , adminId);
	response.sendRedirect("AdminDashboard.jsp");
}
	else{
%>	

<script>
$(document).ready(function(){
swal ( 'Meta Institute Says' ,  'Please Enter Valid Credentials!!' ,'error');
});
</script>
<jsp:include page = "AdminLogin.jsp"></jsp:include>
	
<%   
	}
%>



</div>

</body>
</html>