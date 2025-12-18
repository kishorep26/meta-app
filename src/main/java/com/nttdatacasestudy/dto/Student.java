package com.nttdatacasestudy.dto;

/**
 * This class contains the student dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Student {

  private String userID;
  private String emailID;
  private String studentName;
  private String qualification;
  private String studentPassword;
  private String number;
  private String address;
  private int instituteid;

  public Student() {
    super();
  }
  
  /**
   * Method Student is created with passing two parameters.
   *
   * @param userID - String type parameter passed.
   * @param studentPassword - String type parameter passed.
   */

  public Student(String userID, String studentPassword) {
    super();
    this.userID = userID;
    this.studentPassword = studentPassword;
  }

  public String getUserID() {
    return userID;
  }

  public void setUserID(String userID) {
    this.userID = userID;
  }

  public String getEmailID() {
    return emailID;
  }

  public void setEmailID(String emailID) {
    this.emailID = emailID;
  }

  public String getStudentName() {
    return studentName;
  }

  public void setStudentName(String studentName) {
    this.studentName = studentName;
  }

  public String getQualification() {
    return qualification;
  }

  public void setQualification(String qualification) {
    this.qualification = qualification;
  }

  public String getStudentPassword() {
    return studentPassword;
  }

  public void setStudentPassword(String studentPassword) {
    this.studentPassword = studentPassword;
  }

  public String getNumber() {
    return number;
  }

  public void setNumber(String number) {
    this.number = number;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public int getInstituteid() {
    return instituteid;
  }

  public void setInstituteid(int instituteid) {
    this.instituteid = instituteid;
  }
 
}
