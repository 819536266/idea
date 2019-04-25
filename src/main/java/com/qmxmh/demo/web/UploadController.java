package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.pojo.Ueditor;
import com.qmxmh.demo.util.LayuiUpload;
import com.qmxmh.demo.util.PublicMsg;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.net.URLDecoder;
import java.util.Map;
import java.util.UUID;

@Controller
public class UploadController {
    @RequestMapping(value = "/ueditor")
    @ResponseBody
    public String ueditor(HttpServletRequest request) {

        return PublicMsg.UEDITOR_CONFIG;
    }
    @RequestMapping("upload/img")

    public @ResponseBody
    Ueditor upload(MultipartFile upfile, HttpServletRequest request) {
        System.out.println("进入图片上传");
        Ueditor ueditor = new Ueditor();
        QmxHome qmxHome = new QmxHome();
        if (upfile.isEmpty()) {
            return ueditor;
        }
        //获取上传文件名字
        String filename = upfile.getOriginalFilename();
        //生成uuid
        String filepath= UUID.randomUUID().toString().replace("_","")+filename.substring(filename.lastIndexOf(".")-1);
        System.out.println("文件名:"+filepath);
        File file1=null;
        String fileupload="";
        try {
            File dpath = new File("d:");
            if (!dpath.exists()) {
                dpath = new File("c:");
            }
            File uploadpath = new File(dpath, "/images/qmx/image/");
            //File path=new File(URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath(),"UTF-8"));
            // File uploadpath=new File(path.getAbsolutePath(), "/static/qmx/image/");
            System.out.println("文件储存路径:" + uploadpath);
            //判断是否有此文件夹
            if(!uploadpath.exists()){
                uploadpath.mkdirs();
            }

            fileupload =uploadpath+"\\"+filepath;
            file1=new File(fileupload);
            System.out.println("文件路径"+fileupload);
            //生成文件
            upfile.transferTo(file1);
        } catch (Exception e) {
            ueditor.setState("上传错误");
            return ueditor;
        }
        ueditor.setOriginal(filename);//返回名称
        ueditor.setState("SUCCESS");//返回必须为SUCCESS
        ueditor.setUrl(request.getContextPath() + "/" + filepath);//返回路径
        ueditor.setTitle(filename);//返回名称
        return ueditor;
    }
}
