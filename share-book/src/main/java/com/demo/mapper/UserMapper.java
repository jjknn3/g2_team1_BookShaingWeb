package com.demo.mapper;

import com.demo.entity.User;

import java.util.List;
import java.util.Map;

/**
 * 用户Mapper接口
 *
 
 * @company
 * 2021-01-02 0:34
 */
public interface UserMapper {

    /**
     * 分页分条件查询用户
     *
     * @param map
     * @return
     */
    List<User> list(Map<String, Object> map);

    /**
     * 获取记录数
     *
     * @param map
     * @return
     */
    Long getTotal(Map<String, Object> map);

    /**
     * 添加用户
     *
     * @param user
     * @return
     */
    Integer add(User user);

    /**
     * 更新用户信息
     *
     * @param user
     * @return
     */
    Integer update(User user);

    /**
     * 根据id删除用户信息
     *
     * @param id
     * @return
     */
    Integer deleteById(Integer id);

    /**
     * 根据用户名查询用户信息
     *
     * @param userName
     * @return
     */
    User findByUserName(String userName);

    /**
     * 根据id查询用户
     *
     * @param id
     * @return
     */
    User findById(Integer id);

    /**
     * 根据邮箱查找用户
     *
     * @param email
     * @return
     */
    User findByEmail(String email);

    /**
     * 根据用户名称搜索用户
     *
     * @param userName
     * @return
     */
    List<User> findByName(String userName);
}
