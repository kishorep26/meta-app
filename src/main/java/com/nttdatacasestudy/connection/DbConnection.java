package com.nttdatacasestudy.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Class DbConnection is created to database connection.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class DbConnection {

  /**
   * Method is created inside the class.
   *
   * @return - return values from a static method.
   */
  public static Connection getDatabaseConnection() {
    Connection con = null;
    try {
      // Get values at runtime
      String dbUrl = DbDetails.getJdbcUrl();
      String dbUser = DbDetails.getUserName();
      String dbPass = DbDetails.getPassword();

      if (dbUrl == null || dbUrl.isEmpty()) {
        throw new RuntimeException("DB_URL environment variable is not set!");
      }
      if (dbUser == null || dbUser.isEmpty()) {
        throw new RuntimeException("DB_USER environment variable is not set!");
      }
      if (dbPass == null || dbPass.isEmpty()) {
        throw new RuntimeException("DB_PASS environment variable is not set!");
      }

      System.out.println("Attempting to connect to database...");
      System.out.println("DB_URL: " + dbUrl.replaceAll(":[^:@]+@", ":****@")); // Hide password in logs
      System.out.println("DB_USER: " + dbUser);

      Class.forName(DbDetails.DRIVER_NAME);
      con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

      System.out.println("Database connection successful!");

    } catch (ClassNotFoundException ex) {
      System.err.println("MySQL Driver not found: " + ex.getMessage());
      ex.printStackTrace();
      throw new RuntimeException("Failed to load MySQL driver: " + ex.getMessage(), ex);
    } catch (SQLException ex) {
      System.err.println("Database connection failed: " + ex.getMessage());
      ex.printStackTrace();
      throw new RuntimeException("Failed to connect to database: " + ex.getMessage(), ex);
    } catch (RuntimeException ex) {
      System.err.println("Configuration error: " + ex.getMessage());
      ex.printStackTrace();
      throw ex;
    }
    return con;
  }
}
