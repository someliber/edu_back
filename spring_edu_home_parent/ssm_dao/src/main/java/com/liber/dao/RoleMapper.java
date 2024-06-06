package com.liber.dao;

import com.liber.domain.Role;
import com.liber.domain.Role_menu_relation;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper {
    //查询角色列表(条件)
    List<Role> findAllRole(Role role);


    //根据角色ID查询菜单信息
    List<String> findMenuByRoleId(Integer roleId);

    //根据roleid清空中间表的关联关系
    void deleteRoleContextMenu(Integer rid);

    //为角色分配菜单信息
    void RoleContextMenu(Role_menu_relation role_menu_relation);

    //删除角色
    void deleteRole(Integer rid);
}
