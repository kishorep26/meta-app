<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meta University - Excellence in Education</title>
    <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/3976/3976625.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Playfair+Display:wght@700;900&display=swap"
      rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
      :root {
        --primary-color: #1e40af;
        --secondary-color: #0ea5e9;
        --accent-color: #f59e0b;
        --dark-blue: #1e3a8a;
        --light-blue: #dbeafe;
        --text-dark: #1f2937;
        --text-light: #6b7280;
        --bg-light: #f9fafb;
      }

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        font-family: 'Inter', sans-serif;
        color: var(--text-dark);
        line-height: 1.6;
        overflow-x: hidden;
      }

      h1,
      h2,
      h3,
      h4,
      h5,
      h6 {
        font-family: 'Playfair Display', serif;
        font-weight: 700;
      }

      /* Navigation */
      .navbar {
        background: linear-gradient(135deg, var(--primary-color) 0%, var(--dark-blue) 100%);
        padding: 1rem 0;
        box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
      }

      .navbar-brand {
        font-family: 'Playfair Display', serif;
        font-size: 1.8rem;
        font-weight: 900;
        color: white !important;
        display: flex;
        align-items: center;
        gap: 0.5rem;
      }

      .navbar-brand i {
        font-size: 2rem;
      }

      .nav-link {
        color: rgba(255, 255, 255, 0.9) !important;
        font-weight: 500;
        margin: 0 0.5rem;
        transition: all 0.3s ease;
        position: relative;
      }

      .nav-link:hover {
        color: white !important;
        transform: translateY(-2px);
      }

      .nav-link::after {
        content: '';
        position: absolute;
        bottom: -5px;
        left: 50%;
        transform: translateX(-50%);
        width: 0;
        height: 2px;
        background: var(--accent-color);
        transition: width 0.3s ease;
      }

      .nav-link:hover::after {
        width: 80%;
      }

      /* Hero Section */
      .hero-section {
        background: linear-gradient(135deg, var(--primary-color) 0%, var(--dark-blue) 100%);
        color: white;
        padding: 100px 0 80px;
        position: relative;
        overflow: hidden;
      }

      .hero-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="rgba(255,255,255,0.05)" d="M0,96L48,112C96,128,192,160,288,160C384,160,480,128,576,122.7C672,117,768,139,864,138.7C960,139,1056,117,1152,101.3C1248,85,1344,75,1392,69.3L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>');
        background-size: cover;
        opacity: 0.3;
      }

      .hero-content {
        position: relative;
        z-index: 1;
      }

      .hero-title {
        font-size: 4rem;
        font-weight: 900;
        margin-bottom: 1.5rem;
        line-height: 1.2;
      }

      .hero-subtitle {
        font-size: 1.5rem;
        font-weight: 300;
        margin-bottom: 2rem;
        opacity: 0.95;
      }

      .hero-stats {
        display: flex;
        gap: 3rem;
        margin-top: 3rem;
        flex-wrap: wrap;
      }

      .stat-item {
        text-align: center;
      }

      .stat-number {
        font-size: 2.5rem;
        font-weight: 800;
        color: var(--accent-color);
      }

      .stat-label {
        font-size: 0.9rem;
        opacity: 0.9;
      }

      /* Features Section */
      .features-section {
        padding: 80px 0;
        background: var(--bg-light);
      }

      .section-title {
        font-size: 2.5rem;
        margin-bottom: 1rem;
        text-align: center;
      }

      .section-subtitle {
        text-align: center;
        color: var(--text-light);
        font-size: 1.1rem;
        margin-bottom: 4rem;
      }

      .feature-card {
        background: white;
        border-radius: 16px;
        padding: 2.5rem;
        text-align: center;
        transition: all 0.3s ease;
        border: 1px solid #e5e7eb;
        height: 100%;
      }

      .feature-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
      }

      .feature-icon {
        width: 80px;
        height: 80px;
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        border-radius: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 1.5rem;
        font-size: 2rem;
        color: white;
      }

      .feature-title {
        font-size: 1.3rem;
        margin-bottom: 1rem;
        color: var(--text-dark);
      }

      .feature-description {
        color: var(--text-light);
        line-height: 1.7;
      }

      /* Testimonials Section */
      .testimonials-section {
        padding: 80px 0;
        background: linear-gradient(135deg, var(--primary-color) 0%, var(--dark-blue) 100%);
        color: white;
      }

      .testimonial-card {
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(10px);
        border-radius: 20px;
        padding: 2.5rem;
        border: 1px solid rgba(255, 255, 255, 0.2);
        height: 100%;
      }

      .testimonial-text {
        font-size: 1.1rem;
        font-style: italic;
        margin-bottom: 1.5rem;
        line-height: 1.8;
      }

      .testimonial-author {
        display: flex;
        align-items: center;
        gap: 1rem;
      }

      .author-image {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        border: 3px solid white;
        object-fit: cover;
      }

      .author-info h5 {
        margin: 0;
        font-size: 1.1rem;
      }

      .author-info p {
        margin: 0;
        opacity: 0.8;
        font-size: 0.9rem;
      }

      /* Login Section */
      .login-section {
        padding: 80px 0;
        background: white;
      }

      .login-card {
        background: white;
        border-radius: 20px;
        padding: 2.5rem;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        border: 2px solid transparent;
        height: 100%;
      }

      .login-card:hover {
        transform: translateY(-5px);
        border-color: var(--primary-color);
        box-shadow: 0 20px 60px rgba(30, 64, 175, 0.15);
      }

      .login-icon {
        width: 100px;
        height: 100px;
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 1.5rem;
        font-size: 2.5rem;
        color: white;
      }

      .login-title {
        font-size: 1.8rem;
        margin-bottom: 0.5rem;
        color: var(--text-dark);
      }

      .login-description {
        color: var(--text-light);
        margin-bottom: 2rem;
      }

      .login-btn {
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        color: white;
        border: none;
        padding: 1rem 2rem;
        border-radius: 50px;
        font-weight: 600;
        font-size: 1.1rem;
        transition: all 0.3s ease;
        width: 100%;
      }

      .login-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 30px rgba(30, 64, 175, 0.3);
        background: linear-gradient(135deg, var(--dark-blue), var(--primary-color));
      }

      /* Footer */
      .footer {
        background: linear-gradient(135deg, var(--dark-blue) 0%, #0f172a 100%);
        color: white;
        padding: 60px 0 30px;
      }

      .footer-links {
        display: flex;
        gap: 2rem;
        justify-content: center;
        margin-bottom: 2rem;
      }

      .footer-link {
        color: rgba(255, 255, 255, 0.8);
        text-decoration: none;
        transition: all 0.3s ease;
      }

      .footer-link:hover {
        color: white;
        transform: translateY(-2px);
      }

      .social-icons {
        display: flex;
        gap: 1.5rem;
        justify-content: center;
        margin-bottom: 2rem;
      }

      .social-icon {
        width: 50px;
        height: 50px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 1.3rem;
        transition: all 0.3s ease;
        text-decoration: none;
      }

      .social-icon:hover {
        background: var(--accent-color);
        transform: translateY(-5px);
        color: white;
      }

      .copyright {
        text-align: center;
        opacity: 0.7;
        font-size: 0.9rem;
      }

      /* Responsive */
      @media (max-width: 768px) {
        .hero-title {
          font-size: 2.5rem;
        }

        .hero-subtitle {
          font-size: 1.2rem;
        }

        .hero-stats {
          gap: 1.5rem;
        }

        .section-title {
          font-size: 2rem;
        }
      }
    </style>
  </head>

  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
      <div class="container">
        <a class="navbar-brand" href="#">
          <i class="fas fa-graduation-cap"></i>
          <div>
            Meta University
            <div style="font-size: 0.6rem; opacity: 0.9; font-style: italic; font-weight: 400;">Lux et Veritas</div>
          </div>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="#features">Programs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#testimonials">Student Life</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#login">Portal</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#footer">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-8 hero-content">
            <div class="latin-motto" style="font-size: 1rem; opacity: 0.9; margin-bottom: 1rem; font-style: italic;">
              <i class="fas fa-quote-left me-2"></i>Veritas et Scientia<i class="fas fa-quote-right ms-2"></i>
            </div>
            <h1 class="hero-title">Shape Your Future with Excellence</h1>
            <p class="hero-subtitle">Join a community of learners, innovators, and leaders. Experience world-class
              education that transforms lives.</p>
            <p style="font-size: 0.95rem; opacity: 0.85; font-style: italic;">Per Aspera Ad Astra - Through Hardships to
              the Stars</p>

            <div class="hero-stats">
              <div class="stat-item">
                <div class="stat-number">12+</div>
                <div class="stat-label">Partner Institutes</div>
              </div>
              <div class="stat-item">
                <div class="stat-number">50+</div>
                <div class="stat-label">Programs Offered</div>
              </div>
              <div class="stat-item">
                <div class="stat-number">1000+</div>
                <div class="stat-label">Students Enrolled</div>
              </div>
              <div class="stat-item">
                <div class="stat-number">95%</div>
                <div class="stat-label">Placement Rate</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="features-section" id="features">
      <div class="container">
        <h2 class="section-title">Why Choose Meta University?</h2>
        <p class="section-subtitle">Discover the advantages that set us apart in higher education</p>

        <div class="row g-4">
          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-book-open"></i>
              </div>
              <h3 class="feature-title">Comprehensive Programs</h3>
              <p class="feature-description">Access a wide range of courses across multiple disciplines, designed by
                industry experts and academic leaders.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-users"></i>
              </div>
              <h3 class="feature-title">Expert Faculty</h3>
              <p class="feature-description">Learn from experienced professors and industry professionals dedicated to
                your academic success.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-laptop-code"></i>
              </div>
              <h3 class="feature-title">Modern Facilities</h3>
              <p class="feature-description">State-of-the-art labs, libraries, and digital resources to enhance your
                learning experience.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-certificate"></i>
              </div>
              <h3 class="feature-title">Industry Recognition</h3>
              <p class="feature-description">Earn certifications and degrees recognized by top employers worldwide.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-briefcase"></i>
              </div>
              <h3 class="feature-title">Career Support</h3>
              <p class="feature-description">Dedicated placement cell with strong industry connections to launch your
                career.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="feature-card">
              <div class="feature-icon">
                <i class="fas fa-comments"></i>
              </div>
              <h3 class="feature-title">Student Feedback</h3>
              <p class="feature-description">Your voice matters. Share feedback and help us continuously improve our
                programs.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials-section" id="testimonials">
      <div class="container">
        <h2 class="section-title">Student Success Stories</h2>
        <p class="section-subtitle">Hear from our accomplished students and alumni</p>

        <div class="row g-4">
          <div class="col-lg-4 col-md-6">
            <div class="testimonial-card">
              <p class="testimonial-text">"The trainer's in-depth knowledge about the concepts is rare and highly
                appreciated. This program transformed my career!"</p>
              <div class="testimonial-author">
                <img src="images/prathiksha.jpeg" alt="Prathiksha" class="author-image">
                <div class="author-info">
                  <h5>Prathiksha S Prashanth</h5>
                  <p>Computer Science, 2021</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="testimonial-card">
              <p class="testimonial-text">"The website is easy to access and user-friendly. Registration and course
                selection was seamless!"</p>
              <div class="testimonial-author">
                <img src="images/prashwitha.jpeg" alt="Prashwitha" class="author-image">
                <div class="author-info">
                  <h5>Prashwitha Sanil</h5>
                  <p>Information Science, 2021</p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="testimonial-card">
              <p class="testimonial-text">"Overall it was a great experience and lifetime memory. The faculty and
                placement support were exceptional!"</p>
              <div class="testimonial-author">
                <img src="images/kishore.jpg" alt="Kishore" class="author-image">
                <div class="author-info">
                  <h5>Kishore Prashanth</h5>
                  <p>Computer Science, 2021</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Login Section -->
    <section class="login-section" id="login">
      <div class="container">
        <h2 class="section-title">Access Your Portal</h2>
        <p class="section-subtitle">Select your role to get started</p>

        <div class="row g-4 justify-content-center">
          <div class="col-lg-4 col-md-6">
            <div class="login-card text-center">
              <div class="login-icon">
                <i class="fas fa-user-shield"></i>
              </div>
              <h3 class="login-title">Admin</h3>
              <p class="login-description">Manage institutes, courses, and oversee all operations</p>
              <a href="AdminLogin.jsp" style="text-decoration: none;">
                <button class="login-btn">Admin Login</button>
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="login-card text-center">
              <div class="login-icon">
                <i class="fas fa-building"></i>
              </div>
              <h3 class="login-title">Institute</h3>
              <p class="login-description">Manage courses, faculty, and student admissions</p>
              <a href="InstituteLogin.jsp" style="text-decoration: none;">
                <button class="login-btn">Institute Portal</button>
              </a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="login-card text-center">
              <div class="login-icon">
                <i class="fas fa-user-graduate"></i>
              </div>
              <h3 class="login-title">Student</h3>
              <p class="login-description">Register, browse courses, and track your progress</p>
              <a href="StudentLogin.jsp" style="text-decoration: none;">
                <button class="login-btn">Student Portal</button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer" id="footer">
      <div class="container">
        <div class="footer-links">
          <a href="#" class="footer-link">About Us</a>
          <a href="#" class="footer-link">Programs</a>
          <a href="#" class="footer-link">Admissions</a>
          <a href="#" class="footer-link">Campus Life</a>
          <a href="#" class="footer-link">Contact</a>
        </div>

        <div class="social-icons">
          <a href="https://www.facebook.com/" class="social-icon" target="_blank">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="https://twitter.com/" class="social-icon" target="_blank">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="https://www.instagram.com/" class="social-icon" target="_blank">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="https://www.linkedin.com/" class="social-icon" target="_blank">
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a href="mailto:info@metauniversity.edu" class="social-icon">
            <i class="fas fa-envelope"></i>
          </a>
        </div>

        <div class="copyright">
          <p>&copy; 2025 Meta University. All rights reserved. | Excellence in Education</p>
        </div>
      </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>

  </html>