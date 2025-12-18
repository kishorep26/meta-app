<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
        <%@ page import="com.nttdatacasestudy.connection.DbDetails" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <title>Environment Check</title>
                <style>
                    body {
                        font-family: monospace;
                        padding: 20px;
                        background: #f5f5f5;
                    }

                    .status {
                        padding: 10px;
                        margin: 10px 0;
                        border-radius: 5px;
                    }

                    .success {
                        background: #d4edda;
                        color: #155724;
                    }

                    .error {
                        background: #f8d7da;
                        color: #721c24;
                    }

                    .info {
                        background: #d1ecf1;
                        color: #0c5460;
                    }

                    pre {
                        background: white;
                        padding: 10px;
                        border: 1px solid #ddd;
                    }
                </style>
            </head>

            <body>
                <h1>Environment & Database Diagnostic</h1>

                <h2>Environment Variables:</h2>
                <div class="status <%= (System.getenv(" DB_URL") !=null) ? "success" : "error" %>">
                    DB_URL (Raw): <%= (System.getenv("DB_URL") !=null) ? "✓ Set" : "✗ NOT SET" %>
                        <% if (System.getenv("DB_URL") !=null) { %>
                            <pre><%= System.getenv("DB_URL").replaceAll(":[^:@]+@", ":****@") %></pre>
                            <% } %>
                </div>

                <div class="status <%= (DbDetails.getJdbcUrl() != null) ? " success" : "error" %>">
                    DB_URL (JDBC): <%= (DbDetails.getJdbcUrl() !=null) ? "✓ Converted" : "✗ CONVERSION FAILED" %>
                        <% if (DbDetails.getJdbcUrl() !=null) { %>
                            <pre><%= DbDetails.getJdbcUrl() %></pre>
                            <% } %>
                </div>

                <div class="status <%= (DbDetails.getUserName() != null) ? " success" : "error" %>">
                    DB_USER: <%= (DbDetails.getUserName() !=null) ? "✓ Set (" + DbDetails.getUserName() + ")"
                        : "✗ NOT SET" %>
                </div>

                <div class="status <%= (DbDetails.getPassword() != null) ? " success" : "error" %>">
                    DB_PASS: <%= (DbDetails.getPassword() !=null) ? "✓ Set (length: " + DbDetails.getPassword().length()
                        + ")" : "✗ NOT SET" %>
                </div>

                <h2>Database Connection Test:</h2>
                <% Connection conn=null; String status="" ; String errorMsg="" ; try {
                    Class.forName(DbDetails.DRIVER_NAME); conn=DriverManager.getConnection(DbDetails.getJdbcUrl(),
                    DbDetails.getUserName(), DbDetails.getPassword()); status="success" ; Statement
                    stmt=conn.createStatement(); ResultSet rs=stmt.executeQuery("SELECT COUNT(*) as count FROM
                    student"); if (rs.next()) { int studentCount=rs.getInt("count");
                    errorMsg="Connected successfully! Found " + studentCount + " students in database." ; } rs.close();
                    stmt.close(); } catch (ClassNotFoundException e) { status="error" ;
                    errorMsg="MySQL Driver not found: " + e.getMessage(); } catch (SQLException e) { status="error" ;
                    errorMsg="Database connection failed: " + e.getMessage(); } finally { if (conn !=null) { try {
                    conn.close(); } catch (SQLException e) { } } } %>

                    <div class="status <%= status %>">
                        <%= status.equals("success") ? "✓" : "✗" %> Database Connection
                            <pre><%= errorMsg %></pre>
                    </div>

                    <h2>System Information:</h2>
                    <div class="status info">
                        Java Version: <%= System.getProperty("java.version") %><br>
                            OS: <%= System.getProperty("os.name") %>
                                <%= System.getProperty("os.version") %><br>
                                    Server: <%= application.getServerInfo() %>
                    </div>

                    <p><a href="index.jsp">← Back to Home</a></p>
            </body>

            </html>