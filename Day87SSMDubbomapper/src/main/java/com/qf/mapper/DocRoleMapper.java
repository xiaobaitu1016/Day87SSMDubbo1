package com.qf.mapper;

import com.qf.pojo.DocRole;
import com.qf.pojo.DocRoleExample;
import com.qf.pojo.DocRoleKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DocRoleMapper {
    int countByExample(DocRoleExample example);

    int deleteByExample(DocRoleExample example);

    int deleteByPrimaryKey(DocRoleKey key);

    int insert(DocRole record);

    int insertSelective(DocRole record);

    List<DocRole> selectByExample(DocRoleExample example);

    List<DocRole> selectByDid(Integer did);

    DocRole selectByPrimaryKey(DocRoleKey key);

    int updateByExampleSelective(@Param("record") DocRole record, @Param("example") DocRoleExample example);

    int updateByExample(@Param("record") DocRole record, @Param("example") DocRoleExample example);

    int updateByPrimaryKeySelective(DocRole record);

    int updateByPrimaryKey(DocRole record);
}