package com.nttdatacasestudy.dto;

/**
 * This class contains the display course details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class DisplayCourse {

  private int userID;
  private int courseID;
  private int instituteID;
  private String courseName;
  private String instituteName;

  public DisplayCourse() {
    super();
  }

  public int getUserID() {
    return userID;
  }

  public void setUserID(int userID) {
    this.userID = userID;
  }

  public int getCourseID() {
    return courseID;
  }

  public void setCourseID(int courseID) {
    this.courseID = courseID;
  }

  public int getInstituteID() {
    return instituteID;
  }

  public void setInstituteID(int instituteID) {
    this.instituteID = instituteID;
  }

  public String getCourseName() {
    return courseName;
  }

  public void setCourseName(String courseName) {
    this.courseName = courseName;
  }

  public String getInstituteName() {
    return instituteName;
  }

  public void setInstituteName(String instituteName) {
    this.instituteName = instituteName;
  }

}
