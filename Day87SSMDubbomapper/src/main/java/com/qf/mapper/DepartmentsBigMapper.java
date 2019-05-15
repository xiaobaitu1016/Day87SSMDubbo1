package com.qf.mapper;

import com.qf.pojo.DepartmentsBig;
import com.qf.pojo.DepartmentsBigExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepartmentsBigMapper {
    int countByExample(DepartmentsBigExample example);

    int deleteByExample(DepartmentsBigExample example);

    int deleteByPrimaryKey(Integer dbid);

    int insert(DepartmentsBig record);

    int insertSelective(DepartmentsBig record);

    List<DepartmentsBig> selectByExample(DepartmentsBigExample example);

    DepartmentsBig selectByPrimaryKey(Integer dbid);

    int updateByExampleSelective(@Param("record") DepartmentsBig record, @Param("example") DepartmentsBigExample example);

    int updateByExample(@Param("record") DepartmentsBig record, @Param("example") DepartmentsBigExample example);

    int updateByPrimaryKeySelective(DepartmentsBig record);

    int updateByPrimaryKey(DepartmentsBig record);
}