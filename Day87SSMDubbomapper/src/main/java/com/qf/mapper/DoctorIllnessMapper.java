package com.qf.mapper;

import com.qf.pojo.DoctorIllness;
import com.qf.pojo.DoctorIllnessExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DoctorIllnessMapper {
    int countByExample(DoctorIllnessExample example);

    int deleteByExample(DoctorIllnessExample example);

    int deleteByPrimaryKey(Integer dilid);

    int insert(DoctorIllness record);

    int insertSelective(DoctorIllness record);

    List<DoctorIllness> selectByExample(DoctorIllnessExample example);

    List<DoctorIllness> selectByDid(Integer did);

    DoctorIllness selectByPrimaryKey(Integer dilid);

    int updateByExampleSelective(@Param("record") DoctorIllness record, @Param("example") DoctorIllnessExample example);

    int updateByExample(@Param("record") DoctorIllness record, @Param("example") DoctorIllnessExample example);

    int updateByPrimaryKeySelective(DoctorIllness record);

    int updateByPrimaryKey(DoctorIllness record);
}