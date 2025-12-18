package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.InstituteDAO;
import com.nttdatacasestudy.dto.Institute;
import com.nttdatacasestudy.exceptions.DAOException;
import com.nttdatacasestudy.mapper.InstituteRecordMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * InstituteDAOImpl class for InstituteDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class InstituteDAOImpl implements InstituteDAO {
  private static final Logger LOGGER = LoggerFactory.getLogger(InstituteDAO.class);

  @Override
  public boolean addNewInstitution(Institute institute) throws DAOException {
    LOGGER.trace("Executing addNewInstitution");
    boolean b = false;

    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("insert into institute values(?,?,?,?,?,?)");

      pst.setInt(1, institute.getInstituteID());
      pst.setString(2, institute.getInstituteName());
      pst.setString(3, institute.getInstitutePassword());
      pst.setString(4, institute.getAffiliationDate());
      pst.setString(5, institute.getAddress());
      pst.setInt(6, institute.getSeats());

      int count = pst.executeUpdate();

      if (count > 0) {

        LOGGER.info("New Institution added successfully");
        b = true;
      }
    } catch (SQLIntegrityConstraintViolationException e) {
      LOGGER.error("Presense Of Duplicate Entry!");
      System.out.println("Duplicate Entry. Institute Already Exsists!");
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

  @Override
  public boolean validateInstituteForLogin(Institute institute) throws DAOException {
    LOGGER.trace("Executing validateInstituteForLogin");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = null;
      if (institute.getInstituteID() != -1) {
        pst = con.prepareStatement(
            "select * from institute " + "where instituteID = ? and " + "institutePassword = ?");
        pst.setInt(1, institute.getInstituteID());
        pst.setString(2, institute.getInstitutePassword());
      }
      ResultSet rs = pst.executeQuery();
      if (rs.next()) { // record was found

        LOGGER.warn("Institute Credentials Verified!");
        b = true;
      } else {

        LOGGER.warn("Invalid Institute Credentials");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

  @Override
  public List<Institute> viewAllInstitutesUsingMapperClass() throws DAOException {
    LOGGER.trace("Executing viewAllInstitutesUsingMapperClass");
    List<Institute> lstInstitute = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from institute");
      ResultSet rs = pst.executeQuery();
      InstituteRecordMapperImpl mapper = new InstituteRecordMapperImpl();
      if (rs.next()) {
        LOGGER.info("Displaying Institute Details");
        do {
          Institute institute = mapper.mapInstituteRecord(rs);
          lstInstitute.add(institute);
        } while (rs.next());
      } else {
        LOGGER.info("No Records in institution table");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return lstInstitute;
  }

  @Override
  public boolean deleteInstitute(int instituteID) throws DAOException {
    LOGGER.trace("Excuting deleteInstitute");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("delete from institute where instituteID = ?");

      pst.setInt(1, instituteID);

      int count = pst.executeUpdate();

      if (count > 0) {
        LOGGER.info("Institute is deleted");
        b = true;
      } else {
        LOGGER.warn("Institute not deleted or not found");
      }

    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

  @Override
  public boolean updateInstituteRecord(Institute institute) throws DAOException {
    LOGGER.trace("Executing updateInstituteRecord");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("update institute set instituteName = ?,"
          + " institutePassword = ?, " + " " + "address = ?, seats = ? where instituteID = ?");

      pst.setString(1, institute.getInstituteName());
      pst.setString(2, institute.getInstitutePassword());
      pst.setString(3, institute.getAddress());
      pst.setInt(4, institute.getSeats());
      pst.setInt(5, institute.getInstituteID());
      int count = pst.executeUpdate();

      if (count > 0) {
        LOGGER.info("Institution Details Updated");
        b = true;
      } else {
        LOGGER.warn("Failed to Update Institution");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

  @Override
  public List<Institute> viewInstituteProfile(int instituteid) throws DAOException {
    List<Institute> lstInstitute = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from institute where instituteid = ?");
      pst.setInt(1, instituteid);
      ResultSet rs = pst.executeQuery();
      InstituteRecordMapperImpl mapper = new InstituteRecordMapperImpl();
      if (rs.next()) {
        LOGGER.info("Displaying Institute Details");
        do {
          Institute institute = mapper.mapInstituteRecord(rs);
          lstInstitute.add(institute);
        } while (rs.next());
      } else {
        LOGGER.info("No Records in institution table");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return lstInstitute;
  }

}
