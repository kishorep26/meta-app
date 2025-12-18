package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.Institute;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * The interface InstituteRecordMapper is used to throw the SQLException.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 *
 */

public interface InstituteRecordMapper {

  Institute mapInstituteRecord(ResultSet rs) throws SQLException;
}
