package com.qf.mapper;

import com.qf.pojo.RolePerm;
import com.qf.pojo.RolePermExample;
import com.qf.pojo.RolePermKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RolePermMapper {
    int countByExample(RolePermExample example);

    int deleteByExample(RolePermExample example);

    int deleteByPrimaryKey(RolePermKey key);

    int insert(RolePerm record);

    int insertSelective(RolePerm record);

    List<RolePerm> selectByExample(RolePermExample example);

    RolePerm selectByPrimaryKey(RolePermKey key);

    int updateByExampleSelective(@Param("record") RolePerm record, @Param("example") RolePermExample example);

    int updateByExample(@Param("record") RolePerm record, @Param("example") RolePermExample example);

    int updateByPrimaryKeySelective(RolePerm record);

    int updateByPrimaryKey(RolePerm record);
}