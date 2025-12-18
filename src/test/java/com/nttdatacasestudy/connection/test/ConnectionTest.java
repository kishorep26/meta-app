package com.nttdatacasestudy.connection.test;


import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import com.nttdatacasestudy.connection.DbConnection;
import java.sql.SQLException;
import org.junit.Test;

/**
 * This class contains the Connection test details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class ConnectionTest {

  DbConnection db = new DbConnection();

  @Test
  public void conPass() throws SQLException {
    assertNotNull(DbConnection.getDatabaseConnection());
  }

  @Test
  public void conFail() throws SQLException {
    assertNull(DbConnection.getDatabaseConnection());
  }
}
