package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.service.HomeService;
import com.qmxmh.demo.util.Ajax;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.net.URLDecoder;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("home")
public class QmxHomeController {
    @Autowired
    private HomeService service;
    @RequestMapping("index")
    public String find(Model model){
        List<QmxHome> home = service.getHome();
        model.addAttribute("home",home);
        return "index";
    }
    /**
     * 根据id查询子分类
     * */
    @RequestMapping("son/{type}")
    @ResponseBody
    public Ajax findSon(@PathVariable String type, Model model,Integer page,Integer limit){
        //根据id查询
        Ajax home=service.findSon(type,page,limit);
        return home;
    }
    /**
     * 根据类型查询
     * */
    @RequestMapping("list/{type}")
    @ResponseBody
    public Ajax findByOneType(@PathVariable String type, Model model,Integer page,Integer limit){
        //根据id查询
        Ajax home=service.findByOneType(type,page,limit);
        return home;
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
    @RequestMapping("content/{id}")
    public String content(@PathVariable Long id, Model model){
        //根据id查询
        QmxHome home=service.findById(id);
        List<QmxHome> list = service.getHome();
        model.addAttribute("homeById",home);
        model.addAttribute("home",list);
        return "context";
    }
    /**
     * 根据id查询
     * */
    @RequestMapping("updateBefore/{id}")
    public String update(@PathVariable Long id, Model model){
        //根据id查询
        QmxHome home=service.findById(id);
        List<QmxHome> list = service.getHome();
        model.addAttribute("homeone",home);
        return "update";
    }
    //删除
    @RequestMapping("delete/{id}")
    @ResponseBody
    public int delete(@PathVariable Long id){
        try {
            service.deleteById(id);
        } catch (Exception e) {
            return 0;
        }
        return 1;
    }
    @RequestMapping("update")
    @ResponseBody
    public int update(QmxHome qmxHome, MultipartFile upload, Model model, HttpServletRequest request){
        try {
            //设置时间
            qmxHome.setHmOneDate(new Date());
            //判断有无文件上传
            if (upload!=null && !upload.isEmpty()){
                String filename = upload.getOriginalFilename();
                String uuidname= UUID.randomUUID().toString().replace("_","")+filename.substring(filename.lastIndexOf(".")-1);
                //判断D盘是否存在,不存在则存C盘
                File dpath = new File("d:");
                if (!dpath.exists()) {
                    dpath = new File("c:");
                }
                File is = new File(dpath + "/images/qmx/image/");
                if(!is.exists()){
                    is.mkdirs();
                }
                String filepath=is+"\\"+uuidname;
                File file =new File(filepath);
                upload.transferTo(file);
                qmxHome.setHmOneImage(uuidname);
            }

            service.update(qmxHome);
        } catch (Exception e) {
            return 0;
        }
        return 1;
    }

    @RequestMapping("add")
    @ResponseBody
    public int add(QmxHome qmxHome, MultipartFile upload, Model model, HttpServletRequest request){
        try{
            //设置时间
            qmxHome.setHmOneDate(new Date());
            //判断有无文件上传
            if (upload!=null && !upload.isEmpty()){
                String filename = upload.getOriginalFilename();
                String uuidname= UUID.randomUUID().toString().replace("_","")+filename.substring(filename.lastIndexOf(".")-1);
                // String decode = URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath(), "UTF-8");
                File dpath = new File("d:");
                //判断D盘是否存在,不存在则存C盘
                if (!dpath.exists()) {
                    dpath = new File("c:");
                }
                File is = new File(dpath + "/images/qmx/image/");
                if(!is.exists()){
                    is.mkdirs();
                }
                String filepath=is+"\\"+uuidname;
                File file =new File(filepath);
                upload.transferTo(file);
                qmxHome.setHmOneImage(uuidname);
            }
            service.save(qmxHome);
        }catch (Exception e){
            //返回0则为失败
            return 0;
        }
        //返回1则为成功
        return 1;
    }
}
