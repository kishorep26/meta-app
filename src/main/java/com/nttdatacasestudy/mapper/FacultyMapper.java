package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.Faculty;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * FacultyMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface FacultyMapper {

  Faculty ViewFacultyUsingMapper(ResultSet rs) throws SQLException;
}
