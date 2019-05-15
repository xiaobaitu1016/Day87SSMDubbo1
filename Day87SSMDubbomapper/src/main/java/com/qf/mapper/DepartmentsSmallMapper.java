package com.qf.mapper;

import com.qf.pojo.DepartmentsSmall;
import com.qf.pojo.DepartmentsSmallExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepartmentsSmallMapper {
    int countByExample(DepartmentsSmallExample example);

    int deleteByExample(DepartmentsSmallExample example);

    int deleteByPrimaryKey(Integer dsid);

    int insert(DepartmentsSmall record);

    int insertSelective(DepartmentsSmall record);

    List<DepartmentsSmall> selectByExample(DepartmentsSmallExample example);

    DepartmentsSmall selectByPrimaryKey(Integer dsid);

    DepartmentsSmall selectByPrimaryKeyDbid(Integer dbid);

    int updateByExampleSelective(@Param("record") DepartmentsSmall record, @Param("example") DepartmentsSmallExample example);

    int updateByExample(@Param("record") DepartmentsSmall record, @Param("example") DepartmentsSmallExample example);

    int updateByPrimaryKeySelective(DepartmentsSmall record);

    int updateByPrimaryKey(DepartmentsSmall record);
}