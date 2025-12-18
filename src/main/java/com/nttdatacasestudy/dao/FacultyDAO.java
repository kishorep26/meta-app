package com.nttdatacasestudy.dao;

import java.util.List;

import com.nttdatacasestudy.dto.Faculty;
import com.nttdatacasestudy.exceptions.DAOException;

/**
 * DAO interface for faculty is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface FacultyDAO {

  public boolean addNewFaculty(Faculty faculty) throws DAOException;

  List<Faculty> ViewFaculty(int instituteID) throws DAOException;
}
