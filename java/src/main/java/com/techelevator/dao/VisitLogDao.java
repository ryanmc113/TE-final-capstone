package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;

import java.util.List;

public interface VisitLogDao {

    List<VisitLog> listAllVisits();

    List<VisitLog> listAllVisitsByAccountId(int accountId);

    VisitLog getVisitLogById(int visitId);

}