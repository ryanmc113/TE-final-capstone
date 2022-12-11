package com.techelevator.dao;

import com.techelevator.model.VisitLog;

import java.util.List;

public interface VisitLogDao {

    int logCheckIn( VisitLog visit);

    boolean logCheckOut( VisitLog visit);

    List<VisitLog> isVisitCompleted(int accountId);

    List<VisitLog> listAllVisits();

    List<VisitLog> listAllVisitsByAccountId(int accountId);

    VisitLog getVisitLogById(int visitId);

    List<VisitLog> getUsersVisitsByDate(int accountId);



}
