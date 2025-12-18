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
    <title>Admin Login</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body {
            background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3));
            background-size: cover;
            background-position: right;
            background-repeat: repeat-y;           
        }
        .container {
            max-width: 950px;
            padding-top: 10%;
        }
        .row{
            background-color:white;
            border-radius: 30px;
        }
        img {
        	padding-top:35%;
        	padding-left: 5%;     
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
                    <img src="images/admin-login.jpeg" class="img-fluid" alt="admin-login">
                </div>
                <div class="container col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3"> Welcome Admin! </h1>    
                    <p><h4 class="mt-3 mb-3"> Please Sign In! </h4></p>
                    <form method="post" action="ValidateAdmin.jsp">
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="adminid" placeholder="Enter Admin ID" id="adminid" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="password" name="adminpassword" placeholder="********"  id="adminpassword" class="form-control my-3 p-2" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <button type="submit" name="signin" class="hvr-wobble-vertical btn1 mt-3 mb-5"> Sign In </button>
                            </div>
                        </div>
                        <div>
                        	<br>
                        	<br>
                        </div>
                    </form>
                </div>
            </div>
            </div>
    </section>
</body>
</html>