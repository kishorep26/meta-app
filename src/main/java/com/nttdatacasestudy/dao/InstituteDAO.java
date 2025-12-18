package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.Institute;
import com.nttdatacasestudy.exceptions.DAOException;
import java.util.List;

/**
 * DAO interface for institute is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface InstituteDAO {
  public boolean addNewInstitution(Institute institute) throws DAOException;

  public boolean validateInstituteForLogin(Institute institute) throws DAOException;

  public List<Institute> viewAllInstitutesUsingMapperClass() throws DAOException;

  public boolean deleteInstitute(int instituteID) throws DAOException;

  public boolean updateInstituteRecord(Institute institute) throws DAOException;

  public List<Institute> viewInstituteProfile(int instituteid) throws DAOException;

}
