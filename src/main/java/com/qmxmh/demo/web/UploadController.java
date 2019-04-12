package com.qmxmh.demo.web;

import com.qmxmh.demo.pojo.QmxHome;
import com.qmxmh.demo.util.LayuiUpload;
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

    @RequestMapping("upload/img")

    public @ResponseBody LayuiUpload upload(MultipartFile file, HttpServletRequest request) {
        LayuiUpload layuiUpload = new LayuiUpload();
        QmxHome qmxHome = new QmxHome();
        if (file.isEmpty()) {
            layuiUpload.setCode(1);
            layuiUpload.setMsg("未上传文件");
            return layuiUpload;
        }
        //获取上传文件名字
        String filename=file.getOriginalFilename();
        //生成uuid
        String filepath= UUID.randomUUID().toString().replace("_","")+filename.substring(filename.lastIndexOf(".")-1);
        System.out.println("文件名:"+filepath);
        File file1=null;
        String fileupload="";
        try {
            // URLDecoder.decode()对获取的路径进行转码
            File path=new File(URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath(),"UTF-8"));
            File uploadpath=new File(path.getAbsolutePath(), "templates/admin/static/qmx/image/");
            System.out.println("文件储存路径:"+path);
            //判断是否有此文件夹
            if(!uploadpath.exists()){
                uploadpath.mkdirs();
            }

            fileupload =uploadpath+"\\"+filepath;
            file1=new File(fileupload);
            System.out.println("文件路径"+fileupload);
            //生成文件
            file.transferTo(file1);
        } catch (Exception e) {
            layuiUpload.setCode(1);
            layuiUpload.setMsg("上传失败");
            return layuiUpload;
        }
        //设置返回json对象
        layuiUpload.setCode(0);
        layuiUpload.setMsg("");
        Map<String, String> data = layuiUpload.getData();
        data.put("src",request.getContextPath()+"/qmx/image/"+filepath);
        data.put("title",filename);
        layuiUpload.setData(data);
        return layuiUpload;
    }
}
