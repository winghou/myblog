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
@TableName("biz_comment")
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 被评论的文章或者页面的ID
     */
    private Long sid;

    /**
     * 评论人的ID
     */
    private Long userId;

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
     * 评论的状态
     */
    private String status;

    /**
     * 评论时的ip
     */
    private String ip;

    /**
     * 经度
     */
    private String lng;

    /**
     * 纬度
     */
    private String lat;

    /**
     * 评论时的地址
     */
    private String address;

    /**
     * 评论时的系统类型
     */
    private String os;

    /**
     * 评论时的系统的简称
     */
    private String osShortName;

    /**
     * 评论时的浏览器类型
     */
    private String browser;

    /**
     * 评论时的浏览器的简称
     */
    private String browserShortName;

    /**
     * 评论的内容
     */
    private String content;

    /**
     * 备注（审核不通过时添加）
     */
    private String remark;

    /**
     * 支持（赞）
     */
    private Integer support;

    /**
     * 反对（踩）
     */
    private Integer oppose;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
