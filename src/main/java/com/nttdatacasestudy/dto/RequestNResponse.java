package com.nttdatacasestudy.dto;

/**
 * This class contains the request and response details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class RequestNResponse {

  private int requestID;
  private String userID;
  private String studentName;
  private int instituteID;
  private String instituteName;
  private int courseID;
  private String courseName;
  private int seats;
  private boolean status;
  private String requestDate;

  public RequestNResponse() {
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

  public String getStudentName() {
    return studentName;
  }

  public void setStudentName(String studentName) {
    this.studentName = studentName;
  }

  public int getInstituteID() {
    return instituteID;
  }

  public void setInstituteID(int instituteID) {
    this.instituteID = instituteID;
  }

  public String getInstituteName() {
    return instituteName;
  }

  public void setInstituteName(String instituteName) {
    this.instituteName = instituteName;
  }

  public int getCourseID() {
    return courseID;
  }

  public void setCourseID(int courseID) {
    this.courseID = courseID;
  }

  public String getCourseName() {
    return courseName;
  }

  public void setCourseName(String courseName) {
    this.courseName = courseName;
  }

  public int getSeats() {
    return seats;
  }

  public void setSeats(int seats) {
    this.seats = seats;
  }

  public boolean isStatus() {
    return status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }

  public String getRequestDate() {
    return requestDate;
  }

  public void setRequestDate(String requestDate) {
    this.requestDate = requestDate;
  }

}
