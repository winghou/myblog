package com.bbk.blog.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author ldd
 * @since 2018-11-22
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_log")
public class Log implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 已登录用户ID
     */
    private Long userId;

    /**
     * 日志类型（系统操作日志，用户访问日志，异常记录日志）
     */
    private String type;

    /**
     * 日志级别
     */
    private String logLevel;

    /**
     * 日志内容（业务操作）
     */
    private String content;

    /**
     * 爬虫类型（当访问者被鉴定为爬虫时该字段表示爬虫的类型）
     */
    private String spiderType;

    /**
     * 操作用户的ip
     */
    private String ip;

    /**
     * 操作用户的user_agent
     */
    private String ua;

    /**
     * 评论时的系统类型
     */
    private String os;

    /**
     * 评论时的浏览器类型
     */
    private String browser;

    /**
     * 请求的路径
     */
    private String requestUrl;

    /**
     * 请求来源地址
     */
    private String referer;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
