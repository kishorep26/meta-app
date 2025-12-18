package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.Student;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * The interface StudentRecordMapper is used to throw the SQLException.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 *
 */
public interface StudentRecordMapper {

  Student mapStudentRecord(ResultSet rs) throws SQLException;
  
  Student mapStudentInsRecord(ResultSet rs) throws SQLException;
    
}
