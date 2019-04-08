package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private HomeService HomeService;
    @RequestMapping("/{page}")
    public String index(@PathVariable String page, Model model){
        List<QmxHome> home = HomeService.getHome();
        System.out.println(home);
        model.addAttribute("home",home);
        return page;
    }
    @RequestMapping("/")
    public String login(Model model){
       /* List<QmxHome> home = HomeService.getHome();
        model.addAttribute("home",home);*/
        return "index";
    }
}
