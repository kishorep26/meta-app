<%@page import="com.nttdatacasestudy.daoimpl.FeedbackDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import = "com.nttdatacasestudy.dto.Institute" %>
     <%@page import = "com.nttdatacasestudy.dao.InstituteDAO" %>
     <%@page import = "com.nttdatacasestudy.dto.Feedback" %>
     <%@page import = "com.nttdatacasestudy.dao.FeedbackDAO" %>
  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Feedback</title>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

  <% 
  
  int instituteid = Integer.parseInt(request.getParameter("instituteid"));
  
  String userid = (String)session.getAttribute("userid");
  
  String description= request.getParameter("description");
  
  Feedback feedback = new Feedback();
  feedback.setInstituteID(instituteid);
  feedback.setUserID(userid);
  feedback.setDescription(description);
  

  
  FeedbackDAO feedbackDao = new FeedbackDAOImpl();
  
  if(feedbackDao.addNewFeedback(feedback))
	{		
		response.sendRedirect("AddFeedbackSuccess.jsp");
	}
	else
	{
		response.sendRedirect("AddFeedbackFailure.jsp");  
	}
%>

</body>
</html>