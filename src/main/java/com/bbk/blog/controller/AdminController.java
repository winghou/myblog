package com.bbk.blog.controller;

import com.bbk.blog.entity.BizArticle;
import com.bbk.blog.entity.BizTags;
import com.bbk.blog.entity.BizType;
import com.bbk.blog.service.IBizArticleService;
import com.bbk.blog.service.IBizTagsService;
import com.bbk.blog.service.IBizTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    IBizArticleService articleService;
    @Autowired
    IBizTagsService tagsService;
    @Autowired
    IBizTypeService typeService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(ModelMap map){

        return "admin/index";
    }

}
