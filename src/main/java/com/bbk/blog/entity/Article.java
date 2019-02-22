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
public class Article implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 文章标题
     */
    private String title;

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 文章内容
     */
    private String content;

    /**
     * 类型
     */
    private Long typeId;

    /**
     * 状态
     */
    private Boolean status;

    /**
     * 是否推荐
     */
    private Boolean recommended;

    /**
     * 文章关键字，优化搜索
     */
    private String keywords;

    /**
     * 是否开启评论
     */
    private Boolean comment;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
