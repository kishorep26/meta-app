<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
   <!DOCTYPE html>
    <html>
    
    <head>
      <meta charset="utf-8">
      <title>Meta Institutions</title>
      <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/6033/6033716.png" type="image/x-icon">
      <!-- Google Fonts -->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;900&family=Ubuntu&display=swap" rel="stylesheet">
    
      <!-- CSS Stylesheets -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
      <link rel="stylesheet" href="/TrainingInstitute/src/main/webapp/css/style.css">
    
      <!-- Font Awesome -->
      <script src="https://kit.fontawesome.com/4c7584ab0e.js" crossorigin="anonymous"></script>
    
      <!-- Bootstrap Scripts -->
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
      
    <style>
body {
    font-family: "Montserrat";
    text-align: center;
  }
  
  h1, h2, h3, h4, h5, h6 {
    font-family: "Montserrat";
    font-weight: 700;
  }
  
  p {
    color: #8f8f8f;
  }
  
  /* Headings */
  .big-heading {
    font-family: "Montserrat";
    font-weight: 900;
    font-size: 3.5rem;
    line-height: 1.5;
  }
  
  .section-heading {
    font-size: 3rem;
    line-height: 1.5
  }
  
  /* Containers */
  .container-fluid {
    padding: 7% 15%;
  }
  
  
  /* Sections */
  
  .colored-section {
    background-color: #082133;
    color: #fff;
  }
  
  .white-section {
    background-color: #fff;
  }
  /* Navigation Bar */
  .navbar {
    padding: 0 0 4.5rem;
  }
  
  .navbar-brand {
    font-family: "Ubuntu";
    font-size: 2.5rem;
    font-weight: bold;
  }
  
  .nav-item {
    padding: 0 18px;
  }
  
  .nav-link {
    font-size: 1.2rem;
    font-family: "Montserrat";
    font-weight: 300;
  }
  
  /* Download Buttons */
  .download-button {
    margin: 5% 3% 5% 0;
  }
  
  /* Title Section */
  
  #title .container-fluid {
    padding: 3% 15% 7%;
    text-align: left;
  }
  
  /* Title Image */
  .title-image {
   /* width: 60%;
    transform: rotate(25deg);
    position: absolute;
    right: 25%; */
  }
  
  /* Features Section */
  #features {
    position: relative;
    z-index: 1;
  }
  
  .feature-title {
    font-size: 1.5rem;
  }
  
  .feature-box {
    padding: 4.5%;
  }
  
  .icon {
    color: #124d78;
    margin-bottom: 1rem;
  }
  
  .icon:hover {
    color: #124d78;
  }
  
  /* Testimonial Sections */
  #testimonials {
    background-color: #124d78;
  }
  
  .testimonial-text {
    font-size: 3rem;
    line-height: 1.5;
  }
  
  .testimonial-image {
    width: 10%;
    border-radius: 100%;
    margin: 20px;
  }
  
  #press {
    background-color: #124d78;
    padding-bottom: 3%;
  }
  
  .press-logo {
    width: 15%;
    margin: 20px 20px 50px;
  }
  
  /* Login Section */
  #login {
    padding: 100px;
  }
  
  .login-text {
    font-size: 3rem;
    line-height: 1.5;
  }
  
  .login-column {
    padding: 3% 2%;
  }
  
  /* Footer Section */
  .colored-section p {
    color: #fff;
    /* color: black; */
  }
  .social-icon {
    margin: 20px 10px;
  }
  
  @media (max-width: 1028px) {
    #title {
      text-align: center;
    }
  
    .title-image {
      position: static;
      transform: rotate(0);
    }
  }
  </style>
    </head>
    
    <body>
      <section class="colored-section" id="title">
        <div class="container-fluid">
    
          <!-- Nav Bar -->
    
    
          <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href=""><svg xmlns="http://www.w3.org/2000/svg" width="45" height="40" fill="currentColor" class="bi bi-meta" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8.217 5.243C9.145 3.988 10.171 3 11.483 3 13.96 3 16 6.153 16.001 9.907c0 2.29-.986 3.725-2.757 3.725-1.543 0-2.395-.866-3.924-3.424l-.667-1.123-.118-.197a54.944 54.944 0 0 0-.53-.877l-1.178 2.08c-1.673 2.925-2.615 3.541-3.923 3.541C1.086 13.632 0 12.217 0 9.973 0 6.388 1.995 3 4.598 3c.319 0 .625.039.924.122.31.086.611.22.913.407.577.359 1.154.915 1.782 1.714Zm1.516 2.224c-.252-.41-.494-.787-.727-1.133L9 6.326c.845-1.305 1.543-1.954 2.372-1.954 1.723 0 3.102 2.537 3.102 5.653 0 1.188-.39 1.877-1.195 1.877-.773 0-1.142-.51-2.61-2.87l-.937-1.565ZM4.846 4.756c.725.1 1.385.634 2.34 2.001A212.13 212.13 0 0 0 5.551 9.3c-1.357 2.126-1.826 2.603-2.581 2.603-.777 0-1.24-.682-1.24-1.9 0-2.602 1.298-5.264 2.846-5.264.091 0 .181.006.27.018Z"/>
