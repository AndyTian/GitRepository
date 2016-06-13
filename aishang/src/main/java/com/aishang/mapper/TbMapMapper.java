package com.aishang.mapper;

import com.aishang.pojo.TbMap;
import com.aishang.pojo.TbMapExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbMapMapper {
    int countByExample(TbMapExample example);

    int deleteByExample(TbMapExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbMap record);

    int insertSelective(TbMap record);

    List<TbMap> selectByExample(TbMapExample example);

    TbMap selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbMap record, @Param("example") TbMapExample example);

    int updateByExample(@Param("record") TbMap record, @Param("example") TbMapExample example);

    int updateByPrimaryKeySelective(TbMap record);

    int updateByPrimaryKey(TbMap record);
}