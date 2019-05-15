package com.qf.impl;

import com.qf.mapper.DoctorScheduleMapper;
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
}
