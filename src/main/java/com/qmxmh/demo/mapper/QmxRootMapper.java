package com.qmxmh.demo.mapper;

import com.qmxmh.demo.pojo.QmxRoot;
import com.qmxmh.demo.pojo.QmxRootExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface QmxRootMapper {
    long countByExample(QmxRootExample example);

    int deleteByExample(QmxRootExample example);

    int deleteByPrimaryKey(Integer rootId);

    int insert(QmxRoot record);

    int insertSelective(QmxRoot record);

    List<QmxRoot> selectByExample(QmxRootExample example);

    List<QmxRoot> selectLogin(QmxRootExample example);
    QmxRoot selectByPrimaryKey(Integer rootId);

    int updateByExampleSelective(@Param("record") QmxRoot record, @Param("example") QmxRootExample example);

    int updateByExample(@Param("record") QmxRoot record, @Param("example") QmxRootExample example);

    int updateByPrimaryKeySelective(QmxRoot record);

    int updateByPrimaryKey(QmxRoot record);
}