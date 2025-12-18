package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.FacultyDAO;
import com.nttdatacasestudy.daoimpl.FacultyDAOImpl;
import com.nttdatacasestudy.dto.Faculty;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the faculty dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestFacultyDAO {

  FacultyDAO facultydao = new FacultyDAOImpl();

  @Test
    public void testAddNewFaculty_Pass() throws DAOException {

    Faculty faculty = new Faculty();

    faculty.setFacultyName("Shubha Y");
    faculty.setInstituteID(11);

    assertTrue(facultydao.addNewFaculty(faculty));
  }
}
