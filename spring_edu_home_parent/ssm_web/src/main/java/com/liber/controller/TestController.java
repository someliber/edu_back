package com.liber.controller;

import com.liber.domain.Test;
import com.liber.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/test")
public class TestController {
    @Autowired
    private TestService testService;
    @RequestMapping("/finAllTest")
    public List<Test> getTestList() {
        return testService.finAllTest();
    }
}
