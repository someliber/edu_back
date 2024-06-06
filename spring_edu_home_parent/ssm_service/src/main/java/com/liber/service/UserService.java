package com.liber.service;

import com.github.pagehelper.PageInfo;
import com.liber.domain.ResponseResult;
import com.liber.domain.Role;
import com.liber.domain.User;
import com.liber.domain.UserVo;

import java.util.List;

public interface UserService {
    //查询所有用户
    PageInfo findAllUserByPage(UserVo userVo);

    //修改用户状态
    void updateUserStatus(int id, String status);

    //用户登录
    User login(User user) throws Exception;

    //分配角色回显功能
    List<Role>findUserRelationRoleByUserId(Integer id);

    //用户关联角色
    void userContextRole(UserVo vo);

    //获取用户权限，进行菜单动态展示
    ResponseResult getUserPermissions(Integer userId);
}
