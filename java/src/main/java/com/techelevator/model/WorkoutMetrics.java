package com.techelevator.model;

public class WorkoutMetrics {

    private EquipmentUsage loggedExercise;
    private Workout loggedWorkout;

    public EquipmentUsage getLoggedExercise() {
        return loggedExercise;
    }

    public void setLoggedExercise(EquipmentUsage loggedExercise) {
        this.loggedExercise = loggedExercise;
    }

    public Workout getLoggedWorkout() {
        return loggedWorkout;
    }

    public void setLoggedWorkout(Workout loggedWorkout) {
        this.loggedWorkout = loggedWorkout;
    }
}
