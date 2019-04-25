package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxRoot;
import com.qmxmh.demo.service.RootService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
        List<QmxRoot> qmxRoots = rootService.selectByExample(null);
        int i=0;
        for (QmxRoot q:qmxRoots){
            if(q.getRootName().equals(qmxRoot.getRootName())&&q.getRootPassword().equals(qmxRoot.getRootPassword())){
                i=1;
                session.setAttribute("admin", q);
                break;
            }
        }
        return i;
    }
    @RequestMapping("/admin/resession")
    @ResponseBody
    public String adminRemoveSession(HttpSession session){
        session.removeAttribute("admin");
        return "/admin/login";
    }


}
