package com.qmxmh.demo.service;

import com.qmxmh.demo.mapper.QmxRootMapper;
import com.qmxmh.demo.pojo.QmxRoot;
import com.qmxmh.demo.pojo.QmxRootExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class RootServiceImpl implements  RootService
{
    @Autowired
    QmxRootMapper qmxRootMapper;


    @Override
    public List<QmxRoot> selectByExample(QmxRootExample example) {
        return qmxRootMapper.selectByExample(example);
    }
}
