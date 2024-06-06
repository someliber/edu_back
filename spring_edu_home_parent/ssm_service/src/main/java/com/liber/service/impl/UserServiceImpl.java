package com.liber.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liber.dao.UserMapper;
import com.liber.domain.*;
import com.liber.service.UserService;
import com.liber.utilts.Md5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public PageInfo findAllUserByPage(UserVo userVo) {
        PageHelper.startPage(userVo.getCurrentPage(),userVo.getPageSize());
        List<User> allUserByPage = userMapper.findAllUserByPage(userVo);
        PageInfo<User>pageInfo = new PageInfo(allUserByPage);
        return pageInfo;
    }

    @Override
    public void updateUserStatus(int id, String status) {
        userMapper.updateUserStatus(id,status);
    }

    @Override
    public User login(User user) throws Exception {
        //1.调用mapper方法  user2：包含了密文密码
        User user2 = userMapper.login(user);
        if(user2!=null&&Md5.verify(user.getPassword(),Md5.md5key,user2.getPassword())){
            return user2;
        }
        return null;
    }

    @Override
    public List<Role> findUserRelationRoleByUserId(Integer id) {
        return userMapper.findUserRelationRoleById(id);
    }

    @Override
    public void userContextRole(UserVo vo) {
        //1.根据用户id清空关联表关系
        userMapper.deleteUserContextRole(vo.getUserId());
        //2.再从新建立关联关系
        List<Integer> list = vo.getRoleIdList();
        for(Integer roleId:list){
            User_Role_relation user_role_relation = new User_Role_relation();
            user_role_relation.setRoleId(roleId);
            user_role_relation.setUserId(vo.getUserId());
            Date date= new Date();
            user_role_relation.setCreatedTime(date);
            user_role_relation.setUpdatedTime(date);
            user_role_relation.setCreatedBy("system");
            user_role_relation.setUpdatedby("system");
            userMapper.userContextRole(user_role_relation);
        }
    }

    @Override
    public ResponseResult getUserPermissions(Integer userId) {
        //1.获取当前用户拥有的角色
        List<Role> roleList = userMapper.findUserRelationRoleById(userId);
        //2.获取角色id保存到list集合中
        ArrayList<Integer>roleIds=new ArrayList<>();
        for(Role role:roleList){
            roleIds.add(role.getId());
        }
        //3.根据角色id查询父菜单
        List<Menu> parentMenu = userMapper.findParentMenuByRoleId(roleIds);
        //4.查询父菜单关联的子菜单
        for(Menu menu:parentMenu){
            List<Menu> subMenuPid = userMapper.findSubMenuPid(menu.getId());
            menu.setChildren(subMenuPid);
        }
        //5.获取资源信息
        List<Resource> resourceList = userMapper.findResourceByRoleId(roleIds);

        //6.封装数据并返回
        Map<String, Object> map = new HashMap<>();
        map.put("menuList", parentMenu);
        map.put("resourceList", resourceList);
        return new ResponseResult(true,200,"获取用户权限信息成功",map);
    }
}
