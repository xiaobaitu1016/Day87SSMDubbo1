package com.qf.service;

import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorExample;
import com.qf.pojo.Permission;
import com.qf.pojo.Roles;

import java.util.List;
import java.util.Set;

public interface IDoctorService {
    Doctor login(Doctor doctor);

    List<Doctor> getAllDoctor(DoctorExample example);

    boolean updateDoctorByDid(Doctor doctor);

    boolean addDoctor(Doctor doctor);

    Doctor getAllDoctorByDid(int did);

    List<Roles> getRoleListByDid(int did);

    Set<Permission> getPermissionListByDid(int did);
}
