<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Login - Meta University</title>
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
                background: linear-gradient(135deg, var(--dark-blue) 0%, #0f172a 100%);
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
            }

            .login-container {
                background: white;
                border-radius: 24px;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
                overflow: hidden;
                max-width: 1000px;
                width: 100%;
            }

            .login-image {
                background: linear-gradient(135deg, rgba(15, 23, 42, 0.95), rgba(30, 58, 138, 0.95)), url('images/admin-login.jpeg');
                background-size: cover;
                background-position: center;
                padding: 60px 40px;
                color: white;
                display: flex;
                flex-direction: column;
                justify-content: center;
                min-height: 600px;
            }

            .login-image h2 {
                font-family: 'Playfair Display', serif;
                font-size: 2.5rem;
                margin-bottom: 1rem;
            }

            .login-image p {
                font-size: 1.1rem;
                opacity: 0.9;
                line-height: 1.6;
            }

            .admin-badge {
                display: inline-block;
                background: var(--accent-color);
                color: white;
                padding: 0.5rem 1rem;
                border-radius: 50px;
                font-size: 0.9rem;
                font-weight: 600;
                margin-bottom: 1rem;
            }

            .login-form {
                padding: 60px 50px;
            }

            .login-header {
                text-align: center;
                margin-bottom: 2rem;
            }

            .login-icon {
                width: 80px;
                height: 80px;
                background: linear-gradient(135deg, var(--dark-blue), #0f172a);
                border-radius: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto 1.5rem;
                font-size: 2rem;
                color: white;
            }

            .login-header h1 {
                font-family: 'Playfair Display', serif;
                font-size: 2rem;
                color: #1f2937;
                margin-bottom: 0.5rem;
            }

            .login-header p {
                color: #6b7280;
                font-size: 1rem;
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
                border-color: var(--dark-blue);
                box-shadow: 0 0 0 4px rgba(15, 23, 42, 0.1);
            }

            .btn-login {
                background: linear-gradient(135deg, var(--dark-blue), #0f172a);
                color: white;
                border: none;
                padding: 1rem;
                border-radius: 12px;
                font-weight: 600;
                font-size: 1.1rem;
                width: 100%;
                margin-top: 1.5rem;
                transition: all 0.3s ease;
            }

            .btn-login:hover {
                transform: translateY(-2px);
                box-shadow: 0 10px 30px rgba(15, 23, 42, 0.4);
            }

            .back-home {
                text-align: center;
                margin-top: 1.5rem;
            }

            .back-home a {
                color: #6b7280;
                text-decoration: none;
                font-size: 0.9rem;
            }

            .back-home a:hover {
                color: var(--dark-blue);
            }

            @media (max-width: 768px) {
                .login-image {
                    display: none;
                }

                .login-form {
                    padding: 40px 30px;
                }
            }
        </style>
    </head>

    <body>
        <div class="login-container">
            <div class="row g-0">
                <div class="col-lg-5">
                    <div class="login-image">
                        <span class="admin-badge"><i class="fas fa-shield-alt me-2"></i>Admin Access</span>
                        <h2>System Administration</h2>
                        <p>Manage the entire university system with comprehensive administrative controls.</p>
                        <div class="mt-4">
                            <i class="fas fa-check-circle me-2"></i> Manage All Institutes<br>
                            <i class="fas fa-check-circle me-2"></i> Oversee Student Records<br>
                            <i class="fas fa-check-circle me-2"></i> Monitor Course Offerings<br>
                            <i class="fas fa-check-circle me-2"></i> Review System Analytics
                        </div>
                    </div>
                </div>

                <div class="col-lg-7">
                    <div class="login-form">
                        <div class="login-header">
                            <div class="login-icon">
                                <i class="fas fa-user-shield"></i>
                            </div>
                            <h1>Admin Login</h1>
                            <p>Secure access to administrative dashboard</p>
                        </div>

                        <form method="post" action="ValidateAdmin.jsp">
                            <div class="mb-3">
                                <label for="adminid" class="form-label">Admin ID</label>
                                <input type="text" class="form-control" id="adminid" name="adminid"
                                    placeholder="Enter admin ID" required>
                            </div>

                            <div class="mb-3">
                                <label for="adminpassword" class="form-label">Password</label>
                                <input type="password" class="form-control" id="adminpassword" name="adminpassword"
                                    placeholder="Enter admin password" required>
                            </div>

                            <button type="submit" class="btn-login">
                                <i class="fas fa-lock me-2"></i> Secure Login
                            </button>
                        </form>

                        <div class="back-home">
                            <a href="index.jsp"><i class="fas fa-arrow-left me-1"></i> Back to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>