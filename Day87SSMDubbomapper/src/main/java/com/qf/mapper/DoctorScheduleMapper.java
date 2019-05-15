package com.qf.mapper;

import com.qf.pojo.DoctorSchedule;
import com.qf.pojo.DoctorScheduleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DoctorScheduleMapper {
    int countByExample(DoctorScheduleExample example);

    int deleteByExample(DoctorScheduleExample example);

    int deleteByPrimaryKey(Integer dscid);

    int insert(DoctorSchedule record);

    int insertSelective(DoctorSchedule record);

    List<DoctorSchedule> selectByExample(DoctorScheduleExample example);

    DoctorSchedule selectByPrimaryKey(Integer dscid);

    int updateByExampleSelective(@Param("record") DoctorSchedule record, @Param("example") DoctorScheduleExample example);

    int updateByExample(@Param("record") DoctorSchedule record, @Param("example") DoctorScheduleExample example);

    int updateByPrimaryKeySelective(DoctorSchedule record);

    int updateByPrimaryKey(DoctorSchedule record);
}