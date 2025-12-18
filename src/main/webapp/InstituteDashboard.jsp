<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Institute Dashboard</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <style>
    body{
        background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("images/institute.jpeg");
        background-size: cover;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .card{
        background-color: #DEB992;
        width: 230px;
        height: 200px;
        color:#DEB992;
        margin: 1em;
        border-radius: 15px;
        /* display: flex; */
        justify-content: center;
        align-items: center;
        padding: 0 1.5em;
        text-align: center;
        cursor: pointer;
        position: relative; 
        flex-direction: column;
    }
    .card::before , .card::after{
        content: '';
        position: absolute;
        background: #051622;
        width: 100%;
        height: 40%;
        border-radius: 15px 15px 0 0;
        transition: all .4s;
        
    }
    .card::before{
        top: 0;
    }
    .card:hover::before{
        transform: translateY(-20px);
    }
    .card::after{
        bottom: 10px;
        height: 60%;
        border-radius:  0 0 15px 15px ;
        
    }

    h2{
        color: whitesmoke;
        padding-bottom: 15px;
        font-family: "Montserrat";
        font-weight: 800;
        font-size: 2.25rem;
        letter-spacing: 1px;
        text-shadow: 2px 2px 2px;
    }
    .icon{
        width: 60px;
        height: 60px;
        background: #1BA098;
        color: #DEB992;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        z-index: 1;
    
    }
    .icon:hover .icon{
        box-shadow: 0 0 10px;
    }
    .icon i{
        font-size: 1.5em;
    }
    .card p{
        margin: 0.7em 0;
        font-size: 0.8em;
        display: none;
        opacity: 0;
        transition: all .4s;
        z-index: 1;
    }
        
    .card:hover p{
        color: whitesmoke;
        display: block;
        opacity: 1;
        padding: 5px 5px;
        font-family: "Ubuntu";
        font-size: 0.78rem;
    }
    .card h4{
        font-size: 1.2rem;
        font-family: "Ubuntu";
        font-weight: 300;
        margin-top: 0.5em;
        z-index: 1;
    }

    .card .btn{
        background-color: #051622;
        margin-top: 0.5em;
        z-index: 1;
        padding-bottom: 10px;
    }

    .btn{
        height: 50px; 
        width: 120px;
        border-radius: 15px;
    }
    
    .btn a{
        font-size: 1.2rem;
        font-family: "Montserrat";
        font-weight: 300;
        color: whitesmoke;
    }

    .btn:hover{
        box-shadow: inset 120px 0 0 0 #DEB992;
        cursor: pointer;
        /* transition-delay: 40ms; */
    }
    .btn a:hover{
        color: #051622;
    }

    .logout-button{
        padding-top: 10px;
    }

    .logout-button .btn:hover{
        box-shadow: inset 120px 0 0 0 #4bbb4b;
        cursor: pointer;
    }
    .logout-button .btn a:hover{
        color: whitesmoke;
    }

    </style>
    </head>
  <body>
      <div class = "col-12 container text-center">
          <h2>Welcome <% out.print(session.getAttribute("instituteid"));%>!</h2>
        <div class="container text-center d-flex justify-content-center">
        <br>
            <div class="row d-flex justify-content-center">
                <div class="card border-0">
                    <div class="icon">
                    	<i class="fas fa-user-graduate"></i>
                    </div>
                    <h4>View Student</h4>
                    <button class="btn btn-dark btn-sm"><a href="ViewStudent.jsp"> Proceed </a></button>
                    <p>Displays Student details</p>
                </div>
                <div class="card border-0">
                    <div class="icon">
                    	<i class="fas fa-university"></i>
                    </div>
                    <h4>Add Faculty</h4>
                    <button class="btn btn-dark"><a href="AddNewFaculty.jsp"> Proceed </a></button>
                    <p>Adds New Faculty</p>
                </div>     
                <div class="card border-0">
                    <div class="icon">
                        <i class="fas fa-edit"></i>
                    </div>
                    <h4>Update Institute</h4>
                    <button class="btn btn-dark btn-sm"><a href="UpdateInstitute.jsp"> Proceed </a></button>
                    <p>Updates Institute Details</p>
                </div>
                
                <div class="card border-0">
                    <div class="icon">
                        <i class="fas fa-eye"></i>
                    </div>
                    <h4>View Requests</h4>
                    <button class="btn btn-dark btn-sm"><a href="ViewRequest.jsp"> Proceed </a></button>
                    <p>Views Admission Requests</p>
                </div>
                <div class="card border-0">
                    <div class="icon">
                        <i class="fas fa-share-square"></i>
                    </div>
                    <h4>Send Response</h4>
                    <button class="btn btn-dark btn-sm"><a href="SendResponse.jsp"> Proceed </a></button>
                    <p>Sends A Response To Request</p>
                </div>
                <div class="card border-0">
                    <div class="icon">
                    	<i class="fas fa-comments"></i>
                    </div>
                    <h4>View Feedbacks</h4>
                    <button class="btn btn-dark"><a href="ViewFeedback.jsp"> Proceed </a></button>
                    <p>Displays Feedbacks</p>
                </div>
                <div class="card border-0">
                    <div class="icon">
                    	<i class="fas fa-eye"></i>
                    </div>
                    <h4>View Faculty</h4>
                    <button class="btn btn-dark"><a href="ViewFaculty.jsp"> Proceed </a></button>
                    <p>Displays Faculty</p>
                </div>
            </div>     
        </div>
        <div class="logout-button">
            <button class="btn btn-danger"><a href= "Logout.jsp">Log Out</a></button>
        </div>
    </div>  
  </body>
</html>