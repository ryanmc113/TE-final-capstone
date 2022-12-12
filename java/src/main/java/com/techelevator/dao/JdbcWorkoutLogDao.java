package com.techelevator.dao;

import com.techelevator.model.ClassSchedule;
import com.techelevator.model.WorkoutLog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.security.Principal;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcWorkoutLogDao implements WorkoutLogDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcWorkoutLogDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override//
    public boolean logWorkout(WorkoutLog workoutLog) {

        String sql = "INSERT INTO workout_log (visit_id, name, sets, reps, weight, minutes) " +
                "VALUES (?, ?, ?, ?, ?, ?);";
        return jdbcTemplate.update(sql, workoutLog.getVisitId(), workoutLog.getName(), workoutLog.getSets(), workoutLog.getReps(), workoutLog.getWeight(), workoutLog.getMinutes()) == 1;
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

        while (result.next()){
            return mapRowToWorkoutLog(result);
        }
        return null;
    }

    @Override
    public List<WorkoutLog> listWorkoutsForAVisit(int visitId){
        List<WorkoutLog> exercisesByVisit = new ArrayList<>();
        String sql = "SELECT * FROM workout_log WHERE visit_id = ?;";

        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, visitId);

        while (result.next()) {
            WorkoutLog newLog = new WorkoutLog();
            newLog.setVisitId(result.getInt("visit_id"));
            newLog.setName(result.getString("name"));
            newLog.setSets(result.getInt("sets"));
            newLog.setReps(result.getInt("reps"));
            newLog.setWeight(result.getDouble("weight"));
            newLog.setMinutes(result.getInt("minutes"));

            exercisesByVisit.add(newLog);
        }
        return exercisesByVisit;
        }


    //Listing workouts by userId to show all workouts

    @Override
    public List<WorkoutLog> listAllWorkoutLogsByUserId(int userId) {
        List <WorkoutLog> workout = new ArrayList<>();
        String sql = "SELECT * FROM workout_log JOIN exercise USING (exercise_id)" +
                "JOIN visit_log USING (visit_id) WHERE user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);

        while (results.next()){
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
