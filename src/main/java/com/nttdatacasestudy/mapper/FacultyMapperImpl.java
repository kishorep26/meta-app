package com.nttdatacasestudy.mapper;


import com.nttdatacasestudy.dto.Faculty;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *FacultyMapperImpl class implementing FacultyMapper interface..
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class FacultyMapperImpl implements FacultyMapper {

  @Override
  public Faculty ViewFacultyUsingMapper(ResultSet rs) throws SQLException {
    Faculty faculty = new Faculty();
    faculty.setFacultyID(rs.getInt("facultyID"));
    faculty.setInstituteID(rs.getInt("instituteID"));
    faculty.setFacultyName(rs.getString("facultyName"));
    return faculty;
  }
}
