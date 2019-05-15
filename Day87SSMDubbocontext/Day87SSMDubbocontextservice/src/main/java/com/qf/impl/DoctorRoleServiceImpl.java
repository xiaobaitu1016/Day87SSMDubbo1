package com.qf.impl;

import com.qf.mapper.DoctorRoleMapper;
import com.qf.pojo.DoctorRole;
import com.qf.pojo.DoctorRoleExample;
import com.qf.service.IDoctorRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DoctorRoleServiceImpl implements IDoctorRoleService {

    @Resource
    private DoctorRoleMapper doctorRoleMapper;

    @Override
    public List<DoctorRole> getAllDoctorRoleByExample (DoctorRoleExample example) {

        return doctorRoleMapper.selectByExample(example);
    }
}
