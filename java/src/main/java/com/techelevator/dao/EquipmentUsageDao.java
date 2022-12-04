package com.techelevator.dao;

import com.techelevator.model.EquipmentUsage;

import java.util.List;

public interface EquipmentUsageDao {

    List<EquipmentUsage> listAllEquipment();

    EquipmentUsage getEquipmentById(int EquipmentId);







}
