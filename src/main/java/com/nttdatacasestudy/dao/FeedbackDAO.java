package com.nttdatacasestudy.dao;

import com.nttdatacasestudy.dto.DisplayFeedback;
import com.nttdatacasestudy.dto.Feedback;
import com.nttdatacasestudy.exceptions.DAOException;
import java.util.List;

/**
 * DAO interface for feedback is created.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public interface FeedbackDAO {
  public boolean addNewFeedback(Feedback feedback) throws DAOException;

  public List<DisplayFeedback> ViewAllFeedback() throws DAOException;

  public List<DisplayFeedback> ViewFeedback(int instituteID) throws DAOException;

}
