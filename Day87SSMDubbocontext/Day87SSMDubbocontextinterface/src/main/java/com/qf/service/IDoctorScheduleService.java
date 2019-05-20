package com.qf.service;

import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorSchedule;
import com.qf.pojo.DoctorScheduleExample;

import java.util.List;

public interface IDoctorScheduleService  {

    List<DoctorSchedule> getAllDoctorScheduleByExample(DoctorScheduleExample example);

    Doctor getDoctorByDsidWeekdayWhichclass(int dsid,int weekday,int whichclass);

    boolean addDoctorSchedule(DoctorSchedule doctorSchedule);

    boolean deleteDoctorScheduleByDsid(int dsid);
}
