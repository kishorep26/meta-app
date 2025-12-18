<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "com.nttdatacasestudy.dto.Student" %>
     <%@page import = "com.nttdatacasestudy.dao.StudentDAO" %>
          <%@page import = "com.nttdatacasestudy.daoimpl.StudentDAOImpl" %>
  
 
<!DOCTYPE html>
<html>
<head>
<title>Validate Student</title>
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

	String userid = request.getParameter("userid");

	String userPassword = request.getParameter("studentpassword");

    Student student = new Student(userid, userPassword);

	StudentDAO studentDao = new StudentDAOImpl();

	if(studentDao.validateStudentForLogin(student))
	{
		session = request.getSession();
		session.setAttribute("userid", userid);
		response.sendRedirect("StudentDashboard.jsp");

	}
	else{
%>	

<script>
$(document).ready(function(){
swal ( 'Meta Institute Says' ,  'Please Enter Valid Credentials!!' ,'error');
});
</script>

<jsp:include page = "StudentLogin.jsp"></jsp:include>
	
<%   
	}
%>

</div>
</body>
</html>