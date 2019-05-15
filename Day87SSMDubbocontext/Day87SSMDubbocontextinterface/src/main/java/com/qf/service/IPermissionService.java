package com.qf.service;

import com.qf.pojo.Permission;
import com.qf.pojo.PermissionExample;

import java.util.List;

public interface IPermissionService {

    List<Permission> getAllPermissionByExample(PermissionExample example);
}
