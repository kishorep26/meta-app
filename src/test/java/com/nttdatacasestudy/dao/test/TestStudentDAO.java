package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.StudentDAO;
import com.nttdatacasestudy.daoimpl.StudentDAOImpl;
import com.nttdatacasestudy.dto.Student;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the student dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestStudentDAO {

  StudentDAO studentdao = new StudentDAOImpl();

  @Test
    public void testAddNewStudent_Pass() throws DAOException {

    Student student = new Student();

    student.setUserID("kish123");
    student.setEmailID("kish@gmail.com");
    student.setAddress("TR Nagar");
    student.setNumber("+919845611328");
    student.setQualification("B.E. Graduate");
    student.setStudentName("Kishore");
    student.setStudentPassword("kish");

    assertTrue(studentdao.addNewStudent(student));

  }

  @Test
    public void testValidateStudentLogin() throws DAOException {
    Student student = new Student();
    student.setUserID("pras123");
    student.setStudentPassword("pras123");

    assertTrue(studentdao.validateStudentForLogin(student));
  }

  @Test
    public void testUpdateStudent() throws DAOException {
    Student student = new Student();
    student.setUserID("stu1");
    student.setStudentPassword("prash123");

    if (studentdao.validateStudentForLogin(student)) {
      student.setEmailID("pras@gmail.com");
      student.setStudentName("prashwitha");
      student.setQualification("BE");
      student.setStudentPassword("123prash");
      student.setNumber("8989895555");
      student.setAddress("Jayanagar");

      assertTrue(studentdao.updateStudentRecord(student));
    }

  }
}
