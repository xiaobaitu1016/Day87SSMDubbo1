package com.qf.impl;

import com.qf.mapper.RolesMapper;
import com.qf.pojo.Roles;
import com.qf.pojo.RolesExample;
import com.qf.service.IRolesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RolesServiceImpl implements IRolesService {

   @Resource
    private RolesMapper rolesMapper;

    @Override
    public List<Roles> getAllRolesByExample (RolesExample example) {

        return rolesMapper.selectByExample(example);
    }
}
