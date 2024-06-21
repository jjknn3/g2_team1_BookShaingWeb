package com.demo.service;

import com.demo.entity.DownloadMessage;

import java.util.List;
import java.util.Map;

/**
 * 下载信息Service接口
 *
 
 * @company
 * 2021-01-10 20:39
 */
public interface DownloadMessageService {

    /**
     * 根据条件查询
     *
     * @param map
     * @return
     */
    List<DownloadMessage> list(Map<String, Object> map);

    /**
     * 获取记录数
     *
     * @param map
     * @return
     */
    Long getTotal(Map<String, Object> map);

    /**
     * 添加下载信息
     *
     * @param downloadMessage
     * @return
     */
    Integer add(DownloadMessage downloadMessage);

    /**
     * 根据id删除下载信息
     *
     * @param id
     * @return
     */
    Integer deleteById(Integer id);
}
