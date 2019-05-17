package com.qf.impl;

import com.qf.mapper.NumberMapper;
import com.qf.pojo.Number;
import com.qf.pojo.NumberExample;
import com.qf.service.INumberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NumberServiceImpl implements INumberService {

    @Resource
    private NumberMapper numberMapper;

    @Override
    public List<Number> getAllNumberByExample (NumberExample example) {
        return numberMapper.selectByExample(example);
    }

    @Override
    public boolean addNumber(Number number) {
        return numberMapper.insert(number) > 0;
    }

    @Override
    public Number getNumberByNuid(int nuid) {
        return numberMapper.selectByPrimaryKey(nuid);
    }

    @Override
    public boolean updateNumberByNuid(Number number) {
        return numberMapper.updateByPrimaryKey(number) > 0;
    }
}
