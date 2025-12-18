package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.AdmissionRequest;
import com.nttdatacasestudy.dto.RequestNResponse;
import com.nttdatacasestudy.exceptions.DAOException;
import java.util.List;

/**
 * DAO interface for admission request is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface AdmissionRequestDAO {

  public boolean addNewAdmissionRequest(AdmissionRequest admissionrequest) 
          throws DAOException;
  
  public boolean updateAdmissionRequestStatus(String userID, boolean status) 
          throws DAOException;
  
  public List<RequestNResponse> mapViewResponseRecord(String userID) 
          throws DAOException;
  
  public List<RequestNResponse> mapViewRequestRecord(int instituteID) 
          throws DAOException;
  
  public boolean displayResponse(String userID) throws DAOException;

}
