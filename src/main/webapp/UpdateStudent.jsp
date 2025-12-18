<%@page import="com.nttdatacasestudy.dao.StudentDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.nttdatacasestudy.daoimpl.StudentDAOImpl"%>
<%@page import="com.nttdatacasestudy.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student </title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="resources/sweetalert2.all.js" type="text/javascript"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
        	.center{
        	margin: auto;
        	}
        	
        	.center-btn{
        		margin: auto;
  				position: absolute;
  				top: 45%;
  				left: 46%;
  				-ms-transform: translate(-50%, -50%);
  				transform: translate(-50%, -50%);
        	}
        	body {
	font-family: Arial, Helvetica, sans-serif;
}

			.modal {
				display: none; /* Hidden by default */
				position: fixed; /* Stay in place */
				z-index: 1; /* Sit on top */
				padding-top: 100px; /* Location of the box */
				left: 0;
				top: 0;
				width: 100%; /* Full width */
				height: 100%; /* Full height */
				overflow: auto; /* Enable scroll if needed */
				background-color: rgb(0, 0, 0); /* Fallback color */
				background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
			}
			
			/* Modal Content */
			.modal-content {
				background-color: #fefefe;
				margin: auto;
				padding: 20px;
				border: 1px solid #888;
				width: 30%;
			}
			
			/* The Close Button */
			.close {
				color: #aaaaaa;
				float: right;
				font-size: 28px;
				font-weight: bold;
			}
			
			.close:hover, .close:focus {
				color: #000;
				text-decoration: none;
				cursor: pointer;
			}
        	
        </style>
</head>
<body>
<div class="container items-align-center">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-12" style="text-align:center;">
                        <h2>Profile Details</h2><br>
                    </div>
                </div>
            </div>
            <%
	            StudentDAO studentdao = new StudentDAOImpl();
            	String userID = (String)session.getAttribute("userid");
	            List<Student> stulst = studentdao.viewStudentProfile(userID);
	
	            if(stulst.size() > 0)
	            {
	            for (Student s : stulst) 
	            {
            %>
            <table class="table table-sm table-striped table-hover table-bordered center" style="width:50%">
                <tr>
                    <td style="width:40%">User ID </td>
                    <td><%=s.getUserID() %> </td>
                </tr>
                <tr>
                    <td>Email ID </td>
                    <td><%=s.getEmailID()%></td>
                </tr>
                <tr>
                    <td>Name </td>
                    <td> <%=s.getStudentName()%></td>
                </tr>
                <tr>
                    <td>Qualification </td>
                    <td><%=s.getQualification()%></td>
                </tr>
                
                <tr>
                    <td>Number </td>
                    <td><%=s.getNumber()%></td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td><%=s.getAddress()%></td>
                </tr>
             </table>
             <table class="table table-sm table-striped table-hover table-bordered center" style="width:50%;">
             	<tr>
                	<td>Action</td>
                	<td style="text-align:center;">
                		<button id="myBtn" class="btn btn-danger" onclick="openMyDialog('<%=s.getUserID()%>')">Update</button>
                	</td>
                </tr>
             </table>
             </div>
             </div>
             <br>
             <div class="col-md-12 text-center">
             		<button type="button" class="btn btn-dark btn-secondary"><a href="StudentDashboard.jsp"> Back </a></button>
             </div>
	           
	            <!-- Start Of The Modal Design-->
<div class="container" align="center">
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <table class="table table-hover">
        <tr>
            <th align="center"> <b>Enter Student Details To Be Updated : </b></th>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="email">Enter Student Email</label> 
                <input type="text" class="form-control" id="email" name="email" value="<%=s.getEmailID()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="studentname">Enter Student Name</label> 
                <input type="text" class="form-control" id="studentname" name="studentname" value="<%=s.getStudentName()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="qualification">Enter Student Qualification</label> 
                <input type="text" class="form-control" id="qualification" name="qualification" value="<%=s.getQualification()%>"/>
            </td>
        </tr>
        
        <tr>
            <td>
            	<label class="control-label" for="studentpassword">Enter Student Password</label> 
                <input type="password" class="form-control" id="studentpassword" name="studentpassword" placeholder="********"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="number">Enter Contact Number </label> 
                <input type="text" class="form-control" id="number" name="number" value="<%=s.getNumber()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="studentaddress">Enter Student Address</label> 
                <input type="text" class="form-control" id="studentaddress" name="studentaddress" value="<%=s.getAddress()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            <button id="btnRaise" class="btn btn-danger" onclick="updateStudent()">
            		Update Student
            	</button>
            </td>
        </tr>
        <%}
	            } %>
    </table>    
  </div>
</div>
</div>

<!-- End Of The Modal Design-->

<script>

									// Get the modal
									var modal = document
											.getElementById("myModal");

									// Get the button that posts complaint
									var btnRaise = document
											.getElementById("btnRaise");

									// Get the <span> element that closes the modal
									var span = document
											.getElementsByClassName("close")[0];

									var userid = " ";

									// When the user clicks the button, open the modal 
									function openMyDialog(userid) {
										modal.style.display = "block";
										userid = userid;
									}

									function updateStudent() {
										
										var email = document
										.getElementById("email").value;
										
										var studentname = document
												.getElementById("studentname").value;
										
										var qualification = document
										.getElementById("qualification").value;
										
										var studentpassword = document
										.getElementById("studentpassword").value;
										
										var number = document
										.getElementById("number").value;
										
										var address = document
										.getElementById("studentaddress").value;
										
										
										var url = "StudentUpdate.jsp?userid="
												+ userid
												+ "&email="
												+ email
												+ "&studentname="
												+ studentname
												+ "&qualification="
												+ qualification
												+ "&studentpassword="
												+ studentpassword
												+"&number="
												+ number
												+"&studentaddress="
												+address;

										modal.style.display = "none";

										if (window.XMLHttpRequest) {
											request = new XMLHttpRequest();
										} else if (window.ActiveXObject) {
											request = new ActiveXObject(
													"Microsoft.XMLHTTP");
										}

										try {
											request.onreadystatechange = getStudentResponse;
											request.open("GET", url, true);
											request.send();
										} catch (e) {
											alert("Unable to connect to server");
										}
									}

									function successMessage()
									{
										$(document).ready(function(){
										swal ( 'Meta Institute Says' ,  'Student Updated Successfully!!' ,  'success' );
										});
									}
									
									function failureMessage()
									{
										$(document).ready(function(){
										swal ( 'Meta Institute Says' ,  'Student Update Unsuccessful!!' ,  'error' );
										});
									}
									
									function getStudentResponse() {
										if (request.readyState == 4) {
											var val = request.responseText;
											if (val.trim() == "success") {
												successMessage();
												setTimeout(function(){
													window.location.reload(true);
												},3000);
											} else {
												failureMessage();
												setTimeout(function(){
													window.location.reload(true);
												},3000);
											}
										}
									}

									// When the user clicks on <span> (x), close the modal
									span.onclick = function() {
										modal.style.display = "none";
										alert(userid);
									}

									// When the user clicks anywhere outside of the modal, close it
									window.onclick = function(event) {
										if (event.target == modal) {
											modal.style.display = "none";
										}
									}
								</script>				
</body>
</html>