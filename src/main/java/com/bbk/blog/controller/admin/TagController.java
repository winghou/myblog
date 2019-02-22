package com.bbk.blog.controller.admin;

import com.bbk.blog.entity.Tag;
import com.bbk.blog.entity.Type;
import com.bbk.blog.service.TagService;
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
 * @Auther: mingweilin
 * @Date: 2019/2/22 19:23
 * @Description:
 */
@Controller
@RequestMapping(value = "/tag")
public class TagController {
    @Autowired
    TagService tagService;

    @GetMapping("/all")
    @ResponseBody
    public List<Map<String,String>> all() {
        List<Tag> tags = tagService.list(null);
        List<Map<String,String>> selectData = new ArrayList<>();
        for (Tag tag : tags) {
            Map<String, String> map = new HashMap<>();
            map.put("name",tag.getName());
            map.put("value",tag.getId().toString());
            map.put("selected","");
            map.put("disabled","");
            selectData.add(map);
        }
        return selectData;

    }
}
