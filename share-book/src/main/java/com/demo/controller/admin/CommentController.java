package com.demo.controller;

import com.demo.entity.Comment;
import com.demo.entity.User;
import com.demo.service.ArticleService;
import com.demo.service.ArticleTypeService;
import com.demo.service.CommentService;
import com.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * 评论Controller层
 *
 
 * @company
 */
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Resource
    private CommentService commentService;

    @Resource
    private ArticleService articleService;

    @Resource
    private ArticleTypeService articleTypeService;

    @Resource
    private UserService userService;

    /**
     * 
     *
     * @param content
     * @param articleId
     * @param session
     * @return
     */
    @RequestMapping("/add")
    public ModelAndView add(String content, Integer articleId, HttpSession session) {
        Comment comment = new Comment();
        User currentUser = (User) session.getAttribute("currentUser");
        comment.setUserId(currentUser.getId());
        comment.setArticleId(articleId);
        comment.setCommentContent(content);
        comment.setArticleAuthorId(articleService.findById(articleId).getUserId());
        commentService.add(comment);
        ModelAndView mav = new ModelAndView("redirect:/article/" + articleId);
        return mav;
    }

    /**
     * 
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    public ModelAndView delete(Integer id) {
        commentService.deleteById(id);
        ModelAndView mav = new ModelAndView("redirect:/toCommentManagePage");
        return mav;
    }
}
