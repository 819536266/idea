package com.qmxmh.demo.intercepter;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class IntercepterConfig  {
    /*@Autowired
    private UserIntercepter inter;
    public WebMvcConfigurer config(){
        return new WebMvcConfigurer() {
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
                registry.addInterceptor(inter).addPathPatterns("/**").excludePathPatterns("/index","/","/login");
            }
        };
    }*/
}
