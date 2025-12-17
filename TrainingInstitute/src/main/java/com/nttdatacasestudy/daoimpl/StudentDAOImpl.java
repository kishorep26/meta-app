package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.StudentDAO;
import com.nttdatacasestudy.dto.Student;
import com.nttdatacasestudy.exceptions.DAOException;
import com.nttdatacasestudy.mapper.StudentRecordMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * StudentDAOImpl class for StudentDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public class StudentDAOImpl implements StudentDAO {

  private static final Logger LOGGER = LoggerFactory.getLogger(StudentDAO.class);

  @Override
  public boolean addNewStudent(Student student) throws DAOException {
    LOGGER.trace("Executing addNewStudent");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?,?,?,?)");

      pst.setString(1, student.getUserID());
      pst.setString(2, student.getEmailID());
      pst.setString(3, student.getStudentName());
      pst.setString(4, student.getQualification());
      pst.setString(5, student.getStudentPassword());
      pst.setString(6, student.getNumber());
      pst.setString(7, student.getAddress());

      int count = pst.executeUpdate();
      if (count > 0) {
        b = true;
        LOGGER.info("Student data inserted");
      }
    } catch (SQLIntegrityConstraintViolationException e) {
      LOGGER.error("Presense Of Duplicate Entry!");
      System.out.println(e.getMessage());
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return b;
  }

  @Override
  public boolean validateStudentForLogin(Student student) throws DAOException {
    LOGGER.trace("Executing validateStudentForLogin");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = null;
      if (student.getUserID() != null) {
        pst = con.prepareStatement("select * from Student " + "where userID = ? and"
            + " studentPassword = ?");
        pst.setString(1, student.getUserID());
        pst.setString(2, student.getStudentPassword());
      }
      ResultSet rs = pst.executeQuery();
      if (rs.next()) { // record was found
        LOGGER.info("Student Credentials verified!");
        b = true;
      } else {
        LOGGER.info("Invalid Student credentials!");
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return b;
  }

  @Override
  public List<Student> viewAllStudentsUsingMapperClass() throws DAOException {
    LOGGER.trace("Executing viewAllStudentsUsingMapperClass");
    List<Student> lstStudent = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from student");
      ResultSet rs = pst.executeQuery();
      StudentRecordMapperImpl mapper = new StudentRecordMapperImpl();
      if (rs.isBeforeFirst()) {
        LOGGER.info("Displaying All Students");
        while (rs.next()) {
          Student student = mapper.mapStudentRecord(rs);
          lstStudent.add(student);
        }
      } else {
        LOGGER.info("No Records in institution table");
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return lstStudent;
  }

  @Override
  public boolean updateStudentRecord(Student student) throws DAOException {
    LOGGER.trace("Executing updateStudentRecord");
    boolean b = false;
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("update student set emailID = ?,"
          + " studentName = ?, qualification = ?,"
          + " studentPassword = ?, number = ?, address = ? where userID = ?");

      pst.setString(1, student.getEmailID());
      pst.setString(2, student.getStudentName());
      pst.setString(3, student.getQualification());
      pst.setString(4, student.getStudentPassword());
      pst.setString(5, student.getNumber());
      pst.setString(6, student.getAddress());
      pst.setString(7, student.getUserID());
      int count = pst.executeUpdate();

      if (count > 0) {
        LOGGER.info("Student Details updated!");
        b = true;
      } else {
        LOGGER.warn("Student Details Not Updated");
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return b;
  }

  @Override
  public List<Student> viewStudentProfile(int instituteid) throws DAOException {
    List<Student> lstStudent = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from course c, institute i, "
          + "admissionrequest a, student s where c.instituteid = i.instituteid and "
          + "c.courseid = a.courseid and a.userid = s.userid and a.courseid= ?");
      pst.setInt(1, instituteid);
      ResultSet rs = pst.executeQuery();
      StudentRecordMapperImpl mapper = new StudentRecordMapperImpl();
      if (rs.isBeforeFirst()) {
        LOGGER.info("Displaying Student Details");
        while (rs.next()) {
          Student student = mapper.mapStudentInsRecord(rs);
          lstStudent.add(student);
        }
      } else {
        LOGGER.info("No Records in student table");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return lstStudent;
  }

  @Override
  public List<Student> viewStudentProfile(String userid) throws DAOException {
    List<Student> lstStudent = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from student where userid = ?");
      pst.setString(1, userid);
      ResultSet rs = pst.executeQuery();
      StudentRecordMapperImpl mapper = new StudentRecordMapperImpl();
      if (rs.isBeforeFirst()) {
        LOGGER.info("Displaying Student Details");
        while (rs.next()) {
          Student student = mapper.mapStudentRecord(rs);
          lstStudent.add(student);
        }
      } else {
        LOGGER.info("No Records in student table");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }
    return lstStudent;
  }

}
