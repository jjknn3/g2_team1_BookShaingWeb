package com.demo.service;

import com.demo.entity.Information;

import java.util.List;
import java.util.Map;

/**
 * 消息Service接口
 *
 
 *
 */
public interface InformationService {

    /**
     * 根据条件查询
     *
     * @param map
     * @return
     */
    List<Information> list(Map<String, Object> map);

    /**
     * 获取记录数
     *
     * @param map
     * @return
     */
    Long getTotal(Map<String, Object> map);

    /**
     * 添加消息
     *
     * @param information
     * @return
     */
    Integer add(Information information);

    /**
     * 修改消息
     *
     * @param information
     * @return
     */
    Integer update(Information information);

    /**
     * 根据id删除消息
     *
     * @param id
     * @return
     */
    Integer deleteById(Integer id);
}
