package com.nttdatacasestudy.exceptions;

/**
 * This class contains the DAOException details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

@SuppressWarnings("serial")
public class DAOException extends Exception {

  public DAOException() {
    super();
  }

  public DAOException(String arg0) {
    super(arg0);
  }

  public DAOException(Throwable arg0) {
    super(arg0);
  }

}
