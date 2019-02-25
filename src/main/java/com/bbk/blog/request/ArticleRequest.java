package com.bbk.blog.request;

import lombok.Data;
import lombok.ToString;

/**
 * @author ldd
 * @desc
 * @create 2019-02-23 21:03
 **/
@Data
@ToString
public class ArticleRequest {
    private String title;
    private String type;
    private String tags;
    private String content;
    private String status;
}
