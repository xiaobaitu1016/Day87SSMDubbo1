package com.qf.mapper;

import com.qf.pojo.DoctorComment;
import com.qf.pojo.DoctorCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DoctorCommentMapper {
    int countByExample(DoctorCommentExample example);

    int deleteByExample(DoctorCommentExample example);

    int deleteByPrimaryKey(Integer dcid);

    int insert(DoctorComment record);

    int insertSelective(DoctorComment record);

    List<DoctorComment> selectByExample(DoctorCommentExample example);

    List<DoctorComment> selectByDid(Integer did);

    DoctorComment selectByPrimaryKey(Integer dcid);

    int updateByExampleSelective(@Param("record") DoctorComment record, @Param("example") DoctorCommentExample example);

    int updateByExample(@Param("record") DoctorComment record, @Param("example") DoctorCommentExample example);

    int updateByPrimaryKeySelective(DoctorComment record);

    int updateByPrimaryKey(DoctorComment record);
}