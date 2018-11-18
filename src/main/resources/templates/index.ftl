<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--<link rel="stylesheet" href="/plugin/layui/css/layui.css">-->
    <!--<link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">-->

    <!--<link rel="stylesheet" href="/css/index.css">-->
    <!--<script src="/plugin/layui/layui.js"></script>-->
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/index.css">
    <script src="/plugin/layui/layui.js"></script>

    <title>Blog小站</title>
</head>
<body class="layui-bg-gray">
<header>
    <div class="blog-header">
        <div class="brand">
            <h1 class=" pull-left">
                <i class="layui-icon layui-icon-tree" style="font-size: 30px; color: #009688;"></i>
                <a href="#home" class="brand-title">Bolg小站</a>
            </h1>
        </div>
        <div class="">
            <div class="pull-right">
                <input id="search" type="search" class="layui-input" placeholder="搜索">
            </div>

            <ul class="layui-nav blog-nav pull-right">
                <li class="layui-nav-item"><a href="#">主页</a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">文章分类 <i class="layui-icon layui-icon-triangle-d"></i></a>

                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <dd><a href="">Spring Boot</a></dd>
                        <dd><a href="">数据库</a></dd>
                        <dd><a href="">Linux</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="#">留言板</a></li>
                <li class="layui-nav-item"><a href="#">关于本站</a></li>
            </ul>
        </div>
    </div>
</header>
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
                        <h1 class="layui-elip"><a href="#">
                            ${article.title}
                            Article Header
                            Let me not to the marriage of true minds
                            Admit impediments. Love is not love
                            Which alters when it alteration finds,
                            Or bends with the remover to remove:
                            O, no! it is an ever-fix`ed mark,
                            That looks on tempests and is never shaken;
                            It is the star to every wand'ring bark,
                            Whose worth's unknown, although his heighth be taken.
                            Love's not Time's fool, though rosy lips and cheeks
                            Within his bending sickle's compass come;
                            Love alters not with his brief hours and weeks,
                            But bears it out even to the edge of doom:
                            If this be error and upon me proved,
                            I never writ, nor no man ever loved.
                        </a></h1>
                    </div>
                    <div class="article-content ">

                        Let me not to the marriage of true minds
                        Admit impediments. Love is not love
                        Which alters when it alteration finds,
                        Or bends with the remover to remove:
                        O, no! it is an ever-fix`ed mark,
                        That looks on tempests and is never shaken;
                        It is the star to every wand'ring bark,
                        Whose worth's unknown, although his heighth be taken.
                        Love's not Time's fool, though rosy lips and cheeks
                        Within his bending sickle's compass come;
                        Love alters not with his brief hours and weeks,
                        But bears it out even to the edge of doom:
                        If this be error and upon me proved,
                        I never writ, nor no man ever loved.
                        Let me not to the marriage of true minds
                        Admit impediments. Love is not love
                        Which alters when it alteration finds,
                        Or bends with the remover to remove:
                        O, no! it is an ever-fix`ed mark,
                        That looks on tempests and is never shaken;
                        It is the star to every wand'ring bark,
                        Whose worth's unknown, although his heighth be taken.
                        Love's not Time's fool, though rosy lips and cheeks
                        Within his bending sickle's compass come;
                        Love alters not with his brief hours and weeks,
                        But bears it out even to the edge of doom:
                        If this be error and upon me proved,
                        I never writ, nor no man ever loved.
                    </div>
                    <span class="article-meta">
                        <i class="layui-icon layui-icon-date"></i>
                        <span class="inl">2018-10-29</span>&nbsp;&nbsp;
                        <i class="fa fa-eye" aria-hidden="true"></i>
                        <span>浏览(20)</span>&nbsp;&nbsp;
                        <i class="fa fa-comments-o" aria-hidden="true"></i>
                        <span>0</span>
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
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">god</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
                            <a href="#tag" class="border-gray">Java</a>
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
                                    <li>
                                        <a href="#">Java是世界上最好的语言</a>
                                    </li>
                                    <li>
                                        <a href="#">Java是世界上最好的语言</a>
                                    </li>
                                    <li>
                                        <a href="#">Java是世界上最好的语言</a>
                                    </li>
                                    <li>
                                        <a href="#">Java是世界上最好的语言</a>
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
                                <span>文章总数：&nbsp; 124 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-tags"></i>&nbsp;
                                <span>标签总数：&nbsp; 124 篇</span>
                            </li>
                            <li>
                                <i class="fa fa-folder-open"></i>&nbsp;
                                <span>分类总数：&nbsp; 124 篇</span>
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
<footer>
    <div class="blog-panel text-center footer-info">

        Copyright © 2017 风吟博客 All rights reserved.

        <a href="#map">站点地图</a>
    </div>
</footer>


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
</body>
</html>