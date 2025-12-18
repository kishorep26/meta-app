package com.nttdatacasestudy.daoimpl;

import com.nttdatacasestudy.connection.DbConnection;
import com.nttdatacasestudy.dao.FacultyDAO;
import com.nttdatacasestudy.dto.Faculty;
import com.nttdatacasestudy.exceptions.DAOException;
import com.nttdatacasestudy.mapper.FacultyMapperImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * FacultyDAOImpl class for FacultyDAO interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */
public class FacultyDAOImpl implements FacultyDAO {

  private static final Logger LOGGER = LoggerFactory.getLogger(FacultyDAO.class);

  @Override
  public boolean addNewFaculty(Faculty faculty) throws DAOException {
    LOGGER.trace("Executing addNewFaculty");
    boolean b = false;

    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con.prepareStatement("insert into faculty values(?,?,?)");

      pst.setInt(1, faculty.getFacultyID());
      pst.setString(2, faculty.getFacultyName());
      pst.setInt(3, faculty.getInstituteID());

      int count = pst.executeUpdate();

      if (count > 0) {
        LOGGER.info("New faculty Added successfully");
        b = true;
      } else {

        LOGGER.warn("Adding faculty Failed");
      }
    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return b;
  }

  @Override
  public List<Faculty> ViewFaculty(int instituteID) throws DAOException {
    List<Faculty> lstfaculty = new ArrayList<>();
    try (Connection con = DbConnection.getDatabaseConnection()) {

      PreparedStatement pst = con
          .prepareStatement("select * from faculty f, institute i where "
              + "f.instituteID = i.instituteID and i.instituteID = ?");

      pst.setInt(1, instituteID);
      ResultSet rs = pst.executeQuery();
      FacultyMapperImpl mapper = new FacultyMapperImpl();
      if (rs.next()) {
        LOGGER.info("Displaying All Faculty");
        do {
          Faculty displayfaculty = mapper.ViewFacultyUsingMapper(rs);
          lstfaculty.add(displayfaculty);
        } while (rs.next());
      } else {
        LOGGER.info("No Records found for Faculty");
        System.out.println();
        System.out.println("No Records found");
        System.out.println();
      }

    } catch (SQLException e) {
      LOGGER.error(e.getMessage());
      System.out.println("ERROR! Check Logs");
    }

    return lstfaculty;
  }
}
