package com.qf.impl;

import com.qf.mapper.DepartmentsBigMapper;
import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsBigExample;
import com.qf.service.IDepartmentsBigService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentsBigServiceImpl implements IDepartmentsBigService {

    @Resource
    private DepartmentsBigMapper departmentsBigMapper;

    @Override
    public List<DepartmentsBig> getAllDepartmentsBigByExample (DepartmentsBigExample example) {

        return departmentsBigMapper.selectByExample(example);
    }

    @Override
    public boolean addDepartmentsBig(DepartmentsBig departmentsBig) {
        return departmentsBigMapper.insert(departmentsBig) > 0;
    }

    @Override
    public boolean updateDepartmentsBigByDbid(DepartmentsBig departmentsBig) {
        return departmentsBigMapper.updateByPrimaryKey(departmentsBig) > 0;
    }
}
