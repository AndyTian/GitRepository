package com.aishang.mapper;

import com.aishang.pojo.TbAboutus;
import com.aishang.pojo.TbAboutusExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAboutusMapper {
    int countByExample(TbAboutusExample example);

    int deleteByExample(TbAboutusExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbAboutus record);

    int insertSelective(TbAboutus record);

    List<TbAboutus> selectByExample(TbAboutusExample example);

    TbAboutus selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbAboutus record, @Param("example") TbAboutusExample example);

    int updateByExample(@Param("record") TbAboutus record, @Param("example") TbAboutusExample example);

    int updateByPrimaryKeySelective(TbAboutus record);

    int updateByPrimaryKey(TbAboutus record);
}