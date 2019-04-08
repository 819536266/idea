package com.qmxmh.demo.mapper;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.pojo.QmxHomeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QmxHomeMapper {
    int countByExample(QmxHomeExample example);

    int deleteByExample(QmxHomeExample example);

    int deleteByPrimaryKey(Long hmId);

    int insert(QmxHome record);

    int insertSelective(QmxHome record);

    List<QmxHome> selectByExample(QmxHomeExample example);

    QmxHome selectByPrimaryKey(Long hmId);

    int updateByExampleSelective(@Param("record") QmxHome record, @Param("example") QmxHomeExample example);

    int updateByExample(@Param("record") QmxHome record, @Param("example") QmxHomeExample example);

    int updateByPrimaryKeySelective(QmxHome record);

    int updateByPrimaryKey(QmxHome record);
}