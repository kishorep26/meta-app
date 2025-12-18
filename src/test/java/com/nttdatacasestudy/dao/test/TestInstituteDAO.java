package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.InstituteDAO;
import com.nttdatacasestudy.daoimpl.InstituteDAOImpl;
import com.nttdatacasestudy.dto.Institute;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the institute dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestInstituteDAO {

  InstituteDAO institutedao = new InstituteDAOImpl();

  @Test
    public void testAddNewInstitute_Pass() throws DAOException {
    Institute institute = new Institute();

    institute.setInstituteID(40);
    institute.setInstituteName("AIT");
    institute.setInstitutePassword("AIT123");
    institute.setAffiliationDate("1990-10-20");
    institute.setAddress("ait,bangalore");
    institute.setSeats(510);

    assertTrue(institutedao.addNewInstitution(institute));

  }

  @Test
    public void testValidateInstituteLogin() throws DAOException {
    Institute institute = new Institute();
    institute.setInstituteID(11);
    institute.setInstitutePassword("NHCE1234");

    assertTrue(institutedao.validateInstituteForLogin(institute));
  }
    
  @Test
    public void testDeleteInstitute() throws DAOException {
    assertTrue(institutedao.deleteInstitute(40));
  }
    
  @Test
    public void testUpdateInstitute() throws DAOException {
    Institute institute = new Institute();
    institute.setInstituteID(20);
    institute.setInstitutePassword("KSIT123");
    if (institutedao.validateInstituteForLogin(institute)) {
      institute.setInstituteName("KSIT");
      institute.setInstitutePassword("ksit123");
      institute.setAddress("Vajrahalli");
      institute.setSeats(230);
      assertTrue(institutedao.updateInstituteRecord(institute));
    }
  }

}
