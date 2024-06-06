package com.liber.controller;

import com.liber.domain.Menu;
import com.liber.domain.ResponseResult;
import com.liber.domain.Role;
import com.liber.domain.RoleMenuVo;
import com.liber.service.MenuService;
import com.liber.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;
    @Autowired
    private MenuService menuService;

    @RequestMapping("/findAllRole")
    public ResponseResult findAllUserByPage(@RequestBody Role role){
        List<Role> allRole = roleService.findAllRole(role);
        ResponseResult responseResult = new ResponseResult(true,200,"响应成功",allRole);
        return responseResult;
    }
    //查询所有的父子菜单信息
    @RequestMapping("/findAllMenu")
    public ResponseResult findSubMenuListByPid(){
        List<Menu> menuList = menuService.findSubMenusByPid(-1);
        HashMap<Object, Object> map = new HashMap<>();
        map.put("parentMenuList", menuList);
        return new ResponseResult(true,200,"查询所有的父子菜单成功",map);
    }
    /**
     * 查询角色关联菜单列表ID
     * */
    @RequestMapping("/findMenuByRoleId")
    public ResponseResult findMenuByRoleId(Integer roleId){
        List<String> menuList = roleService.findMenuByRoleId(roleId);
        ResponseResult result = new ResponseResult(true,200,"响应成功",menuList);
        return result;
    }
    //用户关联菜单 {roleId: 4, menuIdList: [19, 20, 7, 8, 9, 15, 16, 17, 18]}
    @RequestMapping("/RoleContextMenu")
    public ResponseResult RoleContextMenu(@RequestBody RoleMenuVo roleMenuVo){
        roleService.roleContextMenu(roleMenuVo);
        ResponseResult result = new ResponseResult(true,200,"响应成功","");
        return result;
    }
    //删除角色
    @RequestMapping("/deleteRole")
    public ResponseResult deleteRole(Integer roleId){
        roleService.deleteRole(roleId);
        return new ResponseResult(true,200,"删除角色成功!",null);
    }
}
