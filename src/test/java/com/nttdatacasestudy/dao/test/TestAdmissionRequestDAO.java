package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.AdmissionRequestDAO;
import com.nttdatacasestudy.daoimpl.AdmissionRequestDAOImpl;
import com.nttdatacasestudy.dto.AdmissionRequest;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the admission request dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestAdmissionRequestDAO {

  AdmissionRequestDAO admissionrequestdao = new AdmissionRequestDAOImpl();

  @Test
  public void testAddNewAdmissionRequest_Pass() throws DAOException {

    AdmissionRequest admissionrequest = new AdmissionRequest();
    java.util.Date date = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());

    admissionrequest.setUserID("kish123");
    admissionrequest.setCourseID(4);
    admissionrequest.setRequestDate(sqlDate);

    assertTrue(admissionrequestdao.addNewAdmissionRequest(admissionrequest));
  }
  
  @Test
    public void testUpdateAdmissionRequestStatus() throws DAOException {
    assertTrue(admissionrequestdao.updateAdmissionRequestStatus("kish123", true));
  }
}

    