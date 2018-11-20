<#include "include/macros.ftl">
<@header title="Blog小站">
<link rel="stylesheet" href="/plugin/simpleMDE/simplemde.min.css">
<link rel="stylesheet" href="/css/comment.css">

</@header>

<div class="layui-container">
    <div class="blog-banner">
        <span class="layui-breadcrumb">
          <a href=""><i class="fa fa-home"></i>&nbsp; 首页 </a>
          <a><cite>留言板</cite></a>
        </span>
    </div>
    <div class="blog-panel">
        <h1 style="font-weight: 500;margin-bottom: 8px;font-size: 4em;">留言板</h1>
        <p class="layui-word-aux">这个房间里只有一个人和一个人，而非两个人，不是吗？</p>
        <div class="content-meta" style="margin:18px 0 0;">
            <a href=""><i class="fa fa-qq"></i>&nbsp; QQ联系</a>
            <i class="sepa"></i>
            <a href=""><i class="fa fa-mail-forward"></i>&nbsp; 邮箱联系</a>
            <i class="sepa"></i>
            <a href=""><i class="fa fa-weibo"></i>&nbsp; 新浪微博</a>
        </div>
    </div>
    <div class="blog-panel comment-p-flag">
        <p><i class="fa fa-lightbulb-o"></i>
            &nbsp; 随便留言，只要不是反人类、反国家的危险言论。
            <strong>相信我！删除真的只需要1秒！</strong>
        </p>
        <p><i class="fa fa-lightbulb-o"></i>
            &nbsp; 欢迎各种花式留言！eg.
        <span class="code" >
            System.out.println("突如其来的骚，闪了老子的腰！");
        </span>
        </p>
        <p><i class="fa fa-heartbeat"></i>
            &nbsp; <strong>爱谁谁...</strong>
        </p>
    </div>
    <div class="blog-panel">
        <div class="panel-title" id="comment-post">
            <h5 class="h5">
                <i class="fa fa-commenting-o"></i>
                评论
            </h5>
            <hr>
            <form action="/" class="layui-form" id="comment-form">
                        <textarea name="" required placeholder="请输入" class="layui-textarea CodeMirror CodeMirror-scroll"
                                  id="comment-area">
                        </textarea>
                <button class="layui-btn layui-btn-fluid" style="margin: 15px 0">提交评论</button>
            </form>

        </div>
        <div class="panel-title">
            <h5 class="h5">
                <i class="fa fa-comments-o"></i>
                <em style="font-size: 18px;color: red;font-weight: 700;font-family: Georgia;">7</em>
                条评论
            </h5>
        </div>
        <hr>
        <ul>
            <li class="content-li">
                <div class="comment-header">
                    <div class="user-img">
                        <img src="/images/user.png" alt="">
                    </div>
                    <div class="user-info">
                        <div class="nickname">
                            <a href="#" style="color: #009a61;"><strong>匿名</strong></a>

                        </div>
                        <div class="timer">
                            <i class="fa fa-clock-o"></i>
                            2018-11-6 17.07 &nbsp;
                            <i class="fa fa-map-marker"></i>
                            上海浦东新区
                        </div>
                    </div>
                </div>
                <hr>
                <div class="comment-content">test</div>
                <hr>
                <div class="content-meta" style="">
                    <a href="#">
                        <i class="fa fa-thumbs-up"></i> 赞(0)
                    </a>
                    <i class="sepa"></i>
                    <a href="">
                        <i class="fa fa-thumbs-down"></i> 踩(0)
                    </a>
                    <i class="sepa"></i>
                    <a id="reply-A" class="" style="padding-right: 15px;cursor: pointer;">
                        <i class="fa fa-reply"></i> 回复
                        <!--<i class="fa fa-share"></i> 取消回复-->
                    </a>
                </div>
            </li>
        </ul>

    </div>
</div>
<@footer>
<script src="/plugin/simpleMDE/simplemde.min.js"></script>
<script>
    layui.use(['element','jquery'], function () {
        var elem = layui.element
            ,$ = layui.jquery;
        //初始化评论框
        var simplemde = new SimpleMDE({
            element: document.getElementById("comment-area"),
            autoDownloadFontAwesome: false,
            status: false,
            hideIcons: ['heading', 'unordered-list', 'ordered-list', 'link', 'image', 'fullscreen']
            // showIcons: ['bold','italic','code','quote','preview','guide']
        });
        $('#reply-A').click(function () {
            var comment_form = $('#comment-form');
            if (!$(this).hasClass('pull-right')) {
                $(this).parent().after(comment_form);
                $(this).addClass('pull-right').html('<i class="fa fa-share"></i> 取消回复');
            }else {
                $('#comment-post').after(comment_form);
                $(this).removeClass('pull-right').html('<i class="fa fa-reply"></i> 回复');
            }
        })

    })
</script>
</@footer>
