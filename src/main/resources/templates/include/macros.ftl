<#macro  header title>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
    <link rel="stylesheet" href="/plugin/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/common/header.css">
    <link rel="stylesheet" href="/css/common/footer.css">


    <#nested >
    <title>${title}</title>
</head>
<body class="layui-bg-gray">
<#include "/common/header.ftl">
</#macro>

<#macro footer>
    <#include "/common/footer.ftl">
    <#nested >
</body>
</html>
</#macro>