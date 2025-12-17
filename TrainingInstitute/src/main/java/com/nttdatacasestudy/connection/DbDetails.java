package com.nttdatacasestudy.connection;

/**
 * Interface DbDetails is created get the database details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public interface DbDetails {
    String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    String USER_NAME = System.getenv("DB_USER");
    String PASSWORD = System.getenv("DB_PASS");
    String CONSTR = System.getenv("DB_URL");
}
