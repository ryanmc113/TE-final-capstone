package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcVisitLogDao implements VisitLogDao {

    JdbcTemplate jdbcTemplate;

    public JdbcVisitLogDao( JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public int logCheckIn(VisitLog visit) {
        Integer visitId;
        String sql = "INSERT INTO visit_log (account_id,check_in) " +
                "VALUES (?,?) RETURNING visit_id;";
        try {
            visitId = jdbcTemplate.queryForObject(sql, Integer.class, visit.getAccountId(), visit.getCheckIn());
        } catch (NullPointerException e) {
            throw e;
        }
        return visitId;
    }

    @Override
    public boolean logCheckOut(VisitLog visit) {
        String sql = "UPDATE visit_log SET check_out = ? WHERE visit_id = ?;";
        return jdbcTemplate.update(sql, visit.getCheckOut(), visit.getVisitId()) == 1;
    }


    //Use twice at beginning to alert user of unfinished workout or just return ?
    @Override
    boolean isVisitComplete(int accountId) {
        String sql = "SELECT visit_id from visit_log where check_out is null and account_id = ?;";

    }



    @Override
    public List<VisitLog> listAllVisits() {
        List<VisitLog> visits = new ArrayList<>();

        String sql = "SELECT * FROM visit_log;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        if (results.next()){
            visits.add(mapRowToVisitLog(results));
        }
        return visits;
    }


    @Override
    public List<VisitLog> listAllVisitsByAccountId(int accountId) {
        List<VisitLog> visitLogs = new ArrayList<>();

        String sql = "SELECT * FROM visit_log WHERE account_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, accountId);
        if (result.next()){
            visitLogs.add(mapRowToVisitLog(result));
        }
        return visitLogs;
    }


    @Override
    public VisitLog getVisitLogById(int visitId) {
        String sql = "SELECT * FROM visit_log WHERE visit_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, visitId);

        if (result.next()){
            return mapRowToVisitLog(result);
        }
        return null;
    }



    private VisitLog mapRowToVisitLog(SqlRowSet rowSet){
        VisitLog visit = new VisitLog();
        visit.setVisitId(rowSet.getInt("visit_id"));
        visit.setAccountId(rowSet.getInt("account_id"));
        visit.setCheckIn(String.valueOf(rowSet.getTimestamp("check_in")));
        visit.setCheckOut(String.valueOf(rowSet.getTimestamp("check)out")));

        return visit;
    }

}
