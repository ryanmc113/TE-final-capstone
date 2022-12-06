package com.techelevator.dao;

import com.techelevator.model.WorkoutLog;

import java.util.List;

public interface EquipmentUsageDao {

    List<WorkoutLog> listAllEquipment();

    WorkoutLog getEquipmentById(int EquipmentId);

    int logEquipmentUsage(WorkoutLog input);







}
