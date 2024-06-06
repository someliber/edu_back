package com.liber.service;

import com.github.pagehelper.PageInfo;
import com.liber.domain.Resource;
import com.liber.domain.ResourceVo;

import java.util.List;

public interface ResourceService {
    PageInfo<Resource> findAllResource(ResourceVo resourceVo);
}
