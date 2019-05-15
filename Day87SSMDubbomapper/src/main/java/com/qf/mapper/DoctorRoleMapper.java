package com.qf.mapper;

import com.qf.pojo.DoctorRole;
import com.qf.pojo.DoctorRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DoctorRoleMapper {
    int countByExample(DoctorRoleExample example);

    int deleteByExample(DoctorRoleExample example);

    int deleteByPrimaryKey(Integer drid);

    int insert(DoctorRole record);

    int insertSelective(DoctorRole record);

    List<DoctorRole> selectByExample(DoctorRoleExample example);

    DoctorRole selectByPrimaryKey(Integer drid);

    int updateByExampleSelective(@Param("record") DoctorRole record, @Param("example") DoctorRoleExample example);

    int updateByExample(@Param("record") DoctorRole record, @Param("example") DoctorRoleExample example);

    int updateByPrimaryKeySelective(DoctorRole record);

    int updateByPrimaryKey(DoctorRole record);
}