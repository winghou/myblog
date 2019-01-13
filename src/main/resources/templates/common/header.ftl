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
                <#list types as type>
                <#if type.nodes?exists && type.nodes?size != 0>
                <li class="layui-nav-item">
                    <#assign pid = type.id>
                    <a href="/type/${type.id}">${type.name} <i class="layui-icon layui-icon-triangle-d"></i></a>

                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <#list type.nodes as node>
                            <dd><a href="/type/${node.id}">${node.name}</a></dd>
                        </#list>
                    </dl>
                </li>
                <#else >

                <li class="layui-nav-item">
                    <#assign pid = type.id>
                    <a href="/type/${type.id}">${type.name} </a>
                </li>

                </#if>

                </#list>
            </ul>
        </div>
    </div>
</header>

