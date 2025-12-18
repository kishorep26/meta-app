package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.Student;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * This class is used to implement StudentRecordMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 *
 */

public class StudentRecordMapperImpl implements StudentRecordMapper {

  @Override
    public Student mapStudentRecord(ResultSet rs) throws SQLException {
    Student student = new Student();
    student.setUserID(rs.getString("userID"));
    student.setEmailID(rs.getString("emailID"));
    student.setStudentName(rs.getString("studentName"));
    student.setQualification(rs.getString("qualification"));
    student.setNumber(rs.getString("number"));
    student.setAddress(rs.getString("address"));
    return student;
  }

  @Override
    public Student mapStudentInsRecord(ResultSet rs) throws SQLException {
    Student student = new Student();
    student.setUserID(rs.getString("userID"));
    student.setEmailID(rs.getString("emailID"));
    student.setStudentName(rs.getString("studentName"));
    student.setQualification(rs.getString("qualification"));
    student.setNumber(rs.getString("number"));
    student.setAddress(rs.getString("address"));
    student.setInstituteid(rs.getInt("instituteid"));
    return student;
  }
    
}
