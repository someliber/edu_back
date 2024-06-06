package com.liber.dao;

import com.liber.domain.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    //查询所有父子菜单信息
    List<Menu>findSubMenusByPid(int pid);

    //查询菜单列表
    List<Menu> findAllMenu();

    Menu findMenuById(Integer id);

}
