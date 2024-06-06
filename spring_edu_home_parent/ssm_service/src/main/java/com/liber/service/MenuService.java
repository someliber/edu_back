package com.liber.service;

import com.liber.domain.Menu;

import java.util.List;

public interface MenuService {
    //查询所有父子菜单信息
    List<Menu> findSubMenusByPid(int pid);

    List<Menu> findAllMenu();

    Menu findMenuById(Integer id);
}
