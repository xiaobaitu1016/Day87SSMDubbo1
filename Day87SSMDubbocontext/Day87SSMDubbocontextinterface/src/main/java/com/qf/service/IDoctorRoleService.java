package com.qf.service;

import com.qf.pojo.DoctorRole;
import com.qf.pojo.DoctorRoleExample;

import java.util.List;

public interface IDoctorRoleService {

    List<DoctorRole> getAllDoctorRoleByExample(DoctorRoleExample example);
}
