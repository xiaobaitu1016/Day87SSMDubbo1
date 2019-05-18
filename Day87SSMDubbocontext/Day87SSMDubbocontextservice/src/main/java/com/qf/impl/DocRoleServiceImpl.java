package com.qf.impl;

import com.qf.mapper.DocRoleMapper;
import com.qf.pojo.DocRole;
import com.qf.pojo.DocRoleExample;
import com.qf.service.IDocRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class DocRoleServiceImpl implements IDocRoleService {

    @Resource
    private DocRoleMapper docRoleMapper;

    @Override
    public List<DocRole> getAllDocRoleByExample (DocRoleExample example) {

        return docRoleMapper.selectByExample(example);
    }

    @Override
    public boolean deleteDocRoleByExample(DocRoleExample example) {
        return docRoleMapper.deleteByExample(example) > 0;
    }

    @Override
    public boolean addDocRole(DocRole docRole) {
        return docRoleMapper.insert(docRole) > 0;
    }
}
