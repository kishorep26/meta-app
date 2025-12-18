# Render Deployment Setup Guide

## Prerequisites
1. TiDB Cloud database (already created)
2. Render account
3. GitHub repository connected to Render

## Step-by-Step Deployment

### 1. Configure Environment Variables in Render

**CRITICAL**: Go to your Render dashboard and add these environment variables:

```
DB_URL=mysql://4HkjARMfHQLz3AB.root:OjAyeaICf8MLDanS@gateway01.us-east-1.prod.aws.tidbcloud.com:4000/test
DB_USER=4HkjARMfHQLz3AB.root
DB_PASS=OjAyeaICf8MLDanS
```

**How to add them:**
1. Go to https://dashboard.render.com
2. Select your `meta-app` service
3. Click on "Environment" in the left sidebar
4. Click "Add Environment Variable"
5. Add each variable (DB_URL, DB_USER, DB_PASS)
6. Click "Save Changes" - this will trigger a redeploy

### 2. Verify Database Connection

After deployment completes, visit:
```
https://meta-app-0kr2.onrender.com/diagnostic.jsp
```

This page will show:
- ✓ Environment variables status
- ✓ Database connection status
- ✓ Any error messages

### 3. Test Login

Once diagnostic shows success, test these logins:

**Admin Login:**
- URL: https://meta-app-0kr2.onrender.com/AdminLogin.jsp
- Username: `admin`
- Password: `admin123`

**Student Login:**
- URL: https://meta-app-0kr2.onrender.com/StudentLogin.jsp
- Username: `kish123`
- Password: `kishore123`

**Institute Login:**
- URL: https://meta-app-0kr2.onrender.com/InstituteLogin.jsp
- ID: `1`
- Password: `AIT123`

## Troubleshooting

### If you see HTTP 500 error:

1. Check Render logs:
   - Go to your service in Render dashboard
   - Click "Logs" tab
   - Look for error messages

2. Common issues:
   - **Environment variables not set**: Add them in Render dashboard
   - **Database connection failed**: Verify TiDB credentials are correct
   - **Build failed**: Check logs for compilation errors

### If diagnostic.jsp shows errors:

- **"DB_URL: ✗ NOT SET"**: Environment variables not configured in Render
- **"Database connection failed"**: Check TiDB credentials or network access
- **"MySQL Driver not found"**: Build issue (should not happen with current setup)

## Current Configuration

- **Build**: Maven 3.8.4 with Java 11
- **Runtime**: Tomcat 9.0 with Java 11
- **Database**: TiDB Cloud (MySQL compatible)
- **Port**: 8080 (Render handles HTTPS automatically)

## Files Modified for Deployment

1. `Dockerfile` - Containerizes the application
2. `DbConnection.java` - Enhanced with logging and validation
3. `web.xml` - Error page configuration
4. `Error.jsp` - User-friendly error page
5. `diagnostic.jsp` - Environment diagnostic tool
