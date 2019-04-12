package com.qmxmh.demo.service;

import com.qmxmh.demo.pojo.QmxRoot;
import com.qmxmh.demo.pojo.QmxRootExample;
import org.springframework.stereotype.Service;

import java.util.List;

public interface RootService {

    List<QmxRoot> selectByExample(QmxRootExample example);
}
