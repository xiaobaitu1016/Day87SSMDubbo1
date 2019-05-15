package com.qf.impl;

import com.qf.mapper.DoctorMapper;
import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorExample;
import com.qf.service.IDoctorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class DoctorServiceImpl implements IDoctorService {

    @Resource
    private DoctorMapper doctorMapper;

    @Override
    public Doctor login(Doctor doctor) {
        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDidEqualTo(doctor.getDid());
        criteria.andPasswordEqualTo(doctor.getPassword());

        List<Doctor> doctors = doctorMapper.selectByExample(doctorExample);
        Doctor doctor1 = doctors.get(0);

        return doctor1;
    }

    @Override
    public List<Doctor> getAllDoctor(DoctorExample example) {
        return doctorMapper.selectByExample(example);
    }
}
