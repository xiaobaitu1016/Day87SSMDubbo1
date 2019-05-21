package com.qf.impl;

import com.qf.mapper.DoctorMapper;
import com.qf.pojo.*;
import com.qf.service.IDoctorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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

    @Override
    public boolean updateDoctorByDid(Doctor doctor) {
        return doctorMapper.updateByPrimaryKey(doctor) > 0;
    }

    @Override
    public boolean addDoctor(Doctor doctor) {
        return doctorMapper.insert(doctor) > 0;
    }

    @Override
    public Doctor getAllDoctorByDid(int did) {
        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDidEqualTo(did);

        List<Doctor> doctors = doctorMapper.selectByExample(doctorExample);

        return doctors.get(0);
    }

    @Override
    public List<Roles> getRoleListByDid(int did) {
        DoctorExample doctorExample = new DoctorExample();
        DoctorExample.Criteria criteria = doctorExample.createCriteria();

        criteria.andDidEqualTo(did);

        List<Doctor> doctors = doctorMapper.selectByExample(doctorExample);

        List<Roles> roles = new ArrayList<>();
        for (DocRoleKey d:doctors.get(0).getDocRoleKeyList()) {
            roles.add(d.getRoles());
        }

        return roles;
    }

    @Override
    public Set<Permission> getPermissionListByDid(int did) {
        return null;
    }
}
