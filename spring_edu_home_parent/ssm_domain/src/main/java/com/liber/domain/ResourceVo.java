package com.liber.domain;

public class ResourceVo {
    private Integer currentPag;
    private Integer pageSize;
    private String name;
    private int categoryId;
    private String url;

    public Integer getCurrentPag() {
        return currentPag;
    }

    public void setCurrentPag(Integer currentPag) {
        this.currentPag = currentPag;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "ResourceVo{" +
                "currentPag=" + currentPag +
                ", pageSize=" + pageSize +
                ", name='" + name + '\'' +
                ", categoryId=" + categoryId +
                ", url='" + url + '\'' +
                '}';
    }
}
