package com.techelevator.model;

public class Equipment_usage {

    private int equipmentId;
    private int workoutId;
    private String workout;
    private String workoutDate;
    private int sets;
    private int reps;
    private double weight;

    public int getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(int equipmentId) {
        this.equipmentId = equipmentId;
    }

    public int getWorkoutId() {
        return workoutId;
    }

    public void setWorkout_id(int workoutId) {
        this.workoutId = workoutId;
    }

    public String getWorkout() {
        return workout;
    }

    public void setWorkout(String workout) {
        this.workout = workout;
    }

    public String getWorkoutDate() {
        return workoutDate;
    }

    public void setWorkoutDate(String workoutDate) {
        this.workoutDate = workoutDate;
    }

    public int getSets() {
        return sets;
    }

    public void setSets(int sets) {
        this.sets = sets;
    }

    public int getReps() {
        return reps;
    }

    public void setReps(int reps) {
        this.reps = reps;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
