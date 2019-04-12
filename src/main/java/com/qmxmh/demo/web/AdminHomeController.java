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
@RequestMapping("admin/home")
public class AdminHomeController {
    @Autowired
    private HomeService service;
    @RequestMapping("{list}/list")
    public String admin(@PathVariable String list,String hmOneType){
        return "admin/"+list+"/list";
    }
    @RequestMapping("{update}/update/{id}")
    public String update(@PathVariable String update, String hmOneType, @PathVariable Long id, Model model){
        System.out.println("111");
        QmxHome home=service.findById(id);
        List<QmxHome> list = service.getHome();
        model.addAttribute("homeone",home);
        System.out.println(home);
        return "admin/"+update+"/update";
    }


}