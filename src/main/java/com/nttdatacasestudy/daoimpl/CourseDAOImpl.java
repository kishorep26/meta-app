package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.CourseDAO;
import com.nttdatacasestudy.dto.Course;
import com.nttdatacasestudy.dto.DisplayCourse;
import com.nttdatacasestudy.mapper.CourseRecordMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * CourseDAOImpl class for CourseDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-11-03
 * @version 1.2
 */

public class CourseDAOImpl implements CourseDAO {

  private static final Logger LOGGER = LoggerFactory.getLogger(CourseDAO.class);

  /**
   * addNewCourse method for adding new course.
   *
   * @author TrainingInstitute
   * @since 2021-10-08
   * @version 1.2
   */

  public boolean addNewCourse(Course course) {
    LOGGER.trace("Executing addNewCourse");
    boolean b = false;

    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("insert into course values(?,?,?)");

      pst.setInt(1, course.getCourseID());
      pst.setString(2, course.getCourseName());
      pst.setInt(3, course.getInstituteID());

      int count = pst.executeUpdate();

      if (count > 0) {
        b = true;
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return b;
  }

  @Override
  public List<DisplayCourse> DisplayCourses() throws SQLException {

    LOGGER.trace("Executing Display Course");
    List<DisplayCourse> lstcourse = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {
      PreparedStatement pst = con.prepareStatement("select * from course c, institute i "
          + "where c.instituteid = i.instituteid ");
      ResultSet rs = pst.executeQuery();
      CourseRecordMapperImpl mapper = new CourseRecordMapperImpl();
      if (rs.next()) {
        LOGGER.info("Displaying All Students");
        do {
          DisplayCourse course = mapper.mapDisplayCourseRecord(rs);
          lstcourse.add(course);
        } while (rs.next());
      } else {
        LOGGER.info("No Records in institution table");
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return lstcourse;

  }

}
