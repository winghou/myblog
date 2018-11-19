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
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/admin/index.css">
    <!--<link rel="stylesheet" href="../static/css/github.css">-->
    <link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">
    <script src="/plugin/layui/layui.js"></script>
    <script src="/plugin/marked/marked.min.js"></script>
    <script src="/plugin/simpleMDE/simplemde.min.js"></script>
    <script src="/plugin/echarts.js"></script>

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
                                <img src="../../static/images/admin.png" alt="" class="layui-nav-img">
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
                            <h4>文章</h4>
                        </a>
                    </div>
                    <div class="layui-col-lg3">
                        <a href="" class="admin-panel">
                            <div class="icon">
                                <i class="fa fa-tags fa-3x "></i>
                            </div>
                            <div class="a-count">3</div>
                            <h4>标签</h4>
                        </a>
                    </div>
                    <div class="layui-col-lg3">
                        <a href="" class="admin-panel">
                            <div class="icon">
                                <i class="fa fa-th fa-3x "></i>
                            </div>
                            <div class="a-count">3</div>
                            <h4>分类</h4>
                        </a>
                    </div>
                    <div class="layui-col-lg3">
                        <a href="" class="admin-panel">
                            <div class="icon">
                                <i class="fa fa-comments-o fa-3x "></i>
                            </div>
                            <div class="a-count">3</div>
                            <h4>评论</h4>
                        </a>
                    </div>
                    <div class="layui-col-lg4" >
                        <div class="admin-panel" style="height: 300px;">
                            <h3>分类文章数统计</h3>
                            <hr>
                            <div id="echart_cata" style="height: 260px;"></div>

                        </div>
                    </div>
                    <div class="layui-col-lg4" >
                        <div class="admin-panel" style="height: 300px;">
                            <h3>文章点击Top10</h3>
                            <hr>
                            <div class="article-top">
                                <ul>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                    <li class="">
                                        <a href="" class="link-green layui-elip ">
                                            Java是世界上最好的语言Java是世界上最好的语言Java是世界上最好的语言
                                        </a>
                                        <span>114</span>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="layui-col-lg4" >
                        <div class="admin-panel" style="height: 300px;">
                            <h3>分类文章数统计</h3>
                            <hr>
                            <div id="echart_spider" style="height: 260px;"></div>

                        </div>
                    </div>
                    <div class="layui-col-lg6">
                        <div class="admin-panel">
                            <h3>近期文章</h3>
                            <hr>
                            <table class="layui-table">
                                <colgroup>
                                    <col width="250">
                                    <col width="200">
                                    <col>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>标题</th>
                                    <th>分类</th>
                                    <th>浏览数</th>
                                    <th>发布时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Java是世界上最好的语言</td>
                                    <td>Java</td>
                                    <td>110</td>
                                    <td>2018-10-28</td>
                                </tr>
                                <tr>
                                    <td>Java是世界上最好的语言</td>
                                    <td>Java</td>
                                    <td>110</td>
                                    <td>2018-10-28</td>
                                </tr>
                                <tr>
                                    <td>Java是世界上最好的语言</td>
                                    <td>Java</td>
                                    <td>110</td>
                                    <td>2018-10-28</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
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
        //基于dom ID， 初始化 echarts实例
        var echart_cata = echarts.init(document.getElementById('echart_cata')),
            echart_spider = echarts.init(document.getElementById('echart_spider'));
        //指定echarts 初始化配置参数和数据
        var option = {
            tooltip: {
                show: true
            },
            //图例
            legend: [{
                show: true,
                selectedMode: true,
                y: 'bottom',
                // top: '10%',
                data: ['Java', 'MySQL', 'Python', 'CSS', 'Go']
            }],
            series: [
                {
                    name: '文章分类',
                    type: 'pie',
                    radius: '55%',
                    data: [
                        {value: 235, name: 'Java'},
                        {value: 274, name: 'MySQL'},
                        {value: 310, name: 'Python'},
                        {value: 335, name: 'CSS'},
                        {value: 400, name: 'Go'}
                    ]
                }
            ]
        };
        //使用指定的配置项和数据显示图表
        echart_cata.setOption(option);
        echart_spider.setOption(option);

    })
</script>
</body>
</html>