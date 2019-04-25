package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.service.HomeService;
import com.qmxmh.demo.util.Ajax;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @RequestMapping("/admin/{page}")
    public String adminindex(@PathVariable String page, Model model ){
        return "admin/"+page;
    }

    /**
     * 跳转至查询所有
     * */
    @RequestMapping("/")
    public String index(Model model){
        return "redirect:/home/index";
    }
    @RequestMapping("/index")
    public String index1(Model model){
        return "redirect:/home/index";
    }
}
