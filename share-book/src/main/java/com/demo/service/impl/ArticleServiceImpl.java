package com.demo.service.impl;

import com.demo.entity.Article;
import com.demo.entity.DownFile;
import com.demo.mapper.ArticleMapper;
import com.demo.service.ArticleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 文章Service接口
 *
 
 * 
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleMapper articleMapper;

    @Override
    public List<Article> list(Map<String, Object> map) {
        return articleMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return articleMapper.getTotal(map);
    }

    @Override
    public Integer add(Article article) {
        return articleMapper.add(article);
    }

    @Override
    public Integer update(Article article) {
        return articleMapper.update(article);
    }

    @Override
    public Integer deleteById(Integer id) {
        return articleMapper.deleteById(id);
    }

    @Override
    public Article findById(Integer id) {
        return articleMapper.findById(id);
    }

    @Override
    public List<DownFile> selectResource(String userId){
        return articleMapper.selectDownResource(userId);
    }
}
