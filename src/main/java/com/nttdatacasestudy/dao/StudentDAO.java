package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.Student;
import com.nttdatacasestudy.exceptions.DAOException;
import java.util.List;

/**
 * DAO interface for student is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface StudentDAO {
  public boolean addNewStudent(Student student) throws DAOException;

  public boolean validateStudentForLogin(Student student) throws DAOException;

  public List<Student> viewAllStudentsUsingMapperClass() throws DAOException;

  public boolean updateStudentRecord(Student student) throws DAOException;

  public List<Student> viewStudentProfile(String userid) throws DAOException;
  
  public List<Student> viewStudentProfile(int instituteid) throws DAOException;

}
