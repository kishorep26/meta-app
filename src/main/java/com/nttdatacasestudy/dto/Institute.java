package com.nttdatacasestudy.dto;

/**
 * This class contains the institute dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Institute {

  private int instituteID;
  private String instituteName;
  private String institutePassword;
  private String affiliationDate;
  private String address;
  private int seats;

  public Institute() {
    super();
  }

  /**
   * Method Institute is created with passing two parameters.
   *
   * @param instituteID - Integer type parameter passed.
   * @param institutePassword - String type parameter passed.
   */
  
  public Institute(int instituteID, String institutePassword) {
    super();
    this.instituteID = instituteID;
    this.institutePassword = institutePassword;
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

  public String getInstitutePassword() {
    return institutePassword;
  }

  public void setInstitutePassword(String institutePassword) {
    this.institutePassword = institutePassword;
  }

  public String getAffiliationDate() {
    return affiliationDate;
  }

  public void setAffiliationDate(String affiliationDate) {
    this.affiliationDate = affiliationDate;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public int getSeats() {
    return seats;
  }

  public void setSeats(int seats) {
    this.seats = seats;
  }

}
