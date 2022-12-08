package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

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
        String sql = "INSERT INTO visit_log (account_id,check_in,check_out) " +
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
        return jdbcTemplate.update(sql, visit.getCheckOut(), visit.getWorkoutId()) == 1;
    }



    @Override
    public List<VisitLog> listAllVisits() {

        return null;
    }

    @Override
    public List<VisitLog> listAllVisitsByAccountId(int accountId) {
        return null;
    }

    @Override
    public VisitLog getVisitLogById(int visitId) {
        return null;
    }
}
