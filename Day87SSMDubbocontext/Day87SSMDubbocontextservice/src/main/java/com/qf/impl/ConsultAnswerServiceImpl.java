package com.qf.impl;

import com.qf.mapper.ConsultAnswerMapper;
import com.qf.pojo.ConsultAnswer;
import com.qf.pojo.ConsultAnswerExample;
import com.qf.service.IConsultAnswerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConsultAnswerServiceImpl implements IConsultAnswerService {

    @Resource
    private ConsultAnswerMapper consultAnswerMapper;

    @Override
    public List<ConsultAnswer> getAllConsultAnswerByExample (ConsultAnswerExample example) {
        return consultAnswerMapper.selectByExample(example);
    }
}
