package com.qf.impl;

import com.qf.mapper.IllnessMapper;
import com.qf.pojo.Illness;
import com.qf.pojo.IllnessExample;
import com.qf.service.IIllnessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IllnessServiceImpl implements IIllnessService {

    @Resource
    private IllnessMapper illnessMapper;


    @Override
    public List<Illness> getAllIllnessByExample (IllnessExample example) {
        return illnessMapper.selectByExample(example);
    }

    @Override
    public List<Illness> getAllIllness (IllnessExample example) {
        return illnessMapper.selectByExample(example);
    }

    @Override
    public boolean addIllness(Illness illness) {
        return illnessMapper.insert(illness) > 0;
    }
}
