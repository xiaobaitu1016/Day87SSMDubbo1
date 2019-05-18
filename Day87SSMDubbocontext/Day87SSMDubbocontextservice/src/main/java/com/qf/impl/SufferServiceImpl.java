package com.qf.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.mapper.SufferMapper;
import com.qf.pojo.Suffer;
import com.qf.pojo.SufferExample;
import com.qf.service.ISufferService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SufferServiceImpl implements ISufferService {

    @Resource
    private SufferMapper sufferMapper;

    @Override
    public List<Suffer> getAllSufferByExample (SufferExample example) {
        return sufferMapper.selectByExample(example);
    }

    @Override
    public List<Suffer> getAllSufferByPageExample(SufferExample example, int curPage, int pageSize) {
        PageHelper.startPage(curPage,pageSize);

        List<Suffer> suffers = sufferMapper.selectByExample(example);

        PageInfo<Suffer> pageInfo = new PageInfo<>(suffers);

        List<Suffer> list = pageInfo.getList();

        return list;
    }

    @Override
    public boolean updateSufferBySuid(Suffer suffer) {
        return sufferMapper.updateByPrimaryKey(suffer) > 0;
    }

    @Override
    public boolean login(Suffer suffer) {
        SufferExample sufferExample = new SufferExample();
        SufferExample.Criteria criteria = sufferExample.createCriteria();

        criteria.andSunameEqualTo(suffer.getSuname());
        criteria.andPasswordEqualTo(suffer.getPassword());

        List<Suffer> suffers = sufferMapper.selectByExample(sufferExample);

        if (suffers == null||suffers.isEmpty()){
            return false;
        }else {
            return true;
        }


    }

    @Override
    public boolean addSuffer(Suffer suffer) {
        return sufferMapper.insert(suffer) > 0;
    }
}
