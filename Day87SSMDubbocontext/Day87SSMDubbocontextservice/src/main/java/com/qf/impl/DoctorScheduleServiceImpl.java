package com.qf.impl;

import com.qf.mapper.DoctorScheduleMapper;
import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorSchedule;
import com.qf.pojo.DoctorScheduleExample;
import com.qf.service.IDoctorScheduleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DoctorScheduleServiceImpl implements IDoctorScheduleService {

    @Resource
    private DoctorScheduleMapper doctorScheduleMapper;

    @Override
    public List<DoctorSchedule> getAllDoctorScheduleByExample (DoctorScheduleExample example) {
        
        return doctorScheduleMapper.selectByExample(example);
    }

    @Override
    public Doctor getDoctorByDsidWeekdayWhichclass(int dsid, int weekday, int whichclass) {
        DoctorScheduleExample doctorScheduleExample = new DoctorScheduleExample();
        DoctorScheduleExample.Criteria criteria = doctorScheduleExample.createCriteria();
        criteria.andDsidEqualTo(dsid);
        criteria.andWeekdayEqualTo(weekday);
        criteria.andWhichclassEqualTo(whichclass);
        List<DoctorSchedule> doctorSchedules = doctorScheduleMapper.selectByExample(doctorScheduleExample);

        if (doctorSchedules == null || doctorSchedules.isEmpty()){
            return null;
        }else {
            return doctorSchedules.get(0).getDoctor();
        }
    }

    @Override
    public boolean addDoctorSchedule(DoctorSchedule doctorSchedule) {
        return doctorScheduleMapper.insert(doctorSchedule) > 0;
    }

    @Override
    public boolean deleteDoctorScheduleByDsid(int dsid) {
        DoctorScheduleExample doctorScheduleExample = new DoctorScheduleExample();
        DoctorScheduleExample.Criteria criteria = doctorScheduleExample.createCriteria();
        criteria.andDsidEqualTo(dsid);

        return doctorScheduleMapper.deleteByExample(doctorScheduleExample)>0;
    }
}
