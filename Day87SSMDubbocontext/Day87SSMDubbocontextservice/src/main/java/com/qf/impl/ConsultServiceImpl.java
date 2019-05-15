package com.qf.impl;

import com.qf.mapper.ConsultMapper;
import com.qf.pojo.Consult;
import com.qf.pojo.ConsultExample;
import com.qf.service.IConsultService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ConsultServiceImpl implements IConsultService {

    @Resource
    private ConsultMapper consultMapper;

    @Override
    public List<Consult> getAllConsultByExample (ConsultExample example) {

        return consultMapper.selectByExample(example);
    }
}