</svg> Meta Institutions</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo" aria-controls="navbarTogglerDemo" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
    
            <div class="collapse navbar-collapse" id="navbarTogglerDemo">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="#login">Hop In</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#testimonials">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#footer">Contact Us</a>
                  </li>
              </ul>
            </div>
          </nav>
    
    
          <!-- Title -->
    
    
          <div class="row">
            <div class="col-lg-6">
              <h1 class="big-heading">Hello</h1>
              <h2 class = "big-heading"> Welcome! </h2>
            </div>
    
            <div class="col-lg-6">
              <img class="title-image" src="images/title.jpg" alt="title-mockup">
            </div>
          </div>
        </div>
      </section>
    
    
      <!-- Features -->
    
    
      <section class="white-section" id="features">
        <div class="container-fluid">
          <div class="row">
            <div class="feature-box col-lg-4">
              <i class="icon fas fa-check-circle fa-4x"></i>
              <h3 class="feature-title">Easy to use.</h3>
              <p>So easy to use, even a basic user can do it.</p>
            </div>
    
            <div class="feature-box col-lg-4">
              <i class="icon fas fa-bullseye fa-4x"></i>
              <h3 class="feature-title">Elite Clientele</h3>
              <p>We have the perfect institute, just for you.</p>
            </div>
    
            <div class="feature-box col-lg-4">
              <i class="icon fas fa-heart fa-4x"></i>
              <h3 class="feature-title">Guaranteed to work.</h3>
              <p>Find your dream institute with a few clicks.</p>
            </div>
          </div>
        </div>
      </section>
    
    
      <!-- Testimonials -->
    
    
      <section class="colored-section" id="testimonials">
        <div id="testimonial-carousel" class="carousel slide" data-ride="false">
          <div class="carousel-inner">
            <div class="carousel-item active container-fluid">
              <h2 class="testimonial-text">Trainer Was Good His In-Depth Knowledge About The Concepts Is Rare And Highly Appreciated.</h2>
              <img class="testimonial-image" src="images/prathiksha.jpeg" alt="profile">
              <em>Prathiksha S Prashanth, Shivamogga</em>
            </div>
            <div class="carousel-item container-fluid">
              <h2 class="testimonial-text">Website Is Easy To Access and User Friendly.</h2>
              <img class="testimonial-image" src="images/prashwitha.jpeg" alt="profile">
              <em>Prashwitha Sanil, Bengaluru</em>
            </div>
            <div class="carousel-item container-fluid">
                <h2 class="testimonial-text"></h2>
                <img class="testimonial-image" src="images/shilpa.jpeg" alt="profile">
                <em>Shilpa Sharma, Noida</em>
            </div>
            <div class="carousel-item container-fluid">
              <h2 class="testimonial-text">I am thankful to all the faculties, mentors and entire SET as well as placement cell.</h2>
              <img class="testimonial-image" src="images/shubha.jpeg" alt="profile">
              <em>Shubha Y, Sira</em>
            </div>
            <div class="carousel-item container-fluid">
              <h2 class="testimonial-text">Overall it was a great experience and lifetime memory</h2>
              <img class="testimonial-image" src="images/kishore.jpg" alt="profile">
              <em>Kishore Prashanth, Bengaluru</em>
            </div>
          </div>
          <a class="carousel-control-prev" href="#testimonial-carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#testimonial-carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>
      </section>
    
      <!-- Press -->

      <section class="colored-section" id="press">
        <img class="press-logo" src="images/TechCrunch.png" alt="tc-logo">
        <img class="press-logo" src="images/tnw.png" alt="tnw-logo">
        <img class="press-logo" src="images/bizinsider.png" alt="biz-insider-logo">
        <img class="press-logo" src="images/mashable.png" alt="mashable-logo">
      </section>
    
    
      <!-- Login -->
    
      <section class="white-section" id="login">
        <h2 class="section-heading">Start Your Journey, With Us!</h2>
        <p>Kindly Choose Your Role!</p>
        <div class="row">
          <div class="login-column col-lg-4 col-md-6">
            <div class="card">
              <div class="card-header">
                <h3>ADMIN</h3>
              </div>
              <div class="card-body">
                <h2 class="login-text">Super User!</h2>
                <a href="AdminLogin.jsp" style="text-decoration:none;"><button class="btn btn-lg btn-block btn-outline-dark" type="button">Sign In</button></a>
              </div>
            </div>
          </div>
    
          <div class="login-column col-lg-4 col-md-6">
            <div class="card">
              <div class="card-header">
                <h3>INSTITUTE</h3>
              </div>
              <div class="card-body">
                <h2 class="login-text">Modus Operandi!</h2>
                <a href="InstituteLogin.jsp" style="text-decoration:none;"><button class="btn btn-lg btn-block btn-outline-dark" type="button">Sign In / Sign Up</button></a>
                
              </div>
            </div>
          </div>

          <div class="login-column col-lg-4 col-md-6">
            <div class="card">
              <div class="card-header">
                <h3>STUDENT</h3>
              </div>
              <div class="card-body">
                <h2 class="login-text">Incipient!</h2>
                <a href="StudentLogin.jsp" style="text-decoration:none;"><button class="btn btn-lg btn-block btn-outline-dark" type="button">Sign In / Sign Up</button></a>
              </div>
            </div>
          </div>
      </div>
      </section>
    
      <!-- Call to Action -->
    
    
      <!-- <section class="colored-section" id="cta">
        <div class="container-fluid">
          <h3 class="big-heading">Find the True Love of Your Dog's Life Today.</h3>
          <button class="btn btn-lg btn-dark download-button" type="button"><i class="fab fa-apple"></i> Download</button>
          <button class="btn btn-lg btn-light download-button" type="button"><i class="fab fa-google-play"></i> Download</button>
        </div>
      </section>
    
     -->

      <!-- Footer -->
    
    
      <footer class="colored-section" id="footer">
        <div class="container-fluid">
          <a href="https://www.facebook.com/"><i class="social-icon fab fa-facebook fa-3x"></i></a>
          <a href="https://twitter.com/"><i class="social-icon fab fa-twitter fa-3x"></i></a>
          <a href="https://www.instagram.com/"><i class="social-icon fab fa-instagram fa-3x"></i></a>
          <a href="https://mail.google.com/"><i class="social-icon fas fa-envelope fa-3x"></i></a>
          <p><i class="far fa-copyright"></i> Copyright 2021 <a href="#">Meta Institutions</a></p>
        </div>
      </footer>
    
    
    </body>
    
    </html>    