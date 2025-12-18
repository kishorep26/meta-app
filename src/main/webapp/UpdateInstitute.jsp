<%@page import="com.nttdatacasestudy.dao.InstituteDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.nttdatacasestudy.daoimpl.InstituteDAOImpl"%>
<%@page import="com.nttdatacasestudy.dto.Institute"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Institute </title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"/>
		<script src="resources/sweetalert2.all.js" type="text/javascript"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
        	.center{
        	margin: auto;
        	}
        	
        	.center-btn{
        		margin: auto;
  				position: absolute;
  				top: 40%;
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
                        <h2>Institute Details</h2><br>
                    </div>
                </div>
            </div>
            <%
	            InstituteDAO institutedao = new InstituteDAOImpl();
            	int instituteid = (Integer)session.getAttribute("instituteid");
	            List<Institute> instlst = institutedao.viewInstituteProfile(instituteid);
	
	            if(instlst.size() > 0)
	            {
	            for (Institute i : instlst) 
	            {
            %>
            <table class="table table-sm table-striped table-hover table-bordered center" style="width:50%">
                <tr>
                    <td style="width:40%">Institute ID </td>
                    <td><%=i.getInstituteID() %> </td>
                </tr>
                <tr>
                    <td>Institute Name </td>
                    <td><%=i.getInstituteName()%></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td> <%=i.getAddress()%></td>
                </tr>
                <tr>
                    <td>Seats </td>
                    <td><%=i.getSeats()%></td>
                </tr>
             </table>
             <table class="table table-sm table-striped table-hover table-bordered center" style="width:50%;">
             	<tr>
                	<td>Action</td>
                	<td style="text-align:center;">
                		<button id="myBtn" class="btn btn-danger" onclick="openMyDialog(<%=i.getInstituteID()%>)">Update</button>
                	</td>
                </tr>
             </table>
           </div>
           </div>
           <br>
	            <!-- Start Of The Modal Design-->
<div class="container" align="center">
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <table class="table table-hover">
        <tr>
            <th align="center"><b>Enter Institute Details To Be Updated :</b></th>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="institutename">Enter Institute Name</label> 
                <input type="text" class="form-control" id="institutename" name="institutename" value="<%=i.getInstituteName()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="institutepassword">Enter Institute Password</label> 
                <input type="password" class="form-control" id="institutepassword" name="institutepassword" placeholder="*******" />
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="instituteaddress">Enter Institute Address</label> 
                <input type="text" class="form-control" id="instituteaddress" name="instituteaddress" value="<%=i.getAddress()%>"/>
            </td>
        </tr>
        <tr>
            <td>
            	<label class="control-label" for="seats">Enter Number of Seats</label> 
                <input type="number" class="form-control" id="seats" name="seats" value="<%=i.getSeats()%>"/>
            </td>
        </tr>
        <tr>
            <td><button id="btnRaise" class="btn btn-danger" onclick="updateInstitute()">
            		Update Institute
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

									var instituteid = 0;

									// When the user clicks the button, open the modal 
									function openMyDialog(id) {
										modal.style.display = "block";
										instituteid = id;
									}

									function updateInstitute() {

										var institutename = document
												.getElementById("institutename").value;
										
										var institutepassword = document
										.getElementById("institutepassword").value;
										
										var instituteaddress = document
										.getElementById("instituteaddress").value;
										
										var seats = document.getElementById("seats").value;
										
										var url = "InstituteUpdate.jsp?instituteid="
												+ instituteid
												+ "&institutename="
												+ institutename
												+ "&institutepassword="
												+ institutepassword
												+ "&instituteaddress="
												+ instituteaddress
												+ "&seats="
												+ seats;

										modal.style.display = "none";

										if (window.XMLHttpRequest) {
											request = new XMLHttpRequest();
										} else if (window.ActiveXObject) {
											request = new ActiveXObject(
													"Microsoft.XMLHTTP");
										}

										try {
											request.onreadystatechange = getInstituteResponse;
											request.open("GET", url, true);
											request.send();
										} catch (e) {
											alert("Unable to connect to server");
										}
									}

									function successMessage()
									{
										$(document).ready(function(){
										swal ( 'Meta Institute Says' ,  'Institute Updation Successfully!!' ,  'success' );
										});
									}
									
									function failureMessage()
									{
										$(document).ready(function(){
										swal ( 'Meta Institute Says' ,  'Institute Update Unsuccessful!!' ,  'error' );
										});
									}
									
									function getInstituteResponse() {
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
										alert(instituteid);
									}

									// When the user clicks anywhere outside of the modal, close it
									window.onclick = function(event) {
										if (event.target == modal) {
											modal.style.display = "none";
										}
									}
								</script>
<div class="col-md-12 text-center">
       <button type="button" class="btn btn-dark btn-secondary"><a href="InstituteDashboard.jsp"> Back </a></button>
</div>		
</body>
</html>