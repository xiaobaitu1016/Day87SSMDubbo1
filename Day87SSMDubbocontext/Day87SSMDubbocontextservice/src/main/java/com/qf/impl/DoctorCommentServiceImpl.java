package com.qf.impl;

import com.qf.mapper.DoctorCommentMapper;
import com.qf.pojo.DoctorComment;
import com.qf.pojo.DoctorCommentExample;
import com.qf.service.IDoctorCommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DoctorCommentServiceImpl implements IDoctorCommentService {

    @Resource
    private DoctorCommentMapper doctorCommentMapper;

    @Override
    public List<DoctorComment> getAllDoctorCommentByExample (DoctorCommentExample example) {
        return doctorCommentMapper.selectByExample(example);
    }
}
