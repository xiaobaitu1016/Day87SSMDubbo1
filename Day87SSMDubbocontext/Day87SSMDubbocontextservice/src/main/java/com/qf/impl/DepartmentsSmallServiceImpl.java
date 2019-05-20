package com.qf.impl;

import com.qf.mapper.DepartmentsSmallMapper;
import com.qf.pojo.DepartmentsSmall;
import com.qf.pojo.DepartmentsSmallExample;
import com.qf.service.IDepartmentsSmallService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentsSmallServiceImpl implements IDepartmentsSmallService {

    @Resource
    private DepartmentsSmallMapper departmentsSmallMapper;

    @Override
    public List<DepartmentsSmall> getAllDepartmentsSmallByExample (DepartmentsSmallExample example) {

        return departmentsSmallMapper.selectByExample(example);
    }

    @Override
    public DepartmentsSmall getDepartmentsSmallByDsid(int dsid) {
        return departmentsSmallMapper.selectByPrimaryKey(dsid);
    }

    @Override
    public boolean addDepartmentsSmall(DepartmentsSmall departmentsSmall) {
        return departmentsSmallMapper.insert(departmentsSmall) > 0;
    }

    @Override
    public boolean updateDepartmentsSmallByDsid(DepartmentsSmall departmentsSmall) {
        return departmentsSmallMapper.updateByPrimaryKey(departmentsSmall) > 0;
    }
}
