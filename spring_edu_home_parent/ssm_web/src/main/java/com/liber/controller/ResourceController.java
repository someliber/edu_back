package com.liber.controller;


import com.github.pagehelper.PageInfo;
import com.liber.domain.Resource;
import com.liber.domain.ResourceVo;
import com.liber.domain.ResponseResult;
import com.liber.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/resource")
public class ResourceController {
    @Autowired
    private ResourceService resourceService;

    /**
     * 分页与条件查询
     * */
    @RequestMapping("/findAllResource")
    public ResponseResult findAllResource(@RequestBody ResourceVo resourceVo) {
        PageInfo<Resource> resource = resourceService.findAllResource(resourceVo);
        return new ResponseResult(true,200,"响应成功",resource);
    }
}
