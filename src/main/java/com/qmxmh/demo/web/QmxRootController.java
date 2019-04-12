package com.qmxmh.demo.web;

import com.qmxmh.demo.intercepter.AdminIntercepter;
import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.pojo.QmxRoot;
import com.qmxmh.demo.service.RootService;
import com.qmxmh.demo.util.Ajax;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class QmxRootController {
    @Autowired
    RootService rootService;
    @RequestMapping("/admin/login1")
    @ResponseBody
    public Integer adminLogin(HttpSession session, QmxRoot qmxRoot){
        System.out.println("22222222");
        List<QmxRoot> qmxRoots = rootService.selectByExample(null);
        int i=0;
        for (QmxRoot q:qmxRoots){
            if(q.getRootName().equals(qmxRoot.getRootName())&&q.getRootPassword().equals(qmxRoot.getRootPassword())){
                i=1;
                session.setAttribute("aaa", AdminIntercepter.SESSION_KEY);
                break;
            }
        }
        return i;
    }
    @RequestMapping("/admin/resession")
    @ResponseBody
    public String adminRemoveSession(HttpSession session){
        System.out.println("tuishu");
        session.removeAttribute("aaa");
        return "/admin/login";
    }


}
