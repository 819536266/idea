package com.qmxmh.demo.service;


import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.util.Ajax;

import java.util.List;

public interface HomeService {
    //获取所有
    List<QmxHome> getHome();
    //根据id获取
    QmxHome findById(Long id);
    //存入
    void save(QmxHome qmxHome);

    Ajax findByOneType(String type, Integer page, Integer limit);
}
