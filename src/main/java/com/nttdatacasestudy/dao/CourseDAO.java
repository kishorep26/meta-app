package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.Course;
import com.nttdatacasestudy.dto.DisplayCourse;
import com.nttdatacasestudy.exceptions.DAOException;
import java.sql.SQLException;
import java.util.List;

/**
 * DAO interface for course is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface CourseDAO {
  public boolean addNewCourse(Course course) throws DAOException;

  public List<DisplayCourse> DisplayCourses() throws SQLException;

}
