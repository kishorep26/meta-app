<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Registration - Meta University</title>
        <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/3976/3976625.png">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@700&display=swap"
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
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Inter', sans-serif;
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--dark-blue) 100%);
                min-height: 100vh;
                padding: 40px 20px;
            }

            .registration-container {
                background: white;
                border-radius: 24px;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                overflow: hidden;
                max-width: 900px;
                margin: 0 auto;
            }

            .registration-header {
                background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
                color: white;
                padding: 40px;
                text-align: center;
            }

            .registration-header h1 {
                font-family: 'Playfair Display', serif;
                font-size: 2.5rem;
                margin-bottom: 0.5rem;
            }

            .registration-header p {
                font-size: 1.1rem;
                opacity: 0.95;
            }

            .registration-form {
                padding: 50px 40px;
            }

            .form-section-title {
                font-family: 'Playfair Display', serif;
                font-size: 1.5rem;
                color: var(--text-dark);
                margin-bottom: 1.5rem;
                padding-bottom: 0.5rem;
                border-bottom: 2px solid #e5e7eb;
            }

            .form-label {
                font-weight: 600;
                color: #374151;
                margin-bottom: 0.5rem;
            }

            .form-control {
                padding: 0.875rem 1rem;
                border: 2px solid #e5e7eb;
                border-radius: 12px;
                font-size: 1rem;
                transition: all 0.3s ease;
            }

            .form-control:focus {
                border-color: var(--primary-color);
                box-shadow: 0 0 0 4px rgba(30, 64, 175, 0.1);
            }

            .btn-register {
                background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
                color: white;
                border: none;
                padding: 1rem 3rem;
                border-radius: 12px;
                font-weight: 600;
                font-size: 1.1rem;
                transition: all 0.3s ease;
            }

            .btn-register:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 30px rgba(30, 64, 175, 0.3);
            }

            .login-link {
                text-align: center;
                margin-top: 1.5rem;
                color: #6b7280;
            }

            .login-link a {
                color: var(--primary-color);
                text-decoration: none;
                font-weight: 600;
            }

            .login-link a:hover {
                text-decoration: underline;
            }

            .back-home {
                text-align: center;
                margin-top: 1rem;
            }

            .back-home a {
                color: #6b7280;
                text-decoration: none;
                font-size: 0.9rem;
            }

            .back-home a:hover {
                color: var(--primary-color);
            }

            @media (max-width: 768px) {
                .registration-form {
                    padding: 30px 20px;
                }

                .registration-header h1 {
                    font-size: 2rem;
                }
            }
        </style>
    </head>

    <body>
        <div class="registration-container">
            <div class="registration-header">
                <i class="fas fa-user-graduate fa-3x mb-3"></i>
                <h1>Student Registration</h1>
                <p>Join Meta University and start your academic journey</p>
            </div>

            <div class="registration-form">
                <form method="post" action="AddStudent.jsp">
                    <h3 class="form-section-title">Personal Information</h3>

                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label for="userid" class="form-label">User ID *</label>
                            <input type="text" class="form-control" id="userid" name="userid"
                                placeholder="Choose a unique user ID" required>
                        </div>

                        <div class="col-md-6">
                            <label for="emailid" class="form-label">Email Address *</label>
                            <input type="email" class="form-control" id="emailid" name="emailid"
                                placeholder="your.email@example.com" required>
                        </div>
                    </div>

                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label for="studentname" class="form-label">Full Name *</label>
                            <input type="text" class="form-control" id="studentname" name="studentname"
                                placeholder="Enter your full name" required>
                        </div>

                        <div class="col-md-6">
                            <label for="studentqualification" class="form-label">Qualification *</label>
                            <input type="text" class="form-control" id="studentqualification"
                                name="studentqualification" placeholder="e.g., High School Graduate" required>
                        </div>
                    </div>

                    <h3 class="form-section-title mt-4">Contact & Security</h3>

                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label for="studentnumber" class="form-label">Contact Number *</label>
                            <input type="text" class="form-control" id="studentnumber" name="studentnumber"
                                placeholder="+1234567890" required>
                        </div>

                        <div class="col-md-6">
                            <label for="studentpassword" class="form-label">Password *</label>
                            <input type="password" class="form-control" id="studentpassword" name="studentpassword"
                                placeholder="Create a strong password" required>
                        </div>
                    </div>

                    <div class="mb-4">
                        <label for="studentaddress" class="form-label">Address *</label>
                        <input type="text" class="form-control" id="studentaddress" name="studentaddress"
                            placeholder="Enter your complete address" required>
                    </div>

                    <div class="text-center mt-4">
                        <button type="submit" class="btn-register">
                            <i class="fas fa-user-plus me-2"></i> Create Account
                        </button>
                    </div>
                </form>

                <div class="login-link">
                    Already have an account? <a href="StudentLogin.jsp">Login here</a>
                </div>

                <div class="back-home">
                    <a href="index.jsp"><i class="fas fa-arrow-left me-1"></i> Back to Home</a>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>