package com.bbk.blog.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.bbk.blog.mapper")
public class MyBatisConfig {

}
