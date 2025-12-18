package com.nttdatacasestudy.dto;

import java.sql.Date;

/**
 * This class contains the feedback dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Feedback {

  private int feedbackID;
  private String userID;
  private int instituteID;
  private String description;
  private Date feedbackDate;

  public Feedback() {
    super();
  }

  public int getFeedbackID() {
    return feedbackID;
  }

  public void setFeedbackID(int feedbackID) {
    this.feedbackID = feedbackID;
  }

  public String getUserID() {
    return userID;
  }

  public void setUserID(String userID) {
    this.userID = userID;
  }

  public int getInstituteID() {
    return instituteID;
  }

  public void setInstituteID(int instituteID) {
    this.instituteID = instituteID;
  }

  public Date getFeedbackDate() {
    return feedbackDate;
  }

  public void setFeedbackDate(Date feedbackDate) {
    this.feedbackDate = feedbackDate;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

}
