package com.nttdatacasestudy.mapper;

import com.nttdatacasestudy.dto.DisplayFeedback;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * FeedbackMapper interface.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface FeedbackMapper {
  DisplayFeedback ViewAllFeedbackUsingMapper(ResultSet rs) throws SQLException;

  DisplayFeedback ViewFeedbackUsingMapper(ResultSet rs) throws SQLException;

}
