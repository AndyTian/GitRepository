package com.aishang.mapper;

import com.aishang.pojo.TbSchoollife;
import com.aishang.pojo.TbSchoollifeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSchoollifeMapper {
    int countByExample(TbSchoollifeExample example);

    int deleteByExample(TbSchoollifeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbSchoollife record);

    int insertSelective(TbSchoollife record);

    List<TbSchoollife> selectByExample(TbSchoollifeExample example);

    TbSchoollife selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbSchoollife record, @Param("example") TbSchoollifeExample example);

    int updateByExample(@Param("record") TbSchoollife record, @Param("example") TbSchoollifeExample example);

    int updateByPrimaryKeySelective(TbSchoollife record);

    int updateByPrimaryKey(TbSchoollife record);
}