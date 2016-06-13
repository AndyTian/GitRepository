package com.aishang.mapper;

import com.aishang.pojo.TbCustomer;
import com.aishang.pojo.TbCustomerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCustomerMapper {
    int countByExample(TbCustomerExample example);

    int deleteByExample(TbCustomerExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbCustomer record);

    int insertSelective(TbCustomer record);

    List<TbCustomer> selectByExample(TbCustomerExample example);

    TbCustomer selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbCustomer record, @Param("example") TbCustomerExample example);

    int updateByExample(@Param("record") TbCustomer record, @Param("example") TbCustomerExample example);

    int updateByPrimaryKeySelective(TbCustomer record);

    int updateByPrimaryKey(TbCustomer record);
}