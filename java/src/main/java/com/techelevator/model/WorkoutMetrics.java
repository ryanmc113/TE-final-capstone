package com.techelevator.model;

public class WorkoutMetrics {

    private WorkoutLog loggedExercise;
    private VisitLog loggedWorkout;

    public WorkoutLog getLoggedExercise() {
        return loggedExercise;
    }

    public void setLoggedExercise(WorkoutLog loggedExercise) {
        this.loggedExercise = loggedExercise;
    }

    public VisitLog getLoggedWorkout() {
        return loggedWorkout;
    }

    public void setLoggedWorkout(VisitLog loggedWorkout) {
        this.loggedWorkout = loggedWorkout;
    }
}
