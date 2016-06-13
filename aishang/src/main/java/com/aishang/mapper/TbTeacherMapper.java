package com.aishang.mapper;

import com.aishang.pojo.TbTeacher;
import com.aishang.pojo.TbTeacherExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTeacherMapper {
    int countByExample(TbTeacherExample example);

    int deleteByExample(TbTeacherExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbTeacher record);

    int insertSelective(TbTeacher record);

    List<TbTeacher> selectByExample(TbTeacherExample example);

    TbTeacher selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbTeacher record, @Param("example") TbTeacherExample example);

    int updateByExample(@Param("record") TbTeacher record, @Param("example") TbTeacherExample example);

    int updateByPrimaryKeySelective(TbTeacher record);

    int updateByPrimaryKey(TbTeacher record);
}