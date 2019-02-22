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
                    <select name="type" id="article_type" lay-filter="article_type_select">

                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-lg6">
            <div class="layui-form-item">
                <label class="layui-form-label">标签</label>
                <div class="layui-input-block">
                    <select name="tags" xm-select="tags">

                    </select>

                <#--<div class="tags" id="tags">-->
                <#--<input type="text" name="tags" id="inputTags" placeholder="空格生成标签" autocomplete="off">-->
                <#--</div>-->
                </div>
            </div>
        </div>
        <div class="layui-clear"></div>
        <textarea id="write_article" cols="30" rows="50" name="content"></textarea>
        <div class="layui-btn-container tr mt10">
            <button class="layui-btn layui-btn-primary" lay-filter="cancle">取消</button>
            <button class="layui-btn layui-btn-warm" lay-filter="caogao">存草稿</button>
            <button lay-submit class="layui-btn" lay-filter="publish">发布</button>
        </div>
    </form>


</div>

<@footer>
<script src="/plugin/layui-extend/formSelects.js"></script>
<script src="/plugin/simpleMDE/simplemde.min.js"></script>
<script>
    function createOption($, $form, data, form, id) {
        var html = '';
        for (var i = 0; i < data.length; i++) {
            html += '<option value=' + data[i].id + '>' + data[i].name + '</option>';
        }
        $form.find('select[name=roleID]').append(html);
        form.render();
    }

    layui.config({
                base: '/plugin/layui-extend/'
            }
    ).use(['element', 'jquery', 'form', 'inputTags', 'formSelects'], function () {
        var elem = layui.element;
        var $ = layui.jquery;
        var form = layui.form;
        // var inputTags = layui.inputTags;
        var formSelects = layui.formSelects;

        var simplemde = new SimpleMDE({
            element: document.getElementById('write_article'),
            spellChecker: false,
            autoDownloadFontAwesome: false,
            status: false,
            placeholder: "Type here...",
            autoSave: {
                enabled: true,
                uniqueId: "demo",
                delay: 1000
            }

        });
        formSelects.data('tags', 'server', {
            url: '/tag/all'
        });
        var temp = [];

        function getArticleType() {
            $.get({
                url: '/type/all',
                success: function (res) {
                    // console.log(JSON.stringify(res));

                    return res;
                },
                error: function () {
                    alert("get article type failed");
                }
            });
        }

        var typesList = getArticleType();
        if (typesList == undefined) {
            typesList = getArticleType();
            createOption($, $('form'), typesList, form, 'type');
        }
        console.log(JSON.stringify(typesList));
        //表单提交
        form.on('submit(publish)', function (data) {
            data.field.tags = tags;
            data.field.content = simplemde.value();
            $.ajax({
                url: '/article/publish',
                type: 'POST',
                dataType: 'json',
                data: data.field,
                success: function (res) {
                    console.log(JSON.stringify(res));
                }

            });
            return false;
        });
    })
</script>
</@footer>