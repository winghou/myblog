package com.bbk.blog.controller.admin;

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
@RequestMapping(value = "/admin/catalog")
public class CatalogController {
    @Autowired
    TypeService typeService;

    @GetMapping(value = "/all")
    @ResponseBody
    List<Map<String,String>> getCatas() {
        List<Type> types = typeService.list(null);
        List<Map<String,String>> selectData = new ArrayList<>();
        for (Type type : types) {
            Map<String, String> map = new HashMap<>();
            map.put("name",type.getName());
            map.put("value",type.getId().toString());
            map.put("selected","");
            map.put("disabled","");
            selectData.add(map);
        }
        return selectData;

    }

}
