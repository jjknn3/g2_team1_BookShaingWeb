package com.demo.service.impl;

import com.demo.entity.Link;
import com.demo.mapper.LinkMapper;
import com.demo.service.LinkService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 友情链接Service接口实现类
 */
@Service("linkService")
public class LinkServiceImpl implements LinkService {

    @Resource
    private LinkMapper linkMapper;

    @Override
    public List<Link> list(Map<String, Object> map) {
        return linkMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return linkMapper.getTotal(map);
    }

    @Override
    public Integer add(Link link) {
        return linkMapper.add(link);
    }

    @Override
    public Integer update(Link link) {
        return linkMapper.update(link);
    }

    @Override
    public Integer deleteById(Integer id) {
        return linkMapper.deleteById(id);
    }
}
