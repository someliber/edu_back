package com.liber.service;

import com.github.pagehelper.PageInfo;
import com.liber.domain.PromotionAd;
import com.liber.domain.PromotionAdVo;

public interface PromotionAdService {
    /*
    分页获取所有的广告列表
    */
    PageInfo findAllAdByPage(PromotionAdVo adVo);

    void savePromotionAd(PromotionAd promotionAd);
    void updatePromotionAd(PromotionAd promotionAd);
    /*
回显广告信息
*/
    PromotionAd findPromotionAdById(int id);

    void updatePromotionAdStatus(int id, int status);
}
