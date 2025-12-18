package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.CourseDAO;
import com.nttdatacasestudy.daoimpl.CourseDAOImpl;
import com.nttdatacasestudy.dto.Course;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the course dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestCourseDAO {

  CourseDAO coursedao = new CourseDAOImpl();

  @Test
    public void testAddNewCode_Pass() throws DAOException {

    Course course = new Course();

    course.setCourseID(2);
    course.setCourseName("Electronics");
    course.setInstituteID(20);

    assertTrue(coursedao.addNewCourse(course));

  }

}
