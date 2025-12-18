# Training Institute Management System

A Java web application for managing training institutes, students, courses, faculty, and admissions.

## 🚀 Live Demo

**URL:** https://meta-app-0kr2.onrender.com

### Test Credentials

**Admin Login:**
- Username: `admin`
- Password: `admin123`

**Student Login:**
- Username: `kish123`
- Password: `kishore123`

**Institute Login:**
- ID: `1`
- Password: `ait123`

## 🛠️ Technology Stack

- **Backend:** Java 11, JSP, Servlets
- **Database:** TiDB Cloud (MySQL compatible)
- **Build Tool:** Maven
- **Server:** Apache Tomcat 9.0
- **Deployment:** Render (Docker)
- **Logging:** SLF4J with Logback

## 📁 Project Structure

```
TrainingInstitute/
├── src/
│   ├── main/
│   │   ├── java/com/nttdatacasestudy/
│   │   │   ├── connection/      # Database connection
│   │   │   ├── dao/             # Data Access Object interfaces
│   │   │   ├── daoimpl/         # DAO implementations
│   │   │   ├── dto/             # Data Transfer Objects
│   │   │   ├── exceptions/      # Custom exceptions
│   │   │   └── mapper/          # ResultSet mappers
│   │   ├── resources/           # Configuration files
│   │   └── webapp/              # JSP pages, CSS, JS
│   └── test/                    # Test files
├── Dockerfile                   # Docker configuration
├── pom.xml                      # Maven dependencies
└── database.sql                 # Complete database schema & data
```

## 🗄️ Database Setup

### Option 1: TiDB Cloud (Recommended for Production)

1. Create a TiDB Cloud account at https://tidbcloud.com
2. Create a new cluster
3. Run the SQL script:
   ```bash
   mysql -h <your-host> -P 4000 -u <username> -p -D test < database.sql
   ```

### Option 2: Local MySQL

1. Install MySQL 8.0+
2. Create database:
   ```sql
   CREATE DATABASE training_institution;
   USE training_institution;
   ```
3. Import data:
   ```bash
   mysql -u root -p training_institution < database.sql
   ```

## 🚢 Deployment

### Deploy to Render

1. Fork this repository
2. Create a new Web Service on Render
3. Connect your GitHub repository
4. Set environment variables:
   ```
   DB_URL=mysql://user:pass@host:port/database
   DB_USER=your_username
   DB_PASS=your_password
   ```
5. Deploy!

### Local Development

1. **Prerequisites:**
   - Java 11
   - Maven 3.6+
   - MySQL 8.0+

2. **Setup:**
   ```bash
   # Clone the repository
   git clone <your-repo-url>
   cd TrainingInstitute
   
   # Set environment variables
   export DB_URL="jdbc:mysql://localhost:3306/training_institution"
   export DB_USER="root"
   export DB_PASS="your_password"
   
   # Build the project
   mvn clean package
   
   # Deploy to Tomcat
   cp target/TrainingInstitute.war $TOMCAT_HOME/webapps/
   ```

3. **Access:** http://localhost:8080/TrainingInstitute

## ✨ Features

### Admin Module
- ✅ Login/Logout
- ✅ View all institutes
- ✅ View all students
- ✅ Manage courses
- ✅ Manage faculty
- ✅ View admission requests
- ✅ View feedback

### Student Module
- ✅ Registration
- ✅ Login/Logout
- ✅ View profile
- ✅ Browse courses
- ✅ Submit admission requests
- ✅ Submit feedback
- ✅ View admission status

### Institute Module
- ✅ Login/Logout
- ✅ View profile
- ✅ Manage courses
- ✅ Manage faculty
- ✅ View admission requests
- ✅ Approve/Reject admissions
- ✅ View feedback

## 📊 Database Schema

The application uses 7 tables:
- `admin` - Admin credentials
- `institute` - Training institutes
- `student` - Student information
- `course` - Courses offered
- `faculty` - Faculty members
- `admissionrequest` - Student admission requests
- `feedback` - Student feedback

See `database.sql` for complete schema.

## 🔧 Configuration

### Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `DB_URL` | Database connection URL | `mysql://user:pass@host:port/db` |
| `DB_USER` | Database username | `root` |
| `DB_PASS` | Database password | `password123` |

### Application Properties

Located in `src/main/resources/logback.xml`:
- Log level configuration
- Log file location
- Console output settings

## 🐛 Troubleshooting

### Common Issues

**Issue:** HTTP 500 error on login
- **Solution:** Check if environment variables are set correctly in Render dashboard

**Issue:** "Table doesn't exist" error
- **Solution:** Run `database.sql` in your TiDB/MySQL database

**Issue:** Connection timeout
- **Solution:** Verify database host is accessible and SSL is enabled for TiDB

### Diagnostic Page

Visit `/diagnostic.jsp` to check:
- Environment variables status
- Database connection
- System information

## 📝 License

This project is for educational purposes.

## 👥 Contributors

- Kishore Prashanth

## 🙏 Acknowledgments

Built as part of NTT Data case study project.
