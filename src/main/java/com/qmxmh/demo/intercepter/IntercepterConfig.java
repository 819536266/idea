package com.qmxmh.demo.intercepter;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class IntercepterConfig implements WebMvcConfigurer {
    @Autowired
    private UserIntercepter inter;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(inter).addPathPatterns("/admin/*").excludePathPatterns("/admin/login", "/admin/login1");
    }

}
