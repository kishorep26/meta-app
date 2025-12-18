<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import = "com.nttdatacasestudy.dto.Student" %>
     <%@page import = "com.nttdatacasestudy.dao.StudentDAO" %>
     <%@page import = "com.nttdatacasestudy.daoimpl.StudentDAOImpl" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body><div class = "container">
	<%

	String userid = request.getParameter("userid");

	String studentEmail =  request.getParameter("emailid");
	
	String studentName =  request.getParameter("studentname");
	
	String qualification =  request.getParameter("studentqualification");
	
	String userPassword = request.getParameter("studentpassword");
	
	String StudentContactNo =  request.getParameter("studentnumber");
	
	String StudentAddress =  request.getParameter("studentaddress");

	Student student = new Student();
    
	student.setUserID(userid);
	student.setStudentPassword(userPassword);
	student.setEmailID(studentEmail);
	student.setStudentName(studentName);
	student.setQualification(qualification);
	student.setNumber(StudentContactNo);
	student.setAddress(StudentAddress);
	
	StudentDAO studentDao = new StudentDAOImpl();

	if(studentDao.addNewStudent(student))
	{
		%>
	
	<p style=color:red>Student added successfully</p>	
	
		<%
		response.sendRedirect("StudentLogin.jsp");

	}
	else{
		
		%>	
	<p style=color:red> <%=student.getUserID() %> User is not added</p>
	<jsp:include page = "StudentLogin.jsp"></jsp:include>
	
<%   
	}
%>

	

	%>

</div>

</body>
</html>