package com.qf.service;

import com.qf.pojo.DoctorComment;
import com.qf.pojo.DoctorCommentExample;

import java.util.List;

public interface IDoctorCommentService {

    List<DoctorComment> getAllDoctorCommentByExample(DoctorCommentExample example);
}
