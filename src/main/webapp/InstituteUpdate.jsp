<%@page import="com.nttdatacasestudy.dao.InstituteDAO"%>
<%@page import="com.nttdatacasestudy.daoimpl.InstituteDAOImpl"%>
<%@page import="com.nttdatacasestudy.dto.Institute"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
int instituteid = Integer.parseInt(request.getParameter("instituteid"));
String institutename = request.getParameter("institutename");
String institutepass = request.getParameter("institutepassword");
String instituteaddress = request.getParameter("instituteaddress");
int seats = Integer.parseInt(request.getParameter("seats"));

InstituteDAO idao = new InstituteDAOImpl();

Institute institute = new Institute();
institute.setInstituteID(instituteid);
institute.setInstituteName(institutename);
institute.setInstitutePassword(institutepass);
institute.setAddress(instituteaddress);
institute.setSeats(seats);

if(idao.updateInstituteRecord(institute))
{
	out.print("success");
}
else
{
	out.print("failure");
}
%>