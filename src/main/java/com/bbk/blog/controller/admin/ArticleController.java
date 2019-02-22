package com.bbk.blog.controller.admin;

import com.bbk.blog.entity.Article;
import com.bbk.blog.service.ArticleService;
import com.bbk.blog.utils.ResultMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @PostMapping(value = "/publish")
    @ResponseBody
    public ResultMsg publishArticle(@RequestParam("title") String title,
                                    @RequestParam("cata") String type,
                                    @RequestParam("tags") String tags,
                                    @RequestParam("content") String content_md
                                    ) {
        Article article = new Article();
//        article.setContentMd(content_md);
        article.setTitle(title);
        System.out.println("title:"+title);
        System.out.println("cata:"+type);
        System.out.println("tags:"+tags);
        System.out.println("content:"+content_md);
        return new ResultMsg("success");

    }
}
