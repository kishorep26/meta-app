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
        .row{
            background-color:white;
            border-radius: 30px;
        }
        img {
        	margin-left: 25px;
        	margin-top: 25px;
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
                    <img src="images/institutereg.jpeg" class="img-fluid" alt="institute-registration">
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">New here?</h1> 
                    <h4>Sign Up And Register Your Institution </h4>
                    <form method="post" action="AddInstitute.jsp">
                       
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="instituteid" placeholder="Enter Institute ID" id="instituteid" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="institutename" placeholder="Enter Institute Name" id="institutename" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="password" name="institutepassword" placeholder="***********" id="institutepassword" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="instituteaffiliationdate" placeholder="YYYY-MM-DD" id="instituteaffiliationdate" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="instituteaddress" placeholder="Enter Institute Address" id="instituteaddress" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="number" name="numberofseats" placeholder="Enter No Of Seats" id="numberofseats"class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="submit" name="signup" class="hvr-wobble-vertical btn1 mt-3 mb-5"> Sign Up </button>
                            </div>
                        </div>
                        <p>
                            Already have an account? <a href="InstituteLogin.jsp">Login here</a> 
                        </p>    
                    </form>
                </div>
            </div>
          </div> 
    </section>
</html>