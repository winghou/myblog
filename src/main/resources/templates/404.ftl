<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/common/header.css">
    <link rel="stylesheet" href="/css/common/footer.css">
    <script src="/plugin/layui/layui.js"></script>

    <title>Page Not Found</title>
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
<div class="layui-container w">
    <div class="layui-row layui-col-lg12">

        <div class="blog-panel tc">
            <img src="/images/404.jpg" alt="none">
        </div>
    </div>

</div>
<div class="layui-clear"></div>
<footer>
    <div class="blog-panel text-center footer-info" style="position: fixed;bottom: 0;
    right: 0;
    left: 0;">

        Copyright © 2017 Blog小站 All rights reserved.

        <a href="#map">站点地图</a>
    </div>
</footer>
<script>
    layui.use(['element'],function () {
        var elem = layui.element;
    })
</script>
</body>
</html>