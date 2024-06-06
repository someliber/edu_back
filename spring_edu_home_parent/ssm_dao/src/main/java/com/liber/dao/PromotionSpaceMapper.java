package com.liber.dao;

import com.liber.domain.PromotionSpace;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PromotionSpaceMapper {
    //获取所有的广告位
    List<PromotionSpace> findAllPromotionSpace();

    //添加广告位
    void savePromotionSpace(PromotionSpace promotionSpace);
    //修改广告位
    void updatePromotionSpace(PromotionSpace promotionSpace);

    //根据id 查询广告位信息
    PromotionSpace findPromotionSpaceById(int id);
}
