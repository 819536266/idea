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
//根据type 查询
    Ajax findByOneType(String type, Integer page, Integer limit);
//根据type查询子分类
    Ajax findSon(String type, Integer page, Integer limit);
//根据id删除
    void deleteById(Long id);
//修改
    void update(QmxHome qmxHome);
}
