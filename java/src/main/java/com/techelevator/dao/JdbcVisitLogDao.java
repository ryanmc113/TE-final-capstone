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
    public boolean logVisit(VisitLog visit) {

        String sql = "INSERT INTO visit_log (account_id,check_in,check_out) " +
                "VALUES (?,?,?);";
        return jdbcTemplate.update(sql, visit.getAccountId(), visit.getCheckIn(), visit.getCheckOut()) == 1;
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
