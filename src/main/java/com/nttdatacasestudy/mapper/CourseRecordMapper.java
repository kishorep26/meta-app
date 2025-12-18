package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.DisplayCourse;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * CourseRecordMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */


public interface CourseRecordMapper {
  DisplayCourse mapDisplayCourseRecord(ResultSet rs) throws SQLException;
}
