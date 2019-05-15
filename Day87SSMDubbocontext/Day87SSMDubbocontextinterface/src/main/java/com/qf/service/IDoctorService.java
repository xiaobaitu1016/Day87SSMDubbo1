package com.qf.service;

import com.qf.pojo.Doctor;
import com.qf.pojo.DoctorExample;

import java.util.List;

public interface IDoctorService {
    Doctor login(Doctor doctor);

    List<Doctor> getAllDoctor(DoctorExample example);

}
