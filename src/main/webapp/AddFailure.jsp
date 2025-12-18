 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Request Failure</title>
<head>
<script src="resources/sweetalert2.all.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Delete Institute Failure</title>
        </head>
        
        <body>
<%
out.println("<script>");
out.println("$(document).ready(function(){");
out.println("swal ( 'Meta Institue Says' ,  'Request Submission Unsuccessful!!' ,"
        + "  'warning' );");
out.println("});");
out.println("</script>");
%>
<jsp:include page="SendRequest.jsp"></jsp:include>
</body>
</html>