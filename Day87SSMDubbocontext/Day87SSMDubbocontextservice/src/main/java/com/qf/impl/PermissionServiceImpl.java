package com.qf.impl;

import com.qf.mapper.PermissionMapper;
import com.qf.pojo.Permission;
import com.qf.pojo.PermissionExample;
import com.qf.service.IPermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PermissionServiceImpl implements IPermissionService {

    @Resource
    private PermissionMapper permissionMapper;

    @Override
    public List<Permission> getAllPermissionByExample (PermissionExample example) {
        return permissionMapper.selectByExample(example);
    }
}
