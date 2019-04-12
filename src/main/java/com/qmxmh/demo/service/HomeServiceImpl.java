package com.qmxmh.demo.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qmxmh.demo.mapper.QmxHomeMapper;
import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.pojo.QmxHomeExample;
import com.qmxmh.demo.util.Ajax;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HomeServiceImpl implements HomeService {
    @Autowired
    private QmxHomeMapper qmxHomeMapper;

    @Override
    public List<QmxHome> getHome() {
        List<QmxHome> qmxHomes =  qmxHomeMapper.selectByExample(null);
        return qmxHomes;
    }
//根据id查询
    @Override
    public QmxHome findById(Long id) {
        return qmxHomeMapper.selectByPrimaryKey(id);
    }
    //添加
    @Override
    public void save(QmxHome qmxHome) {
        qmxHomeMapper.insertSelective(qmxHome);
    }
    //根据类型分页查询
    @Override
    public Ajax findByOneType(String type, Integer page, Integer limit) {
        QmxHomeExample qmxHomeExample = new QmxHomeExample();
        //分页插件
        PageHelper.startPage(page,limit);
        //设置条件
        qmxHomeExample.createCriteria().andHmOneTypeEqualTo(type);
        List<QmxHome> qmxHomes = qmxHomeMapper.selectByExample(qmxHomeExample);
        PageInfo<QmxHome> pageInfo=new PageInfo(qmxHomes);

        Ajax ajax = new Ajax();
        //判断是否存在数据
        if(pageInfo.getList().size()>0){
            //设置返回格式
            ajax.setCode(0);
            ajax.setMsg("");
            Long total = pageInfo.getTotal();
            ajax.setCount(total.intValue());
            ajax.setData(pageInfo.getList());
        }else{
            ajax.setCode(0);
        }
        return ajax;
    }
}
