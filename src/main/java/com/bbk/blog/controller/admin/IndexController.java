package com.bbk.blog.controller.admin;

import com.bbk.blog.service.ArticleService;
import com.bbk.blog.service.TagsService;
import com.bbk.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class IndexController {
    @Autowired
    ArticleService articleService;
    @Autowired
    TagsService tagsService;
    @Autowired
    TypeService typeService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(ModelMap map){

        return "admin/index";
    }

    @GetMapping(value = "/article")
    public String main() {
        return "admin/article";
    }

}
