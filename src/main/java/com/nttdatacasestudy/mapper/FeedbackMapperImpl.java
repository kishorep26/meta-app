package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.DisplayFeedback;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * FeedbackMapperImpl class implementing FeedbackMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public class FeedbackMapperImpl implements FeedbackMapper {

  @Override
public DisplayFeedback ViewAllFeedbackUsingMapper(ResultSet rs) throws SQLException {
    DisplayFeedback displayfeedback = new DisplayFeedback();
    displayfeedback.setFeedbackID(rs.getInt("feedbackID"));
    displayfeedback.setUserID(rs.getString("userID"));
    displayfeedback.setInstituteID(rs.getInt("instituteID"));
    displayfeedback.setInstituteName(rs.getString("instituteName"));
    displayfeedback.setDescription(rs.getString("description"));
    displayfeedback.setFeedbackDate(rs.getDate("feedbackDate"));
    return displayfeedback;
  }

  @Override
public DisplayFeedback ViewFeedbackUsingMapper(ResultSet rs) throws SQLException {
    DisplayFeedback displayfeedback = new DisplayFeedback();
    displayfeedback.setFeedbackID(rs.getInt("feedbackID"));
    displayfeedback.setInstituteID(rs.getInt("instituteID"));
    displayfeedback.setInstituteName(rs.getString("instituteName"));
    displayfeedback.setDescription(rs.getString("description"));
    displayfeedback.setFeedbackDate(rs.getDate("feedbackDate"));
    return displayfeedback;
  }

}