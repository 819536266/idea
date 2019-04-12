package com.qmxmh.demo.util;

import lombok.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * layui.code
 * {
 *   "code": 0 //0表示成功，其它失败
 *   ,"msg": "" //提示信息 //一般上传失败后返回
 *   ,"data": {
 *     "src": "图片路径"
 *     ,"title": "图片名称" //可选
 *   }
 * }
 */

@Data
public class LayuiUpload {
    private int code;//0表示成功，其它失败
    private String msg;//提示信息 //一般上传失败后返回
    private Map<String,String> data=new HashMap<String,String>();

}
