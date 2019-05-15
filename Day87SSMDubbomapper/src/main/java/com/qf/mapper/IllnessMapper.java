package com.qf.mapper;

import com.qf.pojo.Illness;
import com.qf.pojo.IllnessExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IllnessMapper {
    int countByExample(IllnessExample example);

    int deleteByExample(IllnessExample example);

    int deleteByPrimaryKey(Integer ilid);

    int insert(Illness record);

    int insertSelective(Illness record);

    List<Illness> selectByExample(IllnessExample example);

    List<Illness> selectByDsid(Integer dsid);

    Illness selectByPrimaryKey(Integer ilid);

    int updateByExampleSelective(@Param("record") Illness record, @Param("example") IllnessExample example);

    int updateByExample(@Param("record") Illness record, @Param("example") IllnessExample example);

    int updateByPrimaryKeySelective(Illness record);

    int updateByPrimaryKey(Illness record);
}