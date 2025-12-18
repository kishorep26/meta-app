package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.RequestNResponse;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * AdmissionRequestMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface AdmissionRequestMapper {

  RequestNResponse mapRequestResponseRecord(ResultSet rs) throws SQLException;

}
