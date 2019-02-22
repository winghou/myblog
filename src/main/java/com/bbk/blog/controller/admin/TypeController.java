package com.bbk.blog.controller.admin;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.bbk.blog.entity.Type;
import com.bbk.blog.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ldd
 * @desc
 * @create 2019-02-16 21:34
 **/
@Controller
@RequestMapping(value = "/type")
public class TypeController {
    @Autowired
    TypeService typeService;

    @GetMapping(value = "/all")
    @ResponseBody
    public List<Type> getCatas() {
        List<Type> types = typeService.list(new QueryWrapper<Type>().isNotNull("pid"));
        return types;

    }

}
