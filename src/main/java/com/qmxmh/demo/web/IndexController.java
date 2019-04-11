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
    @Autowired
    private HomeService HomeService;
    @RequestMapping("/{page}")
    public String index(@PathVariable String page, Model model ){
        System.out.println("3333333");
        List<QmxHome> home = HomeService.getHome();
        System.out.println(home);
        model.addAttribute("home",home);
        return page;
    }
    @RequestMapping("/admin/{page}")
    public String adminindex(@PathVariable String page, Model model ){
        System.out.println("33333333");
        System.out.println(page);
        return "admin/"+page;
    }
    @RequestMapping("/admin/news/{page}")
    public String adminnewsindex(@PathVariable String page, Model model ){
        System.out.println("222");
        System.out.println(page);
        return "admin/news/"+page;
    }
    @RequestMapping("/admin/news/list1")
    @ResponseBody
    public Ajax list(Model model ){
        System.out.println("111");
        Ajax ajax = new Ajax();
        List<QmxHome> home = HomeService.getHome();
        ajax.setCode(0);
        ajax.setMsg("");
        ajax.setData(home);
        ajax.setCount(1000);
        return ajax;
    }
    /**
     * 跳转至查询所有
     * */
    @RequestMapping("/")
    public String login(Model model){
        return "redirect:/home/index";
    }
}
