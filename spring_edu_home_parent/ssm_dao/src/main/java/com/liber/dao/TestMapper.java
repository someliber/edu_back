package com.liber.dao;

import com.liber.domain.Test;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface TestMapper {
    List<Test> finAllTest();
}
