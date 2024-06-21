package com.demo.service;

import com.demo.entity.Link;

import java.util.List;
import java.util.Map;

/**
 * 友情链接Service接口
 */
public interface LinkService {

    /**
     * 条件查询
     */
    List<Link> list(Map<String, Object> map);

    /**
     * 获取记录数
     */
    Long getTotal(Map<String, Object> map);

    /**
     * 添加友情链接
     */
    Integer add(Link link);

    /**
     * 修改友情链接
     */
    Integer update(Link link);

    /**
     * 根据id删除友情链接
     */
    Integer deleteById(Integer id);
}
