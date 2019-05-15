package com.qf.service;

import com.qf.pojo.DocRole;
import com.qf.pojo.DocRoleExample;

import java.util.List;

public interface IDocRoleService {

    List<DocRole> getAllDocRoleByExample(DocRoleExample example);
}
