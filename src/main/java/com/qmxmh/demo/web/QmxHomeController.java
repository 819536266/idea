package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("home")
public class QmxHomeController {
    @Autowired
    private HomeService service;
    @RequestMapping("index")
    public String find(Model model){
        List<QmxHome> home = service.getHome();
        System.out.println(home);
        model.addAttribute("home",home);
        return "index";
    }
    /**
     * 根据id查询
     * */
    @RequestMapping("{id}")
    public String findById(@PathVariable Long id, Model model){
        //根据id查询
        QmxHome home=service.findById(id);
        List<QmxHome> list = service.getHome();
        model.addAttribute("homeById",home);
        model.addAttribute("home",list);
        System.out.println(home);
        return "details";
    }

}
