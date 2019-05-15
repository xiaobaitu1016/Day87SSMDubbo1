package com.qf.mapper;

import com.qf.pojo.Number;
import com.qf.pojo.NumberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NumberMapper {
    int countByExample(NumberExample example);

    int deleteByExample(NumberExample example);

    int deleteByPrimaryKey(Integer nuid);

    int insert(Number record);

    int insertSelective(Number record);

    List<Number> selectByExample(NumberExample example);

    Number selectByPrimaryKey(Integer nuid);

    int updateByExampleSelective(@Param("record") Number record, @Param("example") NumberExample example);

    int updateByExample(@Param("record") Number record, @Param("example") NumberExample example);

    int updateByPrimaryKeySelective(Number record);

    int updateByPrimaryKey(Number record);
}