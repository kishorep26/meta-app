package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.AdminDAO;
import com.nttdatacasestudy.dto.Admin;
import com.nttdatacasestudy.exceptions.DAOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * AdminDAOImpl class for AdminDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class AdminDAOImpl implements AdminDAO {
  private static final Logger LOGGER = LoggerFactory.getLogger(AdminDAOImpl.class);

  @Override
  public boolean validateAdminForLogin(Admin admin) throws DAOException {
    LOGGER.trace("Executing validateAdminForLogin");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = null;
      if (admin.getAdminID() != null) {
        LOGGER.info("Admin Credentials Verified!");
        pst = con.prepareStatement("select * from admin " + "where adminID = ? " + "and "
            + "adminPassword = ?");
        pst.setString(1, admin.getAdminID());
        pst.setString(2, admin.getAdminPassword());
      } else {
        LOGGER.info("Invalid Admin credentials!");
      }

      ResultSet rs = pst.executeQuery();

      if (rs.next()) {
        b = true;
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

}
