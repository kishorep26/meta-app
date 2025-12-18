package com.nttdatacasestudy.dao.test;

import static org.junit.Assert.assertTrue;

import com.nttdatacasestudy.dao.FeedbackDAO;
import com.nttdatacasestudy.daoimpl.FeedbackDAOImpl;
import com.nttdatacasestudy.dto.Feedback;
import com.nttdatacasestudy.exceptions.DAOException;
import org.junit.Test;

/**
 * This class contains the feedback dao testing details.
 *
 * @author TrainingInstitute
 * @since 2021-10-08
 * @version 1.2
 */

public class TestFeedbackDAO {

  FeedbackDAO feedbackdao = new FeedbackDAOImpl();

  @Test
    public void testAddNewFeedback_Pass() throws DAOException {

    Feedback feedback = new Feedback();
    java.util.Date date = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
    feedback.setUserID("kish123");
    feedback.setInstituteID(20);
    feedback.setDescription("Very good college");
    feedback.setFeedbackDate(sqlDate);

    assertTrue(feedbackdao.addNewFeedback(feedback));

  }
}
