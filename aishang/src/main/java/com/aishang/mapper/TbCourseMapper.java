package com.aishang.mapper;

import com.aishang.pojo.TbCourse;
import com.aishang.pojo.TbCourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCourseMapper {
    int countByExample(TbCourseExample example);

    int deleteByExample(TbCourseExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbCourse record);

    int insertSelective(TbCourse record);

    List<TbCourse> selectByExample(TbCourseExample example);

    TbCourse selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbCourse record, @Param("example") TbCourseExample example);

    int updateByExample(@Param("record") TbCourse record, @Param("example") TbCourseExample example);

    int updateByPrimaryKeySelective(TbCourse record);

    int updateByPrimaryKey(TbCourse record);
}