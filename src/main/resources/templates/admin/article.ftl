<#include "../include/admin.ftl">
<@header>

    <link rel="stylesheet" href="/css/admin/article.css">
    <link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">
    <link rel="stylesheet" href="/plugin/layui-extend/css/formSelects-v4.css">
<#--<link rel="stylesheet" href="/plugin/inputtags/inputTags.css">-->

</@header>
<div class="panel">
    <h2>发布文章</h2>
    <hr>
    <form action="/article/publish" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">文章标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-col-lg6">
            <div class="layui-form-item">
                <label class="layui-form-label">分类</label>
                <div class="layui-input-block">
                    <select name="cata" xm-select="cata">

                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-lg6">
            <div class="layui-form-item">
                <label class="layui-form-label">标签</label>
                <div class="layui-input-block">
                    <div class="tags" id="tags">
                        <input type="text" name="tags" id="inputTags" placeholder="空格生成标签" autocomplete="off">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-clear"></div>
        <textarea id="write_article" cols="30" rows="50" name="content"></textarea>
        <div class="layui-btn-container tr mt10">
            <button class="layui-btn layui-btn-primary">取消</button>
            <button class="layui-btn layui-btn-warm">存草稿</button>
            <button lay-submit class="layui-btn">发布</button>
        </div>
    </form>


</div>

<@footer>
<script src="/plugin/layui-extend/formSelects.js"></script>
<script src="/plugin/simpleMDE/simplemde.min.js"></script>
<script>
    layui.config({
                base: '/plugin/layui-extend/'
            }
    ).use(['element', 'jquery', 'form', 'inputTags', 'formSelects'], function () {
        var elem = layui.element;
        var $ = layui.jquery;
        var form = layui.form;
        var inputTags = layui.inputTags;
        var formSelects = layui.formSelects;
        var simplemde = new SimpleMDE({
            element: document.getElementById('write_article'),
            spellChecker: false,
            autoDownloadFontAwesome: false,
            status: false,
            placeholder: "Type here...",
            autosave: {
                enabled: true,
                uniqueId: "demo",
                delay: 1000,
            }

        });
        var arr = [];

        function getCataArr() {
            $.get({
                url: '/admin/catalog/all',
                success: function (data) {
                    console.log(data);
                    $.each(data,function (i, value) {
                        var obj = new Object();
                        obj.name = value.name;
                        obj.value = value.id;
                        // obj.selected = "";
                        // obj.disabled = "";
                        arr.push(obj);
                    });
                }
            });
            return arr;
        };
        getCataArr();
        console.log(arr);
        formSelects.data('cata','server',{
            url:'/admin/catalog/all'
        });
        // formSelects.render({
        //     name: 'cata',
        //     type: 1,
        //     skin: 'primary',
        //     on: function (data, arr) {
        //         console.log(data);
        //         console.log(arr);
        //     },
        //     data: {
        //         arr: getCataArr(),
        //         name: 'name',//定义name的key, 默认name
        //         val: 'id'//定义val的key, 默认val
        //     }
        //
        // });
        inputTags.render({
            elem: '#inputTags',//定义输入框input对象
            content: [],//默认标签
            aldaBtn: false,//是否开启获取所有数据的按钮
            done: function (value) { //回车后的回调
                console.log(value)
            }
        });
    })
</script>
</@footer>