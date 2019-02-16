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
 * @since 2019-02-16
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_config")
public class Config implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 首页描述
     */
    private String homeDesc;

    /**
     * 首页关键字
     */
    private String homeKeywords;

    /**
     * 根域名
     */
    private String domain;

    /**
     * 管理系统的url
     */
    private String cmsUrl;

    /**
     * 网站地址
     */
    private String siteUrl;

    /**
     * 站点名称
     */
    private String siteName;

    /**
     * 站点描述
     */
    private String siteDesc;

    /**
     * 站点LOGO
     */
    private String siteFavicon;

    /**
     * 资源文件（js、css等的路径）
     */
    private String staticWebSite;

    /**
     * 站长名称
     */
    private String authorName;

    /**
     * 站长邮箱
     */
    private String authorEmail;

    /**
     * 微信二维码地址
     */
    private String wxCode;

    /**
     * QQ
     */
    private String qq;

    /**
     * 微博
     */
    private String weibo;

    /**
     * github
     */
    private String github;

    /**
     * 是否开启维护通知
     */
    private Boolean maintenance;

    /**
     * 系统维护时间
     */
    private LocalDateTime maintenanceData;

    /**
     * 是否开启评论
     */
    private Boolean comment;

    /**
     * 七牛路径
     */
    private String qiuniuBasePath;

    /**
     * 七牛ACCESS_KEY
     */
    private String qiniuAccessKey;

    /**
     * 七牛SECRET_KEY
     */
    private String qiniuSecretKey;

    /**
     * 七牛BUCKET_NAME
     */
    private String qiniuBucketName;

    /**
     * 百度推送的token
     */
    private String baiduPushToken;

    /**
     * 微信赞赏码
     */
    private String wxPraiseCode;

    /**
     * 支付宝赞赏码
     */
    private String zfbPraiseCode;

    /**
     * 百度api授权AK(获取地址：http://lbsyun.baidu.com/apiconsole/key)
     */
    private String baiduApiAk;

    /**
     * 添加时间
     */
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    private LocalDateTime updateTime;


}
