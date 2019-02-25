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
    <form class="layui-form" id="articleForm" onsubmit="return false">
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
                    <select name="type" id="article_type">

                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-lg6">
            <div class="layui-form-item">
                <label class="layui-form-label">标签</label>
                <div class="layui-input-block">
                    <select name="tags" xm-select="tags" xm-select-search>

                    </select>
                </div>
            </div>
        </div>
        <div class="layui-clear"></div>
        <textarea id="write_article" cols="30" rows="50" name="content"></textarea>
        <div class="layui-btn-container tr mt10">
            <button class="layui-btn layui-btn-primary" lay-filter="cancle">取消</button>
            <button class="layui-btn layui-btn-warm" lay-filter="draft">存草稿</button>
            <button lay-submit class="layui-btn" lay-filter="publish">发布</button>
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
    ).use(['element', 'jquery', 'form', 'inputTags', 'formSelects', 'layer'], function () {
        var elem = layui.element;
        var $ = layui.jquery;
        var form = layui.form;
        var formSelects = layui.formSelects;
        var layer = layui.layer;

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
        $.get({
            url: '/type/all',
            success: function (res) {
                var html = '';
                for (var i = 0; i < res.length; i++) {
                    html += '<option value=' + res[i].id + '>' + res[i].name + '</option>';
                }
                $('#articleForm').find('select[name=type]').append(html);
                form.render();
            }
        });

        function submitForm(data, status) {
            var tags = formSelects.value('tags', 'all');
            var tagIDs = '';
            for (var i = 0; i < tags.length; i++) {
                tagIDs += tags[i].value + ',';
            }
            data.field.tags = tagIDs;
            data.field.content = simplemde.value();
            data.field.status = status;
            console.log(data.field);
            $.ajax({
                url: '/article/publish',
                type: 'POST',
                dataType: 'json',
                data: data.field,
                success: function (res) {
                    if (res.code = 'succss') {
                        layer.alert('文章发表成功',function (index) {
                            $('form').find()
                            layer.close(index);
                        })

                    } else {
                        layer.msg('文章发布失败，请重试');
                    }
                    console.log(JSON.stringify(res));
                }

            });
            return false;
        }

        //表单提交
        form.on('submit(publish)', function (data) {
            submitForm(data, 1);
        });
        form.on('submit(draft)', function (data) {
            submitForm(data, 0);
        });

    });

</script>
</@footer>