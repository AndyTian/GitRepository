package com.aishang.mapper;

import com.aishang.pojo.TbCompany;
import com.aishang.pojo.TbCompanyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCompanyMapper {
    int countByExample(TbCompanyExample example);

    int deleteByExample(TbCompanyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbCompany record);

    int insertSelective(TbCompany record);

    List<TbCompany> selectByExample(TbCompanyExample example);

    TbCompany selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbCompany record, @Param("example") TbCompanyExample example);

    int updateByExample(@Param("record") TbCompany record, @Param("example") TbCompanyExample example);

    int updateByPrimaryKeySelective(TbCompany record);

    int updateByPrimaryKey(TbCompany record);
}