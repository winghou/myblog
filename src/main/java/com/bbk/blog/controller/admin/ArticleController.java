package com.bbk.blog.controller.admin;

import com.bbk.blog.entity.Article;
import com.bbk.blog.entity.ArticleTag;
import com.bbk.blog.request.ArticleRequest;
import com.bbk.blog.service.ArticleService;
import com.bbk.blog.service.ArticleTagService;
import com.bbk.blog.utils.ResultMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;


/**
 * @author ldd
 * @desc
 * @create 2019-02-18 21:41
 **/
@RequestMapping(value = "/article")
@Controller
public class ArticleController {
    @Autowired
    ArticleService articleService;
    @Autowired
    ArticleTagService articleTagService;

    @PostMapping(value = "/publish")
    @ResponseBody
    public ResultMsg publishArticle(ArticleRequest request) {
        if (request == null) {
            return ResultMsg.failed();
        }
        System.out.println(request.toString());
        Article article = new Article();
        article.setTitle(request.getTitle());
        article.setTypeId(Long.valueOf(request.getType()));
        article.setContent(request.getContent());
        article.setStatus(request.getStatus().equals(1));
        article.setUserId((long) 1);
        boolean result = articleService.save(article);
        System.out.println(article.getId());
        String[] tagIds = request.getTags().split(",");
        if (tagIds != null && tagIds.length != 0) {
            for (int i = 0; i < tagIds.length; i++) {
                articleTagService.save(new ArticleTag(article.getId(), Long.valueOf(tagIds[i])));
            }
        }
        if (result) {
            return ResultMsg.success();

        }else {
            return ResultMsg.failed();
        }

    }
}
