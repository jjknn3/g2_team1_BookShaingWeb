package com.demo.service.impl;

import com.demo.entity.Information;
import com.demo.mapper.InformationMapper;
import com.demo.service.InformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 消息Service接口实现类
 *
 
 * @company
 */
@Service("informationService")
public class InformationServiceImpl implements InformationService {

    @Resource
    private InformationMapper informationMapper;

    @Override
    public List<Information> list(Map<String, Object> map) {
        return informationMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return informationMapper.getTotal(map);
    }

    @Override
    public Integer add(Information information) {
        return informationMapper.add(information);
    }

    @Override
    public Integer update(Information information) {
        return informationMapper.update(information);
    }

    @Override
    public Integer deleteById(Integer id) {
        return informationMapper.deleteById(id);
    }
}
