<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Institute Registration - Meta University</title>
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
                --primary-color: #059669;
                --secondary-color: #047857;
                --accent-color: #10b981;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Inter', sans-serif;
                background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
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
                color: #1f2937;
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
                box-shadow: 0 0 0 4px rgba(5, 150, 105, 0.1);
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
                box-shadow: 0 10px 30px rgba(5, 150, 105, 0.3);
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
                <i class="fas fa-building fa-3x mb-3"></i>
                <h1>Institute Registration</h1>
                <p>Partner with Meta University to offer quality education</p>
            </div>

            <div class="registration-form">
                <form method="post" action="AddInstitute.jsp">
                    <h3 class="form-section-title">Institute Information</h3>

                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label for="instituteid" class="form-label">Institute ID *</label>
                            <input type="text" class="form-control" id="instituteid" name="instituteid"
                                placeholder="Enter unique institute ID" required>
                        </div>

                        <div class="col-md-6">
                            <label for="institutename" class="form-label">Institute Name *</label>
                            <input type="text" class="form-control" id="institutename" name="institutename"
                                placeholder="Official institute name" required>
                        </div>
                    </div>

                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label for="institutepassword" class="form-label">Password *</label>
                            <input type="password" class="form-control" id="institutepassword" name="institutepassword"
                                placeholder="Create a secure password" required>
                        </div>

                        <div class="col-md-6">
                            <label for="instituteaffiliationdate" class="form-label">Affiliation Date *</label>
                            <input type="date" class="form-control" id="instituteaffiliationdate"
                                name="instituteaffiliationdate" required>
                        </div>
                    </div>

                    <h3 class="form-section-title mt-4">Location & Capacity</h3>

                    <div class="row g-3 mb-4">
                        <div class="col-md-8">
                            <label for="instituteaddress" class="form-label">Institute Address *</label>
                            <input type="text" class="form-control" id="instituteaddress" name="instituteaddress"
                                placeholder="Complete address with city and state" required>
                        </div>

                        <div class="col-md-4">
                            <label for="numberofseats" class="form-label">Total Seats *</label>
                            <input type="number" class="form-control" id="numberofseats" name="numberofseats"
                                placeholder="Available seats" min="1" required>
                        </div>
                    </div>

                    <div class="text-center mt-4">
                        <button type="submit" class="btn-register">
                            <i class="fas fa-building me-2"></i> Register Institute
                        </button>
                    </div>
                </form>

                <div class="login-link">
                    Already registered? <a href="InstituteLogin.jsp">Login here</a>
                </div>

                <div class="back-home">
                    <a href="index.jsp"><i class="fas fa-arrow-left me-1"></i> Back to Home</a>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>