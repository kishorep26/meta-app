package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.Admin;
import com.nttdatacasestudy.exceptions.DAOException;

/**
 * DAO interface for admin is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface AdminDAO {
  public boolean validateAdminForLogin(Admin admin) throws DAOException;
}
