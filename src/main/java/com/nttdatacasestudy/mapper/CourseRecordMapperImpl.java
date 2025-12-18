package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.DisplayCourse;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * CourseRecordMapperImpl class implementing CourseRecordMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public class CourseRecordMapperImpl implements CourseRecordMapper {

  @Override
public DisplayCourse mapDisplayCourseRecord(ResultSet rs) throws SQLException {
    DisplayCourse displaycourse = new DisplayCourse();
    displaycourse.setCourseID(rs.getInt("courseID"));
    displaycourse.setCourseName(rs.getString("courseName"));
    displaycourse.setInstituteID(rs.getInt("instituteID"));
    displaycourse.setInstituteName(rs.getString("instituteName"));
    return displaycourse;
  }
}
