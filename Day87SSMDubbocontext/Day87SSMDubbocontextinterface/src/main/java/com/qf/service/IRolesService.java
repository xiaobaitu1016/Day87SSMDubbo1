package com.qf.service;

import com.qf.pojo.Roles;
import com.qf.pojo.RolesExample;

import java.util.List;

public interface IRolesService {

    List<Roles> getAllRolesByExample(RolesExample example);
}
