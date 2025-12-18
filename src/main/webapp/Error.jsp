<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isErrorPage="true" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Something Went Wrong</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <style>
            body {
                background-color: #f8f9fa;
                text-align: center;
                padding-top: 50px;
                font-family: "Montserrat", sans-serif;
            }

            .error-container {
                max-width: 600px;
                margin: 0 auto;
                background: white;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            h1 {
                color: #dc3545;
                font-size: 3rem;
            }

            p {
                font-size: 1.2rem;
                color: #6c757d;
            }

            .btn-home {
                background-color: #082133;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                text-decoration: none;
                margin-top: 20px;
                display: inline-block;
            }

            .btn-home:hover {
                background-color: #0d324d;
                color: white;
                text-decoration: none;
            }

            .technical-details {
                margin-top: 30px;
                text-align: left;
                background: #eee;
                padding: 15px;
                border-radius: 5px;
                font-family: monospace;
                font-size: 0.9rem;
                overflow-x: auto;
                display: none;
                /* Hidden by default, mostly for dev. Could toggle. */
            }
        </style>
    </head>

    <body>

        <div class="error-container">
            <h1>Oops!</h1>
            <h3>Something went wrong.</h3>
            <br>
            <p>We encountered an unexpected error while processing your request. <br> Please check your connection or
                try again later.</p>

            <a href="index.jsp" class="btn-home">Go Back Home</a>

            <% // Optional: Show error details if needed for debugging (safe to hide in prod usually) if(exception
                !=null) { %>
                <!-- 
        <div class="technical-details" style="display:block;">
            <strong>Error:</strong> <%= exception.getMessage() %><br>
        </div>
        -->
                <% } %>
        </div>

    </body>

    </html>