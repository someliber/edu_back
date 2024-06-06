package com.liber.dao;

import com.liber.domain.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    //查询所有用户
    List<User> findAllUserByPage(UserVo userVo);

    //修改用户状态
    void updateUserStatus(@Param("id") int id, @Param("status") String status);

    //用户登录（根据用户名查询具体的用户信息）
    User login(User user);

    //根据用户ID清空中间表

    void deleteUserContextRole(Integer userId);
    //分配角色

    void userContextRole(User_Role_relation user_role_relation);

    //1.根据用户id查询关联角色信息
    List<Role>findUserRelationRoleById(Integer id);
    //2.根据角色ID，查询角色所拥有的父级菜单（-1）
    List<Menu>findParentMenuByRoleId(List<Integer>ids);
    //3.根据PID，查询子菜单信息
    List<Menu>findSubMenuPid(Integer pid);
    //4.获取用户拥有的资源权限信息
    List<Resource>findResourceByRoleId(List<Integer>ids);
    List<Resource>findResourceByRoleId1(List<Integer>ids);
    void test011();
    void test021();
    void test031();
    void test041();
    void test051();
    void test061();
    void test071();
}
