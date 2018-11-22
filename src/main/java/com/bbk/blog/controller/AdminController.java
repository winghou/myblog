package com.bbk.blog.controller;

import com.bbk.blog.service.IArticleService;
import com.bbk.blog.service.ITagsService;
import com.bbk.blog.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    IArticleService articleService;
    @Autowired
    ITagsService tagsService;
    @Autowired
    ITypeService typeService;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(ModelMap map){

        return "admin/index";
    }

}
