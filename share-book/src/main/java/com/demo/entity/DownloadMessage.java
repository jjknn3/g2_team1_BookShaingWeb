package com.demo.entity;

import java.util.Date;

/**
 * 下载信息
 *
 
 *
 */
public class DownloadMessage {

    /**
     * 编号
     */
    private Integer id;
    /**
     * 下载者id
     */
    private Integer userId;
    /**
     * 下载者实体
     */
    private User user;
    /**
     * 资源id
     */
    private Integer articleId;
    /**
     * 资源实体
     */
    private Article article;
    /**
     * 下载信息
     */
    private String message;
    /**
     * 下载时间
     */
    private Date downloadDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDownloadDate() {
        return downloadDate;
    }

    public void setDownloadDate(Date downloadDate) {
        this.downloadDate = downloadDate;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
