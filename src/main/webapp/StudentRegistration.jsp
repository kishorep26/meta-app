<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/hover.css/2.1.1/css/hover.css">
    <title>Sign up!</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing:border-box;
        }
        body {
            background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3));
            background-size: cover;
            background-position: center;
            background-repeat: repeat-y;
        }
        
         p{
        	font-weight: 500;	
        }
        .row{
            background-color:white;
            border-radius: 30px;
        }
        img {
            margin-left: 25px;
        	margin-top: 65px;
        	border-radius: 5px;
        }
        .btn1{
            border: none;
            outline:none;
            height: 50px;
            width: 100%;
            background-color: #000;
            color:#fff;
            border-radius: 4px;
            font-weight: bold;
        }
        .btn1:hover{
            background-color: #fff;
            border: 1px solid;
            color: #000;
        }
    </style>
  </head>
  <body>
    
    <section class="form my-3 mx-3">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="images/studentreg.jpg" class="img-fluid" alt="student-registration">
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">New here?</h1> 
                    <h4>Sign Up To Get Into Your Dream Institution</h4>
                    <form method="post" action="AddStudent.jsp">
                       
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="userid" placeholder="Enter User ID"  id="userid" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="email" name="emailid" placeholder="Enter Email Id"  id="emailid" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="studentname" placeholder="Enter Student Name"  id="studentname" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="studentqualification" placeholder="Enter Student Qualification" id="studentqualification" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="password" name="studentpassword" placeholder="********" id="studentpassword" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="studentnumber" placeholder="Enter Contact No" id="studentnumber" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="studentaddress" placeholder="Student Address" id="studentaddress" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="submit" name="signup" class="hvr-wobble-vertical btn1 mt-3 mb-5"> Sign Up </button>
                            </div>
                        </div>
                        <p>
                            Already have an account? <a href="StudentLogin.jsp">Login here</a> 
                        </p>    
                    </form>
                </div>
            </div>
          </div>
    </section>
</html>