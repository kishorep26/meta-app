package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.Institute;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * This class is used to implement InstituteRecordMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 *
 */

public class InstituteRecordMapperImpl implements InstituteRecordMapper {

  @Override
    public Institute mapInstituteRecord(ResultSet rs) throws SQLException {
    Institute institute = new Institute();
    institute.setInstituteID(rs.getInt("instituteID"));
    institute.setInstituteName(rs.getString("instituteName"));
    institute.setAffiliationDate(rs.getString("affiliationDate"));
    institute.setAddress(rs.getString("address"));
    institute.setSeats(rs.getInt("seats"));

    return institute;


  }
    
}
