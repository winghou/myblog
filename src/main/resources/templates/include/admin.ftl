<#macro header title="后台管理">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/admin/index.css">
    <#nested >
<#--<link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">-->
    <script src="/plugin/layui/layui.js"></script>
    <script src="/plugin/marked/marked.min.js"></script>
    <script src="/plugin/simpleMDE/simplemde.min.js"></script>
    <script src="/plugin/echarts.js"></script>

    <title>${title}</title>
</head>
<body class="layui-bg-gray">
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-lg12 ">
            <div class="layui-col-lg2">
                <#include "../common/admin_sidebar.ftl">
            </div>
            <div class=" right-content">
                <#include "../common/admin_nav.ftl">
                <div class="layui-clear"></div>
                <div class="layui-col-lg12 layui-col-space20 main-content">





</#macro>
<#macro footer>
</div>
<#include "../common/admin_footer.ftl">
<#nested>
</body>
</html>
</#macro>