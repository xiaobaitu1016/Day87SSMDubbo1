package com.qf.mapper;

import com.qf.pojo.Suffer;
import com.qf.pojo.SufferExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SufferMapper {
    int countByExample(SufferExample example);

    int deleteByExample(SufferExample example);

    int deleteByPrimaryKey(Integer suid);

    int insert(Suffer record);

    int insertSelective(Suffer record);

    List<Suffer> selectByExample(SufferExample example);

    Suffer selectByPrimaryKey(Integer suid);

    int updateByExampleSelective(@Param("record") Suffer record, @Param("example") SufferExample example);

    int updateByExample(@Param("record") Suffer record, @Param("example") SufferExample example);

    int updateByPrimaryKeySelective(Suffer record);

    int updateByPrimaryKey(Suffer record);
}