package com.aishang.mapper;

import com.aishang.pojo.TbSchoolpic;
import com.aishang.pojo.TbSchoolpicExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSchoolpicMapper {
    int countByExample(TbSchoolpicExample example);

    int deleteByExample(TbSchoolpicExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbSchoolpic record);

    int insertSelective(TbSchoolpic record);

    List<TbSchoolpic> selectByExample(TbSchoolpicExample example);

    TbSchoolpic selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbSchoolpic record, @Param("example") TbSchoolpicExample example);

    int updateByExample(@Param("record") TbSchoolpic record, @Param("example") TbSchoolpicExample example);

    int updateByPrimaryKeySelective(TbSchoolpic record);

    int updateByPrimaryKey(TbSchoolpic record);
}