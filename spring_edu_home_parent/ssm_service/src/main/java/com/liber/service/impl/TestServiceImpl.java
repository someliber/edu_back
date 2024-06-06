package com.liber.service.impl;

import com.liber.dao.TestMapper;
import com.liber.domain.Test;
import com.liber.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TestServiceImpl implements TestService {
    @Autowired
    private TestMapper testMapper;
    @Override
    public List<Test> finAllTest() {
        return testMapper.finAllTest();
    }
}
