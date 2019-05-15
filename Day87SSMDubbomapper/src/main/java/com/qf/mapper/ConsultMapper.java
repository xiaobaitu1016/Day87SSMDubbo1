package com.qf.mapper;

import com.qf.pojo.Consult;
import com.qf.pojo.ConsultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ConsultMapper {
    int countByExample(ConsultExample example);

    int deleteByExample(ConsultExample example);

    int deleteByPrimaryKey(Integer cid);

    int insert(Consult record);

    int insertSelective(Consult record);

    List<Consult> selectByExample(ConsultExample example);

    Consult selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByExample(@Param("record") Consult record, @Param("example") ConsultExample example);

    int updateByPrimaryKeySelective(Consult record);

    int updateByPrimaryKey(Consult record);
}