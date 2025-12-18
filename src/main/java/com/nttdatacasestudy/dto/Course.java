package com.nttdatacasestudy.dto;

/**
 * This class contains the course dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Course {

  private int courseID;
  private String courseName;
  private int instituteID;

  public Course() {
    super();
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

  public int getInstituteID() {
    return instituteID;
  }

  public void setInstituteID(int instituteID) {
    this.instituteID = instituteID;
  }

}
