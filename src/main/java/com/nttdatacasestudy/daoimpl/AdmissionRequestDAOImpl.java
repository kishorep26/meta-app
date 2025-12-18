package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.AdmissionRequestDAO;
import com.nttdatacasestudy.dto.AdmissionRequest;
import com.nttdatacasestudy.dto.RequestNResponse;
import com.nttdatacasestudy.exceptions.DAOException;
import com.nttdatacasestudy.mapper.AdmissionRequestMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * AdmissionRequestDAOImpl class for AdmissionRequestDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class AdmissionRequestDAOImpl implements AdmissionRequestDAO {
  private static final Logger LOGGER = LoggerFactory.getLogger(AdmissionRequestDAO.class);

  @Override
  public boolean addNewAdmissionRequest(AdmissionRequest admissionrequest) throws DAOException {
    LOGGER.trace("executing addNewAdmissionRequest");
    boolean b = false;

    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement(
          "insert into admissionrequest" + "(userID,courseID,requestDate)"
              + " values(?,?,?)");
      pst.setString(1, admissionrequest.getUserID());
      pst.setInt(2, admissionrequest.getCourseID());
      pst.setDate(3, java.sql.Date.valueOf(java.time.LocalDate.now()));

      int count = pst.executeUpdate();

      if (count > 0) {
        LOGGER.info("Student's admission request submitted");
        b = true;
      } else {
        LOGGER.warn("Student's admission request not submitted");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return b;
  }

  @Override
  public boolean updateAdmissionRequestStatus(String userID, boolean status) throws DAOException {
    LOGGER.trace("Executing updateAdmissionRequestStatus");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("update admissionrequest set status = ? "
          + " " + "where userID = ?");

      pst.setBoolean(1, status);
      pst.setString(2, userID);

      int count = pst.executeUpdate();

      if (count > 0) {
        b = true;
        LOGGER.info("Student's admission request status changed!");
      } else {
        LOGGER.info("Student's admission request status not changed!");
        System.out.println();
        System.out.println("Admission request wasn't changed");
        System.out.println();
      }

    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;

  }

  @Override
  public List<RequestNResponse> mapViewResponseRecord(String userID) throws DAOException {

    List<RequestNResponse> lstreqres = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("select * from "
          + "admissionrequest a, course c, student s, institute i "
          + "where a.courseID = c.courseID and c.instituteID = i.instituteID "
          + "and a.userID = s.userID " + "and a.userID = ?;");

      pst.setString(1, userID);

      ResultSet rs = pst.executeQuery();

      AdmissionRequestMapperImpl mapper = new AdmissionRequestMapperImpl();

      if (rs.next()) {
        LOGGER.info("Displaying All Requests");
        do {
          RequestNResponse displayresponse = mapper.mapRequestResponseRecord(rs);
          lstreqres.add(displayresponse);
        } while (rs.next());
      } else {
        LOGGER.info("No Records found for Admission request");
        System.out.println();
        System.out.println("No Records found");
        System.out.println();
      }

    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return lstreqres;
  }

  @Override
  public List<RequestNResponse> mapViewRequestRecord(int instituteID) throws DAOException {
    List<RequestNResponse> lstreqres = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con
          .prepareStatement("select * from admissionrequest a, course c, student s, institute i "
              + "where a.courseID = c.courseID and c.instituteID = i.instituteID "
              + "and a.userID = s.userID and i.instituteID = ?");

      pst.setInt(1, instituteID);

      ResultSet rs = pst.executeQuery();
      AdmissionRequestMapperImpl mapper = new AdmissionRequestMapperImpl();

      if (rs.next()) {
        LOGGER.info("Displaying All Requests");
        do {
          RequestNResponse reqres = mapper.mapRequestResponseRecord(rs);
          lstreqres.add(reqres);
        } while (rs.next());
      } else {
        LOGGER.info("No Records found for Admission request");
        System.out.println();
        System.out.println("No Records found");
        System.out.println();
      }

    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return lstreqres;
  }

  @Override
  public boolean displayResponse(String userID) throws DAOException {

    LocalDate currentDate = LocalDate.now();
    String abc = " ";
    long noOfDaysBetween = 0;
    boolean b = false;
    boolean status = false;
    LOGGER.info("Executing displayResponse");
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con
          .prepareStatement("select status,requestdate from admissionrequest where userid = ? ");
      pst.setString(1, userID);
      ResultSet rs = pst.executeQuery();
      if (rs.next()) {
        do {
          abc = rs.getDate("requestdate").toString();
          status = rs.getBoolean("status");
        } while (rs.next());
      }
      LocalDate dateAfter = LocalDate.parse(abc);
      noOfDaysBetween = ChronoUnit.DAYS.between(dateAfter, currentDate);
      if (noOfDaysBetween >= 4 && status) {
        b = true;
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

}
