package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.FeedbackDAO;
import com.nttdatacasestudy.dto.DisplayFeedback;
import com.nttdatacasestudy.dto.Feedback;
import com.nttdatacasestudy.exceptions.DAOException;
import com.nttdatacasestudy.mapper.FeedbackMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * FacultyDAOImpl class for FacultyDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class FeedbackDAOImpl implements FeedbackDAO {

  private static final Logger LOGGER = LoggerFactory.getLogger(FeedbackDAO.class);

  @Override
  public boolean addNewFeedback(Feedback feedback) throws DAOException {
    LOGGER.trace("Executing addNewFeedback");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("insert into feedback values(?,?,?,?,?)");
      pst.setInt(1, feedback.getFeedbackID());
      pst.setString(2, feedback.getUserID());
      pst.setInt(3, feedback.getInstituteID());
      pst.setString(4, feedback.getDescription());
      pst.setDate(5, java.sql.Date.valueOf(java.time.LocalDate.now()));

      int count = pst.executeUpdate();

      if (count > 0) {

        LOGGER.info("Feedback is submitted");
        b = true;
      } else {

        LOGGER.warn("Feedback isn't submitted");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return b;
  }

  @Override
  public List<DisplayFeedback> ViewAllFeedback() throws DAOException {

    List<DisplayFeedback> lstfeedback = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con
          .prepareStatement("select * from feedback f, institute i, student s where "
              + "f.userID = s.userID and f.instituteID = i.instituteID");

      ResultSet rs = pst.executeQuery();
      FeedbackMapperImpl mapper = new FeedbackMapperImpl();

      if (rs.next()) {
        LOGGER.info("Displaying All Requests");
        do {
          DisplayFeedback displayfeedback = mapper.ViewAllFeedbackUsingMapper(rs);
          lstfeedback.add(displayfeedback);
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

    return lstfeedback;
  }

  @Override
  public List<DisplayFeedback> ViewFeedback(int instituteID) throws DAOException {
    List<DisplayFeedback> lstfeedback = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con
          .prepareStatement("select * from feedback f, institute i where "
              + "f.instituteID = i.instituteID and i.instituteID = ?");

      pst.setInt(1, instituteID);
      ResultSet rs = pst.executeQuery();
      FeedbackMapperImpl mapper = new FeedbackMapperImpl();
      if (rs.next()) {
        LOGGER.info("Displaying All Requests");
        do {
          DisplayFeedback displayfeedback = mapper.ViewFeedbackUsingMapper(rs);
          lstfeedback.add(displayfeedback);
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

    return lstfeedback;
  }
}
