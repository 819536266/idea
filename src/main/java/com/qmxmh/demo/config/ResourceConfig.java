package com.qmxmh.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ResourceConfig implements WebMvcConfigurer {

    //图片保存路径
    public static final String PIC_PATH = "/profile/";

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /** 图片传路径 */
        registry.addResourceHandler("/profile/**").addResourceLocations("file:///D:/images/qmx/images/");

    }
}