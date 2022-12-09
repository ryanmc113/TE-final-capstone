package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcWorkoutLogDao implements WorkoutLogDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcWorkoutLogDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean logWorkout(WorkoutLog workoutLog) {
        String sql = "INSERT INTO workout_log (visit_id, exercise_id, workout_date, sets, reps, weight, timer) " +
                "VALUES (?, ?, ?, ?, ?, ?);";
        return jdbcTemplate.update(sql, workoutLog.getExerciseId()) == 1;
    }


    @Override
    public List<WorkoutLog> listAllWorkoutLogs() {
        List<WorkoutLog> workoutLog = new ArrayList<>();

        String sql = "SELECT * FROM workout_log;";
        SqlRowSet results = null;
        try {
            results = jdbcTemplate.queryForRowSet(sql);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }while (results.next()){
            workoutLog.add(mapRowToWorkoutLog(results));
        }
        return workoutLog;
    }

    @Override
    public WorkoutLog getWorkoutLogById(int workoutId) {

        String sql = "SELECT * FROM workout_log WHERE workout_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, workoutId);

        if (result.next()){
            return mapRowToWorkoutLog(result);
        }
        return null;
    }

    //List workouts by visit (for account page) also employees can use it.


    private WorkoutLog mapRowToWorkoutLog(SqlRowSet rs){
        WorkoutLog newLog = new WorkoutLog();
        newLog.setWorkoutId(rs.getInt("workout_id"));
        newLog.setVisitId(rs.getInt("visit_id"));
        newLog.setExerciseId(rs.getInt("exercise_id"));
        newLog.setWorkoutDate(String.valueOf(rs.getDate("workout_date")));
        newLog.setSets(rs.getInt("sets"));
        newLog.setReps(rs.getInt("reps"));
        newLog.setWeight(rs.getDouble("weight"));
        newLog.setTimer(String.valueOf(rs.getTime("timer")));

        return newLog;
    }
}
