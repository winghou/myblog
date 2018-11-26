package com.bbk.blog.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;
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
@TableName("sys_user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String username;

    /**
     * 登录密码
     */
    private String password;

    /**
     * 昵称
     */
    private String nickname;

    /**
     * 手机号
     */
    private String mobile;

    /**
     * 邮箱地址
     */
    private String email;

    /**
     * QQ
     */
    private String qq;

    /**
     * 生日
     */
    private LocalDate birthday;

    /**
     * 性别
     */
    private Integer gender;

    /**
     * 头像地址
     */
    private String avatar;

    /**
     * 超级管理员、管理员、普通用户
     */
    private String userType;

    /**
     * 公司
     */
    private String company;

    /**
     * 个人博客地址
     */
    private String blog;

    /**
     * 地址
     */
    private String location;

    /**
     * 用户来源(默认ZHYD=本网站注册用户)
     */
    private String source;

    /**
     * 隐私（1：公开，0：不公开）
     */
    private Integer privacy;

    /**
     * 通知：(1：通知显示消息详情，2：通知不显示详情)
     */
    private Integer notification;

    /**
     * 金币值
     */
    private Integer score;

    /**
     * 经验值
     */
    private Integer experience;

    /**
     * 注册IP
     */
    private String regIp;

    /**
     * 最近登录IP
     */
    private String lastLoginIp;

    /**
     * 最近登录时间
     */
    private LocalDateTime lastLoginTime;

    /**
     * 登录次数
     */
    private Integer loginCount;

    /**
     * 用户备注
     */
    private String remark;

    /**
     * 用户状态
     */
    private Integer status;

    /**
     * 注册时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
