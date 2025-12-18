<%@page import="com.nttdatacasestudy.dao.FacultyDAO"%>
<%@page import="com.nttdatacasestudy.dto.Faculty"%>
<%@page import="com.nttdatacasestudy.daoimpl.FacultyDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Faculty</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		//int facultyid = Integer.parseInt(request.getParameter("facultyid"));
		String facultyname = request.getParameter("facultyname");
		int instituteid = (Integer)session.getAttribute("instituteid");
		
		Faculty faculty = new Faculty();
		
		//faculty.setFacultyID(facultyid);
		faculty.setFacultyName(facultyname);
		faculty.setInstituteID(instituteid);
		
		FacultyDAO facultydao = new FacultyDAOImpl();
		
		if(facultydao.addNewFaculty(faculty))
		{
			response.sendRedirect("AddFacultySuccess.jsp");
		}
		else
		{
			response.sendRedirect("AddFacultyFailure.jsp");
		}
	%>

</body>
</html>