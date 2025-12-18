package com.nttdatacasestudy.dto;

/**
 * This class contains the faculty dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Faculty {

  private int facultyID;
  private String facultyName;
  private int instituteID;

  public Faculty() {
    super();
  }

  public int getFacultyID() {
    return facultyID;
  }

  public void setFacultyID(int facultyID) {
    this.facultyID = facultyID;
  }

  public String getFacultyName() {
    return facultyName;
  }

  public void setFacultyName(String facultyName) {
    this.facultyName = facultyName;
  }

  public int getInstituteID() {
    return instituteID;
  }

  public void setInstituteID(int instituteID) {
    this.instituteID = instituteID;
  }

}
