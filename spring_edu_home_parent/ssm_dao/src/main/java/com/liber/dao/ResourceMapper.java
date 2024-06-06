package com.liber.dao;

import com.liber.domain.Resource;
import com.liber.domain.ResourceVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResourceMapper {
    List<Resource> findAllResource(ResourceVo resourceVo);
}
