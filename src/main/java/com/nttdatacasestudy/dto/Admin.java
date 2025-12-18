package com.nttdatacasestudy.dto;

/**
 * This class contains the admin dto details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class Admin {

  private String adminID;

  private String adminPassword;
  /**
  * Method Admin is created with passing two parameters.
  *
  * @param adminID - String type parameter passed.
  * @param adminPassword - String type parameter passed.
  */
  
  public Admin(String adminID, String adminPassword) {
    super();
    this.adminID = adminID;
    this.adminPassword = adminPassword;
  }


  public Admin() {
    super();
  }

  public String getAdminID() {
    return adminID;
  }

  public void setAdminID(String adminID) {
    this.adminID = adminID;
  }

  public String getAdminPassword() {
    return adminPassword;
  }

  public void setAdminPassword(String adminPassword) {
    this.adminPassword = adminPassword;
  }

}
