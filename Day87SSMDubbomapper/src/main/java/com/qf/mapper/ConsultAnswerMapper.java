package com.qf.mapper;

import com.qf.pojo.ConsultAnswer;
import com.qf.pojo.ConsultAnswerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ConsultAnswerMapper {
    int countByExample(ConsultAnswerExample example);

    int deleteByExample(ConsultAnswerExample example);

    int deleteByPrimaryKey(Integer caid);

    int insert(ConsultAnswer record);

    int insertSelective(ConsultAnswer record);

    List<ConsultAnswer> selectByExample(ConsultAnswerExample example);

    List<ConsultAnswer> selectByCid(Integer cid);

    ConsultAnswer selectByPrimaryKey(Integer caid);

    int updateByExampleSelective(@Param("record") ConsultAnswer record, @Param("example") ConsultAnswerExample example);

    int updateByExample(@Param("record") ConsultAnswer record, @Param("example") ConsultAnswerExample example);

    int updateByPrimaryKeySelective(ConsultAnswer record);

    int updateByPrimaryKey(ConsultAnswer record);
}