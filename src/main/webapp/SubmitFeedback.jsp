<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit Feedback</title>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/hover.css/2.1.1/css/hover.css">
<style>
	body {
    background-color: #000
}

.contact-clean {
    background: #000;
    padding: 80px 0
}

@media (max-width:767px) {
    .contact-clean {
        padding: 20px 0
    }
}

.contact-clean form {
    max-width: 480px;
    width: 90%;
    margin: 0 auto;
    background-color: #ffffff;
    padding: 40px;
    border-radius: 4px;
    color: #505e6c;
    box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1)
}

@media (max-width:767px) {
    .contact-clean form {
        padding: 30px
    }
}

.contact-clean h2 {
    margin-top: 5px;
    font-weight: bold;
    font-size: 28px;
    margin-bottom: 36px;
    color: inherit
}

.contact-clean .form-group:last-child {
    margin-bottom: 5px
}

.contact-clean form .form-control {
    background: #fff;
    border-radius: 2px;
    box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.05);
    outline: none;
    color: inherit;
    padding-left: 12px;
    height: 42px
}

.contact-clean form .form-control:focus {
    border: 1px solid #b2b2b2
}

.contact-clean form textarea.form-control {
    min-height: 100px;
    max-height: 260px;
    padding-top: 10px;
    resize: vertical;
    resize: none
}

.contact-clean form .btn {
    padding: 16px 32px;
    border: none;
    background: none;
    box-shadow: none;
    text-shadow: none;
    opacity: 0.9;
    text-transform: uppercase;
    font-weight: bold;
    font-size: 13px;
    letter-spacing: 0.4px;
    line-height: 1;
    outline: none !important
}

.contact-clean form .btn:hover {
    opacity: 1
}

.contact-clean form .btn:active {
    transform: translateY(1px)
}

.contact-clean form .btn-primary {
    background-color: #000000;
    margin-top: 15px;
    color: #fff
}
</style>

</head>
<body>
<div class="contact-clean">
    <form action="AddNewFeedback.jsp">
        <h2 class="text-center">Feedback Form</h2>
    
   		 <div class="form-group"><input class="form-control" type="text" name="instituteid" placeholder="Enter Institute ID " id = "instituteid"></div>
        <div class="form-group"><textarea class="form-control" name="description" placeholder="Enter Your Feedback Here" rows="14" id ="description" ></textarea></div>
        <div class="form-group"><button class="btn btn-primary" type="submit">Send Feedback</button>
        <button class="btn btn-primary" type="submit"><a href="StudentDashboard.jsp" style="text-decoration:none;">Cancel</a></button>
        </div>
    </form>
</div>
</body>
</html>