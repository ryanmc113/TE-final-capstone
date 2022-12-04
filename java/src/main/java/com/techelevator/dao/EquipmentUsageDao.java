package com.techelevator.dao;

import com.techelevator.model.Equipment_usage;
import com.techelevator.model.User;

import java.util.List;

public interface EquipmentUsageDao {

    List<Equipment_usage> listAllEquipment();

    Equipment_usage getEquipmentById(int EquipmentId);





}
