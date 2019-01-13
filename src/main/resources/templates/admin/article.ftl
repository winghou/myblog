<#include "../include/admin.ftl">
<@header>

    <link rel="stylesheet" href="/css/admin/article.css">
    <link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">
</@header>
<span class="layui-breadcrumb" lay-separator="/">
  <a href="">首页</a>
  <a href="">国际新闻</a>
  <a href="">亚太地区</a>
  <a><cite>正文</cite></a>
</span>
<div class="panel">
    <h2>发布文章</h2>
    <hr>

</div>

<@footer>
<script>
    layui.use(['element'],function () {
        var elem = layui.element;
    })
</script>
</@footer>