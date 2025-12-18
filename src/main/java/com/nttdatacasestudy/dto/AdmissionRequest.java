package com.nttdatacasestudy.dto;

import java.sql.Date;

/**
 * This class contains the admission request dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class AdmissionRequest {

  private int requestID;
  private String userID;
  private int courseID;
  private Date requestDate;
  private boolean status;

  public AdmissionRequest() {
    super();
  }

  public int getRequestID() {
    return requestID;
  }

  public void setRequestID(int requestID) {
    this.requestID = requestID;
  }

  public String getUserID() {
    return userID;
  }

  public void setUserID(String userID) {
    this.userID = userID;
  }

  public int getCourseID() {
    return courseID;
  }

  public void setCourseID(int courseID) {
    this.courseID = courseID;
  }

  public Date getRequestDate() {
    return requestDate;
  }

  public void setRequestDate(Date requestDate) {
    this.requestDate = requestDate;
  }

  public boolean isStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

 

}
