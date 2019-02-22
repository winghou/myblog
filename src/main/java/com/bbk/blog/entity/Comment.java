package com.bbk.blog.entity;

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
 * @since 2019-02-22
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 被评论的文章或者页面的ID
     */
    private Long aid;

    /**
     * 评论人的ID
     */
    private Long uid;

    /**
     * 父级评论的id
     */
    private Long pid;

    /**
     * 评论人的QQ（未登录用户）
     */
    private String qq;

    /**
     * 评论人的昵称（未登录用户）
     */
    private String nickname;

    /**
     * 评论人的头像地址
     */
    private String avatar;

    /**
     * 评论人的邮箱地址（未登录用户）
     */
    private String email;

    /**
     * 评论人的网站地址（未登录用户）
     */
    private String url;

    /**
     * 评论时的ip
     */
    private String ip;

    /**
     * 评论时的浏览器类型
     */
    private String browser;

    /**
     * 评论的内容
     */
    private String content;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
