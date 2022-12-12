package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcVisitLogDao implements VisitLogDao {
    private final DateTimeFormatter formatter;
    JdbcTemplate jdbcTemplate;

    public JdbcVisitLogDao( JdbcTemplate jdbcTemplate) {
        formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd H:m:s");
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public int logCheckIn(VisitLog visit) {
        Integer visitId;
        String sql = "INSERT INTO visit_log (user_id, check_in)  " +
                "VALUES (?, ?) RETURNING visit_id;";
        try {
            visitId = jdbcTemplate.queryForObject(sql, Integer.class, visit.getUserId(), LocalDateTime.parse(visit.getCheckIn(), formatter));
        } catch (NullPointerException e) {
            throw e;
        }
        return visitId;
    }

    @Override
    public boolean logCheckOut(VisitLog visit) {
        String sql = "UPDATE visit_log SET check_out = ? WHERE visit_id = ?;";
        return jdbcTemplate.update(sql, LocalDateTime.parse(visit.getCheckOut(), formatter), visit.getVisitId()) == 1;
    }

//Method needs to map all fields to use mapper method
    //Use twice at beginning to alert user of unfinished workout or just return ?
    @Override
    public List<VisitLog> isVisitCompleted(int accountId) {
        List<VisitLog> visit = new ArrayList<>();
        String sql = "SELECT visit_id from visit_log where time(check_in) = CURRENT_DATE and check_out IS NULL and account_id = ?;";
        try {
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, accountId);
        while(result.next()) {
            visit.add(mapRowToVisitLog(result));
        }
        } catch (NullPointerException e) {
            throw e;
        }
        return visit;
    }



    @Override
    public List<VisitLog> listAllVisits(int id) {
        List<VisitLog> visits = new ArrayList<>();

        String sql = "SELECT * FROM visit_log WHERE user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);

        while (results.next()){
            visits.add(mapRowToVisitLog(results));
        }
        return visits;
    }


    @Override
    public List<VisitLog> listAllVisitsByAccountId(int accountId) {
        List<VisitLog> visitLogs = new ArrayList<>();

        String sql = "SELECT * FROM visit_log WHERE account_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, accountId);
        while (result.next()){
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

    @Override
    public List<VisitLog> getUsersVisitsByDate(int userId){
        List<VisitLog> visitsByDate = new ArrayList<>();

        String sql = "SELECT visit_id, check_in, check_out FROM visit_log WHERE user_id = ? ORDER BY date(check_in) DESC ;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, userId);

        while (result.next()){
            VisitLog visit = new VisitLog();
            visit.setVisitId(result.getInt("visit_id"));
            visit.setCheckIn(String.valueOf(result.getTimestamp("check_in")));
            visit.setCheckOut(String.valueOf(result.getTimestamp("check_out")));

            visitsByDate.add(visit);
        }
        return visitsByDate;
    }



    private VisitLog mapRowToVisitLog(SqlRowSet rowSet){
        VisitLog visit = new VisitLog();
        visit.setVisitId(rowSet.getInt("visit_id"));
        visit.setUserId(rowSet.getInt("user_id"));
        visit.setCheckIn(String.valueOf(rowSet.getTimestamp("check_in")));
        visit.setCheckOut(String.valueOf(rowSet.getTimestamp("check_out")));


        return visit;
    }

}
