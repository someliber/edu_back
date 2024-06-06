package com.liber.dao;

import com.liber.domain.PromotionAd;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PromotionAdMapper {
    //分页获取所有的广告列表
    List<PromotionAd> findAllAdByPage();

    void savePromotionAd(PromotionAd promotionAd);
    void updatePromotionAd(PromotionAd promotionAd);
    // 根据id查询广告信息
    PromotionAd findPromotionAdById(int id);

    void updatePromotionAdStatus(PromotionAd promotionAd);
}
