package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.RequestNResponse;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * AdmissionRequestMapperImpl class implementing AdmissionRequestMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class AdmissionRequestMapperImpl implements AdmissionRequestMapper {

  @Override
public RequestNResponse mapRequestResponseRecord(ResultSet rs) throws SQLException {

    RequestNResponse reqres = new RequestNResponse();
    reqres.setRequestID(rs.getInt("requestID"));
    reqres.setUserID(rs.getString("userID"));
    reqres.setStudentName(rs.getString("studentName"));
    reqres.setInstituteID(rs.getInt("instituteID"));
    reqres.setInstituteName(rs.getString("instituteName"));
    reqres.setCourseID(rs.getInt("courseID"));
    reqres.setCourseName(rs.getString("courseName"));
    reqres.setSeats(rs.getInt("seats"));
    reqres.setStatus(rs.getBoolean("status"));
    reqres.setRequestDate(rs.getString("requestDate"));
    return reqres;
  }

}
