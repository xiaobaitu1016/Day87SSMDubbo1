package com.qf.service;

import com.qf.pojo.DoctorIllness;
import com.qf.pojo.DoctorIllnessExample;

import java.util.List;

public interface IDoctorIllnessService {

    List<DoctorIllness> getAllDoctorIllnessByExample(DoctorIllnessExample example);

    boolean deleteDoctorIllnessByExample(DoctorIllnessExample example);

    boolean addDoctorIllness(DoctorIllness doctorIllness);
}
