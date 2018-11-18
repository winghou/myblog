<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/admin/index.css">
    <!--<link rel="stylesheet" href="/css/github.css">-->
    <link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">
    <script src="/plugin/layui/layui.js"></script>
    <script src="/plugin/marked/marked.min.js"></script>
    <script src="/plugin/simpleMDE/simplemde.min.js"></script>

    <title>后台管理</title>
</head>
<body class="layui-bg-gray">
<div class="layui-container">
    <div class="layui-row">
            <div class="layui-col-lg12 ">
                <div class="layui-col-lg2">

                <div class="sidebar-scroll">

                    <div class="sidebar">
                        <h2 class="layui-elip">
                            <a href="" class="">
                                <i class="layui-icon layui-icon-tree" style="font-size: 30px"></i>Blog小站后台
                            </a>

                        </h2>
                        <div class="admin-info display-inblock">
                            <a href="" class="dinb ml15 fl mr15 mb20 ">
                                <img src="/images/admin.png" alt="" class="layui-nav-img">
                            </a>
                            <p class="layui-word-aux">下午好</p>
                            <h2>小丑女</h2>

                        </div>
                        <div class="layui-clear"></div>
                        <ul class="layui-nav layui-nav-tree" lay-filter="test">
                            <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->

                            <li class="layui-nav-item layui-nav-itemed">
                                <a href="javascript:;">
                                    <i class="fa fa-home">&nbsp; 首页</i>
                                </a>
                            </li>
                            <li class="layui-nav-item layui-nav-itemed">
                                <a href="javascript:;">
                                    <i class="fa fa-list"></i>&nbsp; 文章管理
                                </a>
                                <dl class="layui-nav-child">
                                    <dd><a href="javascript:;">文章列表</a></dd>
                                    <dd><a href="javascript:;">标签列表</a></dd>
                                    <dd><a href="">分类列表</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item">
                                <a href="javascript:;">
                                    <i class="fa fa-globe"></i>
                                    &nbsp; 网站管理
                                </a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">友情链接</a></dd>
                                    <dd><a href="">评论管理</a></dd>
                                    <dd><a href="">模板管理</a></dd>
                                    <dd><a href="">权限管理</a></dd>
                                    <dd><a href="">更新日志</a></dd>
                                    <dd><a href="">公告管理</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item">
                                <a href="javascript:;">
                                    <i class="fa fa-user"></i>
                                    &nbsp; 用户管理
                                </a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">用户列表</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item">
                                <a href="javascript:;">
                                    <i class="fa fa-flask"></i>
                                    &nbsp; 实验室
                                </a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">文章搬运工</a></dd>
                                    <dd><a href="">推送消息</a></dd>
                                </dl>
                            </li>
                            <li class="layui-nav-item">
                                <a href="javascript:;">
                                    <i class="fa fa-desktop"></i>
                                    &nbsp; 测试页面
                                </a>
                                <dl class="layui-nav-child">
                                    <dd><a href="">icons测试</a></dd>
                                    <dd><a href="">shiro测试</a></dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>
                </div>
                <div class=" right-content">
                    <div class="top-nav ">
                        <div class="nav-menu bg-white">
                            <ul class="layui-nav bg-white nav-left">
                                <li class="layui-nav-item">
                                    <a href="">
                                        <i class="fa fa-list"></i>
                                    </a>
                                </li>
                            </ul>
                            <ul class="layui-nav bg-white nav-right">
                                <li class="layui-nav-item"><a href="">
                                    捐赠博主
                                </a></li>
                                <li class="layui-nav-item"><a href="">
                                    访问前台
                                </a></li>
                                <li class="layui-nav-item"><a href="">
                                    <i class="fa fa-envelope"></i>
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="layui-clear"></div>

                        <div class="layui-col-lg12 layui-col-space20 main-content">
                            <div class="layui-col-lg3">
                                <a href="" class="admin-panel">
                                    <div class="icon">
                                        <i class="fa fa-envira fa-3x "></i>
                                    </div>
                                    <div class="a-count">3</div>
                                    <h4 >文章</h4>
                                </a>
                            </div>

                        </div>

                </div>
            </div>
    </div>

</div>
<script>

    layui.use(['element', 'jquery', 'layer'], function () {
        var elem = layui.element,
            $ = layui.jquery;
        // layer.msg("hello")
    })
</script>
</body>
</html>