package com.techelevator.dao;

import com.techelevator.model.WorkoutLog;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JdbcWorkoutLogDao {














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
