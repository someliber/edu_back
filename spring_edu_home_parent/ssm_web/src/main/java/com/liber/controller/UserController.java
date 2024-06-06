package com.liber.controller;


import com.github.pagehelper.PageInfo;
import com.liber.domain.ResponseResult;
import com.liber.domain.Role;
import com.liber.domain.User;
import com.liber.domain.UserVo;
import com.liber.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/findAllUserByPage")
    public ResponseResult findAllUserByPage(@RequestBody UserVo userVo){
        PageInfo pageInfo = userService.findAllUserByPage(userVo);
        ResponseResult responseResult = new ResponseResult(true,200,"响应成功",pageInfo);
        return responseResult;
    }
    /**
     * 修改用户状态
     * ENABLE能登录，DISABLE不能登录
     * */
    @RequestMapping("/updateUserStatus")
    public ResponseResult updateUserStatus(@RequestParam int id , @RequestParam String status){
        if("ENABLE".equalsIgnoreCase(status)){
            status = "DISABLE";
        }else{
            status = "ENABLE";
        }
        userService.updateUserStatus(id,status);
        ResponseResult responseResult = new ResponseResult(true,200,"响应成功",status);
        return responseResult;
    }
    //用户登录
    @RequestMapping("/login")
    public ResponseResult login(User user, HttpServletRequest request) throws Exception {
        User user1 = userService.login(user);
        if(user1!=null){
            //保存用户id及access_token到session中
            HttpSession session = request.getSession();
            String  access_token= UUID.randomUUID().toString();
            session.setAttribute("access_token",access_token);
            session.setAttribute("user_id",user1.getId());
            //将响应信息封装给前台
            Map<String, Object> map = new HashMap<>();
            map.put("access_token",access_token);
            map.put("user_id",user1.getId());
            return new ResponseResult(true,200,"登录成功！",map);
        }else{
            return  new ResponseResult(true,400,"用户名或密码错误",null);
        }
    }
    //分配角色回显
    @RequestMapping("/findUserRoleById")
    public ResponseResult findUserRoleById(Integer id){
        List<Role> roleList = userService.findUserRelationRoleByUserId(id);
        return new ResponseResult(true,200,"分配角色回显成功",roleList);
    }

    //分配角色
    @RequestMapping("/userContextRole")
    public ResponseResult userContextRole(@RequestBody UserVo vo){
        userService.userContextRole(vo);
        return new ResponseResult(true,200,"分配角色成功",null);
    }
    //获取用户权限，进行菜单动态显示
    @RequestMapping("/getUserPermissions")
    public ResponseResult getUserPermissions(HttpServletRequest request){
        //1.获取请求头中的token
        String head_token = request.getHeader("Authorization");
        //2.获取session中token
        String session_token =(String)request.getSession().getAttribute("access_token");
        //3.判断token是否一致
        if(head_token.equals(session_token)){
            //获取用户id
            Integer id =(Integer) request.getSession().getAttribute("user_id");
            System.out.println(id);
            //调用service进行菜单查询
            ResponseResult userPermissions = userService.getUserPermissions(id);
            return userPermissions;
        }else {
            return new ResponseResult(false,400,"获取菜单信息失败",null);
        }
    }
}