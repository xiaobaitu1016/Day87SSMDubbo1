package com.qf.impl;

import com.qf.mapper.DoctorIllnessMapper;
import com.qf.pojo.DoctorIllness;
import com.qf.pojo.DoctorIllnessExample;
import com.qf.service.IDoctorIllnessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DoctorIllnessServiceImpl implements IDoctorIllnessService {

    @Resource
    private DoctorIllnessMapper doctorIllnessMapper;

    @Override
    public List<DoctorIllness> getAllDoctorIllnessByExample (DoctorIllnessExample example) {
        return doctorIllnessMapper.selectByExample(example);
    }

    @Override
    public boolean deleteDoctorIllnessByExample(DoctorIllnessExample example) {
        return doctorIllnessMapper.deleteByExample(example) > 0;
    }

    @Override
    public boolean addDoctorIllness(DoctorIllness doctorIllness) {
        return doctorIllnessMapper.insert(doctorIllness) > 0;
    }
}
