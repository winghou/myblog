package com.bbk.blog.controller;

import com.bbk.blog.entity.Article;
import com.bbk.blog.entity.Tags;
import com.bbk.blog.entity.Type;
import com.bbk.blog.service.ArticleService;
import com.bbk.blog.service.TagsService;
import com.bbk.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    ArticleService articleService;
    @Autowired
    TagsService tagsService;
    @Autowired
    TypeService typeService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(ModelMap map){
        List<Article> articles = articleService.list(null);
        List<Type> types = typeService.selectTypesWithNodes();
        List<Tags> tags = tagsService.list(null);
        map.put("articles",articles);
        map.put("types",types);
        map.put("tags",tags);

        return "index";
    }

}
