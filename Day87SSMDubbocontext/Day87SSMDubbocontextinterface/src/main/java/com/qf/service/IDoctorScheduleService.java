package com.qf.service;

import com.qf.pojo.DoctorSchedule;
import com.qf.pojo.DoctorScheduleExample;

import java.util.List;

public interface IDoctorScheduleService  {

    List<DoctorSchedule> getAllDoctorScheduleByExample(DoctorScheduleExample example);
}
