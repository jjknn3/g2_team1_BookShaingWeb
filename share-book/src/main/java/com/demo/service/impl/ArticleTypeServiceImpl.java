package com.demo.service.impl;

import com.demo.entity.ArticleType;
import com.demo.mapper.ArticleTypeMapper;
import com.demo.service.ArticleTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 文章类型Service接口实现类
 *
 
 * 
 */
@Service("articleTypeService")
public class ArticleTypeServiceImpl implements ArticleTypeService {

    @Resource
    private ArticleTypeMapper articleTypeMapper;

    @Override
    public List<ArticleType> list(Map<String, Object> map) {
        return articleTypeMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return articleTypeMapper.getTotal(map);
    }

    @Override
    public Integer add(ArticleType articleType) {
        return articleTypeMapper.add(articleType);
    }

    @Override
    public Integer update(ArticleType articleType) {
        return articleTypeMapper.update(articleType);
    }

    @Override
    public ArticleType findById(Integer id) {
        return articleTypeMapper.findById(id);
    }

    @Override
    public Integer deleteById(Integer id) {
        return articleTypeMapper.deleteById(id);
    }

    @Override
    public List<ArticleType> findByName(String name) {
        return articleTypeMapper.findByName(name);
    }
}
