package com.aishang.mapper;

import com.aishang.pojo.TbAd;
import com.aishang.pojo.TbAdExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAdMapper {
    int countByExample(TbAdExample example);

    int deleteByExample(TbAdExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbAd record);

    int insertSelective(TbAd record);

    List<TbAd> selectByExample(TbAdExample example);

    TbAd selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbAd record, @Param("example") TbAdExample example);

    int updateByExample(@Param("record") TbAd record, @Param("example") TbAdExample example);

    int updateByPrimaryKeySelective(TbAd record);

    int updateByPrimaryKey(TbAd record);
}