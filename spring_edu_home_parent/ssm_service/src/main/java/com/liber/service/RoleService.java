package com.liber.service;

import com.liber.domain.Role;
import com.liber.domain.RoleMenuVo;

import java.util.List;

public interface RoleService {
    //查询角色列表(条件)
    List<Role> findAllRole(Role role);

    //根据ID查询角色关联菜单
    List<String> findMenuByRoleId(Integer roleId);

    //为角色分配菜单
    void roleContextMenu(RoleMenuVo vo);

    void deleteRole(Integer roleId);
}
