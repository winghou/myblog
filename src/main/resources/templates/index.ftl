<#include "include/macros.ftl">
<@header title="Blog小站">

    <link rel="stylesheet" href="/css/index.css">
</@header>
<div class="blog-body">
    <div class="layui-container">
        <div class="blog-banner">
            <i class="fa fa-volume-up" style="color:#007769">&nbsp;&nbsp;</i>
            <a href="#banner">This is a Bannner</a>
        </div>
        <div class="layui-row layui-col-space20">
            <div class="layui-col-lg8 ">
                <div class="blog-carousel">

                    <div class="layui-carousel" id="carousel" style="height: 280px;">
                        <div carousel-item>
                            <a href="#">
                                <img src="/images/item1.jpg" alt="none">
                            </a>
                            <div><a href="#">
                                <img src="/images/item2.jpg" alt="none">
                            </a></div>
                            <div><a href="#">
                                <img src="/images/item3.jpg" alt="none">
                            </a></div>
                        </div>
                    </div>
                </div>
                <#list articles as article>

                <article class="blog-article">
                    <div class="thumbnail">
                        <a href="#img">
                            <img src="/images/20181024185055343.jpg" alt="none">
                        </a>
                        <span class="cata"><a href="#cata">
                            Java
                        </a></span>
                    </div>
                    <div class="article-header">
                        <h1 class="layui-elip"><a href="/article/${article.id}">
                            ${article.title}
                        </a></h1>
                    </div>
                    <div class="article-content ">
                        ${article.title}
                    </div>
                    <span class="article-meta">
                        <i class="layui-icon layui-icon-date"></i>
                        <span class="inl">${article.createTime}</span>&nbsp;&nbsp;
                        <i class="fa fa-eye" aria-hidden="true"></i>
                        <span>浏览(20)</span>&nbsp;&nbsp;
                        <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>评论(0)</span>
                    </span>
                    <span class="readArt">
                        <a href="#read" style="color: #ffffff;">阅读全文</a>
                    </span>

                </article>
                </#list>
                <div id="pagination"></div>

            </div>

            <div class="layui-col-lg4 ">
                <!--<div style="height: 5px;"></div>-->
                <div class="layui-row">

                    <div class="blog-owner bg-white">
                        <div class="layui-col-lg4">

                            <div class="head-photo text-center">
                                <a href="#img">
                                    <img src="/images/20181024185055343.jpg" alt="none">
                                </a>

                            </div>
                        </div>
                        <div class="layui-col-lg8 blog-owner-info">
                            <h1>LinDD</h1>
                            <p>一个程序员的个人博客，心之所向，无所不能一个程序员的个人博客，心之所向，无所不能一个程序员的个人博客，心之所向，无所不能</p>
                        </div>
                        <div class="layui-clear"></div>
                        <ul class="social ">
                            <li><a href="#social-weixin" class="weixin-icon ">
                                <i class="fa fa-weixin fa-2x" aria-hidden="true"></i>
                            </a></li>
                            <li><a href="#social-qq " class="qq-icon">
                                <i class="fa fa-qq fa-2x" aria-hidden="true"></i>
                            </a></li>
                            <li><a href="#social-weibo" class="weibo-icon">
                                <i class="fa fa-weibo fa-2x" aria-hidden="true"></i>
                            </a></li>
                            <li><a href="#social-github " class="github-icon">
                                <i class="fa fa-github fa-2x" aria-hidden="true"></i>
                            </a></li>
                        </ul>
                    </div>
                </div>
                <!--标签云-->
                <div class="blog-panel blog-tag bg-white">
                    <div class="panel-title">
                        <h5>
                            <i class="fa fa-tags" aria-hidden="true"></i>
                            <span class="font-strong">文章标签</span>
                        </h5>
                        <hr>

                    </div>
                    <div class="tag-body">
                        <div class="tag-content">
                            <#list tags as tag>

                            <a href="#tag" class="border-gray">${tag.name}</a>
                            </#list>
                        </div>
                    </div>

                </div>
                <!--文章列表-->
                <div class="blog-panel article-list">
                    <div class="layui-tab">
                        <ul class="layui-tab-title">
                            <li class="layui-this"><i class="fa fa-th-list"></i> 网站设置</li>
                            <li><i class="fa fa-thumbs-o-up"></i> 用户管理</li>
                            <li><i class="fa fa-hand-peace-o"></i> 权限分配</li>
                        </ul>
                        <div class="layui-tab-content">
                            <div class="layui-tab-item layui-show">
                                <ul class="article-list">
                                    <li>
                                        <a href="#" class="layui-elip">Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="layui-tab-item">内容2</div>
                            <div class="layui-tab-item">内容3</div>
                        </div>
                    </div>
                </div>
                <!--博客信息-->
                <div class="blog-panel">
                    <div class="panel-title">
                        <h5>
                            <i class="fa fa-info-circle"></i>
                            <span class="font-strong">博客信息</span>
                        </h5>
                        <hr>
                        <ul class="info-list">
                            <li>
                                <i class="fa fa-file"></i>&nbsp;
                                <span>文章总数：&nbsp; ${articles?size} 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-tags"></i>&nbsp;
                                <span>标签总数：&nbsp; ${tags?size} 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-folder-open"></i>&nbsp;
                                <span>分类总数：&nbsp; ${types?size} 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-comment"></i>&nbsp;
                                <span>留言数量：&nbsp; 124 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-calendar-times-o"></i>&nbsp;
                                <span>运行天数：&nbsp; 124 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-pencil-square"></i>&nbsp;
                                <span>最后更新：&nbsp; 124 篇</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@footer>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'carousel', 'laypage'], function () {
        var element = layui.element
                , carousel = layui.carousel
                , laypage = layui.laypage;
        carousel.render({
            elem: '#carousel',
            width: '100%',
            arrow: 'always'
        });
        laypage.render({
            elem: 'pagination',
            count: 50
        });

        //…
    });
</script>

</@footer>
