package com.techelevator.dao;

import com.techelevator.model.ClassSchedule;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;


@Component
public class JdbcClassScheduleDao implements ClassScheduleDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcClassScheduleDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public List<ClassSchedule> listAllClasses() {
        List<ClassSchedule> classes = new ArrayList<>();

        String sql = "SELECT class_id, class_name, class_instructor, class_time, class_day FROM class_schedule;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        if(results.next()){
            ClassSchedule newClass = new ClassSchedule();
            newClass.setClassId(results.getInt("class_id"));
            newClass.setClassName(results.getString("class_name"));
            newClass.setClassInstructor(results.getString("class_instructor"));
            newClass.setClassDay(results.getString("class_day"));
            Time classTimeColumn = results.getTime("class_time");
            if (classTimeColumn != null){
                LocalTime classTimes = classTimeColumn.toLocalTime();
                newClass.setClassTime(classTimes);
            }
        }
        return classes;
    }
}
