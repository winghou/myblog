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
                <#list types?sort_by("sort") as type>
                <#if type.pid?exists>
                <li class="layui-nav-item">
                    <#assign pid = type.id>
                    <a href="/type/${type.id}">${type.name} <i class="layui-icon layui-icon-triangle-d"></i></a>

                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <#list types as subType>
                            <#if subType.id == pid>

                            <dd><a href="/type/${subType.id}">${subType.name}</a></dd>
                            </#if>
                        </#list>
                    </dl>
                </li>
                <#else >

                <li class="layui-nav-item">
                    <#assign pid = type.id>
                    <a href="/type/${type.id}">${type.name} <i class="layui-icon layui-icon-triangle-d"></i></a>

                    <#list types as subType>
                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                            <#if subType.id == pid>

                            <dd><a href="/type/${subType.id}">${subType.name}</a></dd>
                            </#if>
                    </dl>
                    </#list>

                </li>

                </#if>

                </#list>
            </ul>
        </div>
    </div>
</header>

