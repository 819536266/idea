package com.qmxmh.demo.service;

import com.qmxmh.demo.mapper.QmxHomeMapper;
import com.qmxmh.demo.pojo.QmxHome;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
    private QmxHomeMapper qmxHomeMapper;

    @Override
    public List<QmxHome> getHome() {
        List<QmxHome> qmxHomes =  qmxHomeMapper.selectByExample(null);
        return qmxHomes;
    }
}
