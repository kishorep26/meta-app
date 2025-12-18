<%@page import="com.nttdatacasestudy.dao.StudentDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.StudentDAOImpl"%>
<%@page import="com.nttdatacasestudy.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String email = request.getParameter("email");
String studentname = request.getParameter("studentname");
String qualification = request.getParameter("qualification");
String studentpassword =request.getParameter("studentpassword");
String number = request.getParameter("number");
String address = request.getParameter("studentaddress");
String userid = (String)session.getAttribute("userid");

StudentDAO sdao = new StudentDAOImpl();
Student student = new Student();

student.setEmailID(email);
student.setStudentName(studentname);
student.setQualification(qualification);
student.setStudentPassword(studentpassword);
student.setNumber(number);
student.setAddress(address);
student.setUserID(userid);

if(sdao.updateStudentRecord(student))
{
	out.print("success");
}
else
{
	out.print("failure");	
}
%>