package com.techelevator.dao;

import com.techelevator.model.VisitLog;
import com.techelevator.model.WorkoutLog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcWorkoutLogDao implements WorkoutLogDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcWorkoutLogDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override//*************************************************
    public boolean logWorkout(WorkoutLog workoutLog) {
        String exerciseId = "SELECT exercise_id from exercise where name ILIKE %bicep%;" ;
        String sql = "INSERT INTO workout_log ((SELECT visit_id from visit_log where check_out IS NULL), (SELECT exercise_id from exercise where name ILIKE %%), name, sets, reps, weight, minutes) " +
                "VALUES (?, ?, ?, ?, ?);";
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

    //List workouts by visit (for account page) also employees can use it.
    @Override
    public WorkoutLog getWorkoutLogById(int workoutId) {

        String sql = "SELECT * FROM workout_log WHERE workout_id = ?;";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, workoutId);

        if (result.next()){
            return mapRowToWorkoutLog(result);
        }
        return null;
    }

    //Listing workouts by accountId to show all workouts

    @Override
    public List<WorkoutLog> listAllWorkoutLogsByAccountId(int accountId) {
        List <WorkoutLog> workout = new ArrayList<>();
        String sql = "SELECT * FROM workout_log JOIN exercise USING (exercise_id)" +
                "JOIN visit_log USING (visit_id) WHERE account_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, accountId);

        if (results.next()){
             workout.add(mapRowToWorkoutLog(results));
        }
        return workout;
    }




    private WorkoutLog mapRowToWorkoutLog(SqlRowSet rs){
        WorkoutLog newLog = new WorkoutLog();
        newLog.setWorkoutId(rs.getInt("workout_id"));
        newLog.setVisitId(rs.getInt("visit_id"));
        newLog.setExerciseId(rs.getInt("exercise_id"));
        newLog.setSets(rs.getInt("sets"));
        newLog.setReps(rs.getInt("reps"));
        newLog.setWeight(rs.getDouble("weight"));
        newLog.setMinutes(rs.getInt("minutes"));

        return newLog;
    }
}
