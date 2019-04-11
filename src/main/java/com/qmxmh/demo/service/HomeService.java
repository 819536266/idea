package com.qmxmh.demo.service;


import com.qmxmh.demo.pojo.QmxHome;

import java.util.List;

public interface HomeService {
    //获取所有
    List<QmxHome> getHome();
    //根据id获取
    QmxHome findById(Long id);
}
