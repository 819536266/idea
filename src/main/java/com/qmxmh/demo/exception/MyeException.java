package com.qmxmh.demo.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class MyeException {
    @ExceptionHandler({Exception.class})
    @ResponseBody
    public Map<String, Object> excepyion(){
        HashMap<String, Object> map = new HashMap<>();
        return map;
    }
}
