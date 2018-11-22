package com.bbk.blog;

import com.bbk.blog.entity.Type;
import com.bbk.blog.mapper.TypeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BlogApplicationTests {
    @Autowired
    TypeMapper typeMapper;

    @Test
    public void contextLoads() {
        List<Type> types = typeMapper.getTypes();
        for (Type t:
             types) {
            System.out.println(t);
        }

    }

}
