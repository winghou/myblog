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
public class Link implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 链接地址
     */
    private String url;

    /**
     * 链接名
     */
    private String name;

    /**
     * 链接介绍
     */
    private String description;

    /**
     * 友链站长邮箱
     */
    private String email;

    /**
     * 友链站长QQ
     */
    private String qq;

    private String favicon;

    /**
     * 状态
     */
    private Boolean status;

    /**
     * 是否首页显示
     */
    private Boolean homePageDisplay;

    /**
     * 备注
     */
    private String remark;

    /**
     * 来源：管理员添加、自动申请
     */
    private String source;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
