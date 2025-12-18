package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.nttdatacasestudy.dao.AdminDAO;
import com.nttdatacasestudy.daoimpl.AdminDAOImpl;
import com.nttdatacasestudy.dto.Admin;
import com.nttdatacasestudy.exceptions.DAOException;



/**
 * This class contains the admin dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestAdminDAO {


  @Test
  public void testValidateAdminLogin_Positive() throws DAOException {
    AdminDAO admindao = new AdminDAOImpl();
    Admin admin = new Admin();
    admin.setAdminID("admin");
    admin.setAdminPassword("admin123");

    assertTrue(admindao.validateAdminForLogin(admin));
  }

  @Test
  public void testValidateAdminLogin_Negative() throws DAOException {
    AdminDAO admindao = new AdminDAOImpl();
    Admin admin = new Admin();
    admin.setAdminID("admin");
    admin.setAdminPassword("admin1234");

    assertFalse(admindao.validateAdminForLogin(admin));
  }

}
