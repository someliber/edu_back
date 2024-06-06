package com.liber.service.impl;

import com.liber.dao.RoleMapper;
import com.liber.domain.Role;
import com.liber.domain.RoleMenuVo;
import com.liber.domain.Role_menu_relation;
import com.liber.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public List<Role> findAllRole(Role role) {
        return roleMapper.findAllRole(role);
    }

    @Override
    public List<String> findMenuByRoleId(Integer roleId) {
        return  roleMapper.findMenuByRoleId(roleId);
    }

    @Override
    public void roleContextMenu(RoleMenuVo vo) {
        //1.清空中间表的关联表关系
        roleMapper.deleteRoleContextMenu(vo.getRoleId());

        //2.为角色分配菜单
        vo.getMenuIdList().stream().forEach(integer -> {
            Role_menu_relation relation = new Role_menu_relation();
            relation.setMenuId(integer);
            relation.setRoleId(vo.getRoleId());

            Date date = new Date();
            relation.setCreatedTime(date);
            relation.setUpdatedTime(date);
            relation.setCreatedBy("system");
            relation.setUpdatedby("system");

            roleMapper.RoleContextMenu(relation);
        }
        );
    }

    @Override
    public void deleteRole(Integer roleId) {
        //调用根据roleid清空中间表关联关系
        roleMapper.deleteRoleContextMenu(roleId);
        //再删除
        roleMapper.deleteRole(roleId);
    }
}
