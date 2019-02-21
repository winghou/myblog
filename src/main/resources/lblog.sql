-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: lblog
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biz_article`
--

DROP TABLE IF EXISTS `biz_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '文章封面图片',
  `qrcode_path` varchar(255) DEFAULT NULL COMMENT '文章专属二维码地址',
  `is_markdown` tinyint(1) unsigned DEFAULT '1',
  `content` longtext COMMENT '文章内容',
  `content_md` longtext COMMENT 'markdown版的文章内容',
  `top` tinyint(1) DEFAULT '0' COMMENT '是否置顶',
  `type_id` bigint(20) unsigned NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `recommended` tinyint(1) unsigned DEFAULT '0' COMMENT '是否推荐',
  `original` tinyint(1) unsigned DEFAULT '1' COMMENT '是否原创',
  `description` varchar(300) DEFAULT NULL COMMENT '文章简介，最多200字',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键字，优化搜索',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_article`
--

LOCK TABLES `biz_article` WRITE;
/*!40000 ALTER TABLE `biz_article` DISABLE KEYS */;
INSERT INTO `biz_article` VALUES (1,'OneBlog简介',1,'zhyd/cover/20180613092017699.jpg',NULL,1,'<h1 id=\"dblog-\">OneBlog简介</h1>\r\n<p>OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。</p>\r\n<p><strong>网站预览</strong>    </p>\r\n<p><a href=\"https://www.zhyd.me\">https://www.zhyd.me</a>  </p>\r\n<p><strong>开源地址</strong>   </p>\r\n<ol>\r\n<li><a href=\"https://gitee.com/yadong.zhang/DBlog\">Gitee</a>    </li>\r\n<li><a href=\"https://github.com/zhangyd-c/DBlog\">Github</a>    </li>\r\n</ol>\r\n<h2 id=\"-\">写在前面的话</h2>\r\n<p>ps: 虽然我知道，大部分人都是来了<strong>直接下载源代码</strong>后就潇洒的离开，并且只有等到下次<strong>突然想到</strong>“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    </p>\r\n<p>发现更新代码了 --&gt; 下载源码后重复上面的步骤<br>发现没更新代码 --&gt; 直接关闭浏览器</p>\r\n<p>虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：</p>\r\n<p><strong>如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！</strong></p>\r\n<h3 id=\"-\">开发环境</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>工具</th>\r\n<th>版本或描述</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>OS</td>\r\n<td>Windows 7</td>\r\n</tr>\r\n<tr>\r\n<td>JDK</td>\r\n<td>1.7+</td>\r\n</tr>\r\n<tr>\r\n<td>IDE</td>\r\n<td>IntelliJ IDEA 2017.3</td>\r\n</tr>\r\n<tr>\r\n<td>Maven</td>\r\n<td>3.3.1</td>\r\n</tr>\r\n<tr>\r\n<td>MySQL</td>\r\n<td>5.6.4</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 id=\"-\">模块划分</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>模块</th>\r\n<th>释义</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>blog-core</td>\r\n<td>核心业务类模块，提供基本的数据操作、工具处理等</td>\r\n</tr>\r\n<tr>\r\n<td>blog-admin</td>\r\n<td>后台管理模块</td>\r\n</tr>\r\n<tr>\r\n<td>blog-web</td>\r\n<td>前台模块</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 id=\"-\">技术栈</h3>\r\n<ul>\r\n<li>Springboot 1.5.9</li>\r\n<li>Apache Shiro 1.2.2</li>\r\n<li>Logback</li>\r\n<li>Redis</li>\r\n<li>Lombok</li>\r\n<li>Websocket</li>\r\n<li>MySQL、Mybatis、Mapper、Pagehelper</li>\r\n<li>Freemarker</li>\r\n<li>Bootstrap 3.3.0</li>\r\n<li>wangEditor</li>\r\n<li>jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck</li>\r\n<li>阿里云OSS</li>\r\n<li>kaptcha</li>\r\n<li>Qiniu</li>\r\n<li>...</li>\r\n</ul>\r\n<h3 id=\"-\">使用方法</h3>\r\n<ol>\r\n<li>使用IDE导入本项目</li>\r\n<li>新建数据库<code>CREATE DATABASE dblog;</code></li>\r\n<li>导入数据库<code>docs/db/dblog.sql</code></li>\r\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\r\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.19) </li>\r\n<li>redis配置(可搜索<code>redis</code>或定位到L.69)</li>\r\n<li>mail配置(可搜索<code>mail</code>或定位到L.89)</li>\r\n<li>【<a href=\"http://qiniu.com\">七牛云</a>】配置(见sys<em>config表中qiniu</em>*开头的字段)<br>注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的<code>系统配置</code>页面修改相关配置内容</li>\r\n</ol>\r\n</li>\r\n<li>运行项目(三种方式)<ol>\r\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar target/blog-web.jar</code></li>\r\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\r\n<li>直接运行<code>BlogWebApplication.java</code></li>\r\n</ol>\r\n</li>\r\n<li>浏览器访问<code>http://127.0.0.1:8443</code></li>\r\n</ol>\r\n<p><strong>后台用户</strong></p>\r\n<p><em>超级管理员</em>： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）</p>\r\n<p><em>普通管理员</em>： 账号：admin  密码：123456</p>\r\n<p><em>评论审核管理员</em>： 账号：comment-admin  密码：123456</p>\r\n<p>注：后台用户的创建，尽可能做到<strong>权限最小化</strong></p>\r\n<p>更多详情，请参考【<a href=\"https://gitee.com/yadong.zhang/DBlog/wikis\">Wiki</a>】</p>\r\n<h3 id=\"-\">更新日志</h3>\r\n<p>2018-06-10</p>\r\n<p><strong>修改功能：</strong></p>\r\n<p>新增：<br>    markdown版的编辑器、评论框<br>    控制文章的评论框是否显示<br>    修改密码功能<br>优化：相关页面进行优化    </p>\r\n<p>2018-06-05</p>\r\n<p><strong>修改功能：</strong></p>\r\n<p>修复： admin用户首页报错的问题    </p>\r\n<p>优化：</p>\r\n<ol>\r\n<li>ROOT用户默认拥有所有权限</li>\r\n<li>admin页面改为macro引用的方式</li>\r\n<li>登录界面</li>\r\n<li>日志记录</li>\r\n</ol>\r\n<p>2018-05-25</p>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>修复后台标签等分页失败的问题</li>\r\n<li>修复前台自动申请友链失败的问题</li>\r\n<li>其他一些问题</li>\r\n</ol>\r\n<p>2018-05-22</p>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>完善shiro权限（数据库、页面）。注：需要重新执行下<code>sys_resources</code>和<code>sys_role_resources</code>两张表的<code>insert</code>语句</li>\r\n<li>redis配置默认不含密码（鉴于大多数朋友的redis都没有密码做此修改，不过本人 <strong>强烈建议</strong>设置下密码）</li>\r\n</ol>\r\n<p>2018-05-18</p>\r\n<p><strong>修复bug：</strong></p>\r\n<ol>\r\n<li>web端自动申请友链后不显示的问题</li>\r\n<li>config表修改后不能实时刷新的问题</li>\r\n</ol>\r\n<p><strong>增加功能：</strong></p>\r\n<ol>\r\n<li>网站赞赏码</li>\r\n<li>百度推送功能(链接提交到百度站长平台)</li>\r\n</ol>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>百度api的ak和百度推送的token以及七牛云的配置改为通过config表管理</li>\r\n<li>admin模块菜单通过标签实时获取</li>\r\n<li>弹窗工具类js结构调整</li>\r\n</ol>\r\n<p>你能看到这儿已经很不容易了，剩下的自己先摸索摸索吧，实在不行，加QQ群<a href=\"http://shang.qq.com/wpa/qunwpa?idkey=9f986e9b33b1de953e1ef9a96cdeec990affd0ac7855e00ff103514de2027b60\">190886500</a>，进群可以选择性的备注：<del>欧巴群主我爱你</del>(咳咳，鉴于部分群友的抗议，该备注就不用了)，麻烦大家换成：<code>我猜群主一定很帅</code></p>\r\n<h3 id=\"-\">图片预览</h3>\r\n<p><strong>前台页面</strong><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-index.png?v=1.0\" alt=\"PC-首页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-detail.png?v=1.0\" alt=\"PC-文章详情页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/m.png?v=1.0\" alt=\"手机\"><br><strong>后台页面</strong><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-index.png?v=1.0\" alt=\"首页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-menu.png?v=1.0\" alt=\"菜单\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-articles.png?v=1.0\" alt=\"文章列表\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-article2.png?v=1.0\" alt=\"发表文章\"><br><img src=\"https://gitee.com/uploads/images/2018/0610/145228_06541ada_784199.png?v=1.0\" alt=\"markdown版的编辑器\" title=\"markdown版的编辑器\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role.png?v=1.0\" alt=\"角色列表\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role2.png?v=1.0\" alt=\"角色分配\"></p>\r\n<h3 id=\"-\">生命不息，折腾不止！ 更多信息，请关注：</h3>\r\n<ol>\r\n<li><a href=\"https://www.zhyd.me\">我的博客</a></li>\r\n<li><a href=\"http://weibo.com/211230415\">我的微博</a></li>\r\n<li><a href=\"http://www.toutiao.com/c/user/3286958681/\">我的头条号</a></li>\r\n<li><p><a href=\"http://www.imooc.com/u/1175248/articles\">我的mooc</a></p>\r\n<h3 id=\"-\">有任何问题可以</h3>\r\n<ul>\r\n<li><a href=\"https://www.zhyd.me/guestbook\">给我留言</a></li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<h3 id=\"-\">开源协议</h3>\r\n<p> <a href=\"https://gitee.com/yadong.zhang/DBlog/blob/master/LICENSE\">MIT</a></p>\r\n','# OneBlog简介\r\nOneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。\r\n  \r\n**网站预览**    \r\n \r\n[https://www.zhyd.me](https://www.zhyd.me)  \r\n\r\n**开源地址**   \r\n1. [Gitee](https://gitee.com/yadong.zhang/DBlog)    \r\n2. [Github](https://github.com/zhangyd-c/DBlog)    \r\n\r\n## 写在前面的话\r\nps: 虽然我知道，大部分人都是来了**直接下载源代码**后就潇洒的离开，并且只有等到下次**突然想到**“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    \r\n\r\n发现更新代码了 --> 下载源码后重复上面的步骤    \r\n发现没更新代码 --> 直接关闭浏览器\r\n\r\n虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：\r\n\r\n**如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！**\r\n\r\n\r\n### 开发环境\r\n\r\n| 工具    | 版本或描述                |\r\n| ----- | -------------------- |\r\n| OS    | Windows 7            |\r\n| JDK   | 1.7+                 |\r\n| IDE   | IntelliJ IDEA 2017.3 |\r\n| Maven | 3.3.1                |\r\n| MySQL | 5.6.4                |\r\n\r\n### 模块划分\r\n\r\n| 模块         | 释义                      |\r\n| ---------- | ----------------------- |\r\n| blog-core  | 核心业务类模块，提供基本的数据操作、工具处理等 |\r\n| blog-admin | 后台管理模块                  |\r\n| blog-web   | 前台模块                    |\r\n\r\n\r\n### 技术栈\r\n\r\n- Springboot 1.5.9\r\n- Apache Shiro 1.2.2\r\n- Logback\r\n- Redis\r\n- Lombok\r\n- Websocket\r\n- MySQL、Mybatis、Mapper、Pagehelper\r\n- Freemarker\r\n- Bootstrap 3.3.0\r\n- wangEditor\r\n- jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck\r\n- 阿里云OSS\r\n- kaptcha\r\n- Qiniu\r\n- ...\r\n\r\n\r\n### 使用方法\r\n\r\n1. 使用IDE导入本项目\r\n2. 新建数据库`CREATE DATABASE dblog;`\r\n3. 导入数据库`docs/db/dblog.sql`\r\n4. 修改(`resources/application.yml`)配置文件\r\n   1. 数据库链接属性(可搜索`datasource`或定位到L.19) \r\n   2. redis配置(可搜索`redis`或定位到L.69)\r\n   3. mail配置(可搜索`mail`或定位到L.89)\r\n   4. 【[七牛云](http://qiniu.com)】配置(见sys_config表中qiniu_*开头的字段)    \r\n   注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的`系统配置`页面修改相关配置内容\r\n5. 运行项目(三种方式)\r\n   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar target/blog-web.jar`\r\n   2. 项目根目录下执行`mvn springboot:run`\r\n   3. 直接运行`BlogWebApplication.java`\r\n6. 浏览器访问`http://127.0.0.1:8443`\r\n\r\n\r\n**后台用户**\r\n\r\n_超级管理员_： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）\r\n\r\n_普通管理员_： 账号：admin  密码：123456\r\n\r\n_评论审核管理员_： 账号：comment-admin  密码：123456\r\n\r\n注：后台用户的创建，尽可能做到**权限最小化**\r\n\r\n更多详情，请参考【[Wiki](https://gitee.com/yadong.zhang/DBlog/wikis)】\r\n\r\n### 更新日志\r\n\r\n2018-06-10\r\n\r\n**修改功能：**\r\n\r\n新增：    \r\n	markdown版的编辑器、评论框    \r\n	控制文章的评论框是否显示    \r\n	修改密码功能    \r\n优化：相关页面进行优化    \r\n\r\n2018-06-05\r\n\r\n**修改功能：**\r\n\r\n修复： admin用户首页报错的问题    \r\n\r\n优化：\r\n1. ROOT用户默认拥有所有权限\r\n2. admin页面改为macro引用的方式\r\n3. 登录界面\r\n4. 日志记录\r\n\r\n2018-05-25\r\n\r\n**修改功能：**\r\n\r\n1. 修复后台标签等分页失败的问题\r\n2. 修复前台自动申请友链失败的问题\r\n3. 其他一些问题\r\n\r\n\r\n2018-05-22\r\n\r\n**修改功能：**\r\n\r\n1. 完善shiro权限（数据库、页面）。注：需要重新执行下`sys_resources`和`sys_role_resources`两张表的`insert`语句\r\n2. redis配置默认不含密码（鉴于大多数朋友的redis都没有密码做此修改，不过本人 **强烈建议**设置下密码）\r\n\r\n2018-05-18\r\n\r\n**修复bug：**\r\n\r\n1. web端自动申请友链后不显示的问题\r\n2. config表修改后不能实时刷新的问题\r\n	\r\n**增加功能：**\r\n1. 网站赞赏码\r\n2. 百度推送功能(链接提交到百度站长平台)\r\n	\r\n**修改功能：**\r\n1. 百度api的ak和百度推送的token以及七牛云的配置改为通过config表管理\r\n3. admin模块菜单通过标签实时获取\r\n3. 弹窗工具类js结构调整\r\n\r\n你能看到这儿已经很不容易了，剩下的自己先摸索摸索吧，实在不行，加QQ群[190886500](http://shang.qq.com/wpa/qunwpa?idkey=9f986e9b33b1de953e1ef9a96cdeec990affd0ac7855e00ff103514de2027b60)，进群可以选择性的备注：~~欧巴群主我爱你~~(咳咳，鉴于部分群友的抗议，该备注就不用了)，麻烦大家换成：`我猜群主一定很帅`\r\n\r\n### 图片预览\r\n\r\n**前台页面**\r\n![PC-首页](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-index.png?v=1.0)\r\n![PC-文章详情页](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-detail.png?v=1.0)\r\n![手机](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/m.png?v=1.0)\r\n**后台页面**\r\n![首页](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-index.png?v=1.0)\r\n![菜单](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-menu.png?v=1.0)\r\n![文章列表](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-articles.png?v=1.0)\r\n![发表文章](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-article2.png?v=1.0)\r\n![markdown版的编辑器](https://gitee.com/uploads/images/2018/0610/145228_06541ada_784199.png?v=1.0 \"markdown版的编辑器\")\r\n![角色列表](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role.png?v=1.0)\r\n![角色分配](https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role2.png?v=1.0)\r\n\r\n\r\n ### 生命不息，折腾不止！ 更多信息，请关注：\r\n 1. [我的博客](https://www.zhyd.me)\r\n 2. [我的微博](http://weibo.com/211230415)\r\n 3. [我的头条号](http://www.toutiao.com/c/user/3286958681/)\r\n 4. [我的mooc](http://www.imooc.com/u/1175248/articles)\r\n\r\n ### 有任何问题可以\r\n- [给我留言](https://www.zhyd.me/guestbook)\r\n\r\n\r\n### 开源协议\r\n\r\n [MIT](https://gitee.com/yadong.zhang/OneBlog/blob/master/LICENSE)',0,3,1,0,1,'OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。','OneBlog,开源博客',1,'2018-06-13 09:20:19','2018-06-13 09:20:19'),(2,'OneBlog简介（未开启评论）',1,'zhyd/cover/20180613092017699.jpg',NULL,1,'<h1 id=\"dblog-\">OneBlog简介</h1>\n<p>OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。</p>\n<p><strong>网站预览</strong>    </p>\n<p><a href=\"https://www.zhyd.me\">https://www.zhyd.me</a>  </p>\n<p><strong>开源地址</strong>   </p>\n<ol>\n<li><a href=\"https://gitee.com/yadong.zhang/DBlog\">Gitee</a>    </li>\n<li><a href=\"https://github.com/zhangyd-c/DBlog\">Github</a>    </li>\n</ol>\n<h2 id=\"-\">写在前面的话</h2>\n<p>ps: 虽然我知道，大部分人都是来了<strong>直接下载源代码</strong>后就潇洒的离开，并且只有等到下次<strong>突然想到</strong>“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    </p>\n<p>发现更新代码了 --&gt; 下载源码后重复上面的步骤<br>发现没更新代码 --&gt; 直接关闭浏览器</p>\n<p>虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：</p>\n<p><strong>如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！</strong></p>\n<h3 id=\"-\">开发环境</h3>\n<table>\n<thead>\n<tr>\n<th>工具</th>\n<th>版本或描述</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>OS</td>\n<td>Windows 7</td>\n</tr>\n<tr>\n<td>JDK</td>\n<td>1.7+</td>\n</tr>\n<tr>\n<td>IDE</td>\n<td>IntelliJ IDEA 2017.3</td>\n</tr>\n<tr>\n<td>Maven</td>\n<td>3.3.1</td>\n</tr>\n<tr>\n<td>MySQL</td>\n<td>5.6.4</td>\n</tr>\n</tbody>\n</table>\n<h3 id=\"-\">模块划分</h3>\n<table>\n<thead>\n<tr>\n<th>模块</th>\n<th>释义</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>blog-core</td>\n<td>核心业务类模块，提供基本的数据操作、工具处理等</td>\n</tr>\n<tr>\n<td>blog-admin</td>\n<td>后台管理模块</td>\n</tr>\n<tr>\n<td>blog-web</td>\n<td>前台模块</td>\n</tr>\n</tbody>\n</table>\n<h3 id=\"-\">技术栈</h3>\n<ul>\n<li>Springboot 1.5.9</li>\n<li>Apache Shiro 1.2.2</li>\n<li>Logback</li>\n<li>Redis</li>\n<li>Lombok</li>\n<li>Websocket</li>\n<li>MySQL、Mybatis、Mapper、Pagehelper</li>\n<li>Freemarker</li>\n<li>Bootstrap 3.3.0</li>\n<li>wangEditor</li>\n<li>jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck</li>\n<li>阿里云OSS</li>\n<li>kaptcha</li>\n<li>Qiniu</li>\n<li>...</li>\n</ul>\n<h3 id=\"-\">使用方法</h3>\n<ol>\n<li>使用IDE导入本项目</li>\n<li>新建数据库<code>CREATE DATABASE dblog;</code></li>\n<li>导入数据库<code>docs/db/dblog.sql</code></li>\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.19) </li>\n<li>redis配置(可搜索<code>redis</code>或定位到L.69)</li>\n<li>mail配置(可搜索<code>mail</code>或定位到L.89)</li>\n<li>【<a href=\"http://qiniu.com\">七牛云</a>】配置(见sys<em>config表中qiniu</em>*开头的字段)<br>注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的<code>系统配置</code>页面修改相关配置内容</li>\n</ol>\n</li>\n<li>运行项目(三种方式)<ol>\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar target/blog-web.jar</code></li>\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\n<li>直接运行<code>BlogWebApplication.java</code></li>\n</ol>\n</li>\n<li>浏览器访问<code>http://127.0.0.1:8443</code></li>\n</ol>\n<p><strong>后台用户</strong></p>\n<p><em>超级管理员</em>： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）</p>\n<p><em>普通管理员</em>： 账号：admin  密码：123456</p>\n<p><em>评论审核管理员</em>： 账号：comment-admin  密码：123456</p>\n<p>注：后台用户的创建，尽可能做到<strong>权限最小化</strong></p>\n<p>更多详情，请参考【<a href=\"https://gitee.com/yadong.zhang/DBlog/wikis\">Wiki</a>】</p>\n','# OneBlog简介\nDBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。\n  \n**网站预览**    \n \n[https://www.zhyd.me](https://www.zhyd.me)  \n\n**开源地址**   \n1. [Gitee](https://gitee.com/yadong.zhang/DBlog)    \n2. [Github](https://github.com/zhangyd-c/DBlog)    \n\n## 写在前面的话\nps: 虽然我知道，大部分人都是来了**直接下载源代码**后就潇洒的离开，并且只有等到下次**突然想到**“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    \n\n发现更新代码了 --> 下载源码后重复上面的步骤    \n发现没更新代码 --> 直接关闭浏览器\n\n虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：\n\n**如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！**\n\n\n### 开发环境\n\n| 工具    | 版本或描述                |\n| ----- | -------------------- |\n| OS    | Windows 7            |\n| JDK   | 1.7+                 |\n| IDE   | IntelliJ IDEA 2017.3 |\n| Maven | 3.3.1                |\n| MySQL | 5.6.4                |\n\n### 模块划分\n\n| 模块         | 释义                      |\n| ---------- | ----------------------- |\n| blog-core  | 核心业务类模块，提供基本的数据操作、工具处理等 |\n| blog-admin | 后台管理模块                  |\n| blog-web   | 前台模块                    |\n\n\n### 技术栈\n\n- Springboot 1.5.9\n- Apache Shiro 1.2.2\n- Logback\n- Redis\n- Lombok\n- Websocket\n- MySQL、Mybatis、Mapper、Pagehelper\n- Freemarker\n- Bootstrap 3.3.0\n- wangEditor\n- jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck\n- 阿里云OSS\n- kaptcha\n- Qiniu\n- ...\n\n\n### 使用方法\n\n1. 使用IDE导入本项目\n2. 新建数据库`CREATE DATABASE dblog;`\n3. 导入数据库`docs/db/dblog.sql`\n4. 修改(`resources/application.yml`)配置文件\n   1. 数据库链接属性(可搜索`datasource`或定位到L.19) \n   2. redis配置(可搜索`redis`或定位到L.69)\n   3. mail配置(可搜索`mail`或定位到L.89)\n   4. 【[七牛云](http://qiniu.com)】配置(见sys_config表中qiniu_*开头的字段)    \n   注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的`系统配置`页面修改相关配置内容\n5. 运行项目(三种方式)\n   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar target/blog-web.jar`\n   2. 项目根目录下执行`mvn springboot:run`\n   3. 直接运行`BlogWebApplication.java`\n6. 浏览器访问`http://127.0.0.1:8443`\n\n\n**后台用户**\n\n_超级管理员_： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）\n\n_普通管理员_： 账号：admin  密码：123456\n\n_评论审核管理员_： 账号：comment-admin  密码：123456\n\n注：后台用户的创建，尽可能做到**权限最小化**\n\n更多详情，请参考【[Wiki](https://gitee.com/yadong.zhang/DBlog/wikis)】',0,3,1,0,1,'OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。','OneBlog,开源博客',0,'2018-06-13 09:21:28','2018-10-31 15:54:36');
/*!40000 ALTER TABLE `biz_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_article_look`
--

DROP TABLE IF EXISTS `biz_article_look`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_article_look` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) unsigned NOT NULL COMMENT '文章ID',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `look_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_article_look`
--

LOCK TABLES `biz_article_look` WRITE;
/*!40000 ALTER TABLE `biz_article_look` DISABLE KEYS */;
INSERT INTO `biz_article_look` VALUES (1,4,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:16:24','2018-04-23 10:16:24','2018-04-23 10:16:24'),(2,3,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:16:41','2018-04-23 10:16:41','2018-04-23 10:16:41'),(3,2,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:16:55','2018-04-23 10:16:55','2018-04-23 10:16:55'),(4,1,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:17:04','2018-04-23 10:17:04','2018-04-23 10:17:04'),(5,4,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:17:39','2018-04-23 10:17:39','2018-04-23 10:17:39'),(6,3,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:17:43','2018-04-23 10:17:43','2018-04-23 10:17:43'),(7,3,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:18:17','2018-04-23 10:18:17','2018-04-23 10:18:17'),(8,3,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:19:39','2018-04-23 10:19:39','2018-04-23 10:19:39'),(9,3,NULL,'0:0:0:0:0:0:0:1','2018-04-23 10:19:45','2018-04-23 10:19:45','2018-04-23 10:19:45'),(10,1,NULL,'0:0:0:0:0:0:0:1','2018-05-22 11:50:14','2018-05-22 11:50:14','2018-05-22 11:50:14'),(11,1,NULL,'0:0:0:0:0:0:0:1','2018-05-22 11:50:44','2018-05-22 11:50:44','2018-05-22 11:50:44'),(12,1,NULL,'0:0:0:0:0:0:0:1','2018-10-30 16:52:23','2018-10-30 16:52:23','2018-10-30 16:52:23'),(13,1,NULL,'0:0:0:0:0:0:0:1','2018-10-30 17:14:56','2018-10-30 17:14:56','2018-10-30 17:14:56'),(14,1,NULL,'0:0:0:0:0:0:0:1','2018-10-30 17:21:16','2018-10-30 17:21:16','2018-10-30 17:21:16'),(15,1,NULL,'0:0:0:0:0:0:0:1','2018-10-30 17:21:38','2018-10-30 17:21:38','2018-10-30 17:21:38'),(16,1,NULL,'0:0:0:0:0:0:0:1','2018-10-30 17:21:38','2018-10-30 17:21:38','2018-10-30 17:21:38'),(17,2,NULL,'0:0:0:0:0:0:0:1','2018-10-31 15:48:22','2018-10-31 15:48:22','2018-10-31 15:48:22'),(18,2,NULL,'0:0:0:0:0:0:0:1','2018-10-31 15:55:15','2018-10-31 15:55:15','2018-10-31 15:55:15'),(19,2,NULL,'0:0:0:0:0:0:0:1','2018-10-31 17:01:05','2018-10-31 17:01:05','2018-10-31 17:01:05'),(20,2,NULL,'0:0:0:0:0:0:0:1','2018-10-31 17:01:18','2018-10-31 17:01:18','2018-10-31 17:01:18'),(21,2,NULL,'0:0:0:0:0:0:0:1','2018-10-31 17:01:27','2018-10-31 17:01:27','2018-10-31 17:01:27');
/*!40000 ALTER TABLE `biz_article_look` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_article_love`
--

DROP TABLE IF EXISTS `biz_article_love`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_article_love` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) unsigned NOT NULL COMMENT '文章ID',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `love_time` datetime DEFAULT NULL COMMENT '浏览时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_article_love`
--

LOCK TABLES `biz_article_love` WRITE;
/*!40000 ALTER TABLE `biz_article_love` DISABLE KEYS */;
/*!40000 ALTER TABLE `biz_article_love` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_article_tags`
--

DROP TABLE IF EXISTS `biz_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_article_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL COMMENT '标签表主键',
  `article_id` bigint(20) unsigned NOT NULL COMMENT '文章ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_article_tags`
--

LOCK TABLES `biz_article_tags` WRITE;
/*!40000 ALTER TABLE `biz_article_tags` DISABLE KEYS */;
INSERT INTO `biz_article_tags` VALUES (1,5,1,'2018-04-23 10:14:33','2018-04-23 10:14:33'),(2,1,2,'2018-04-23 10:14:36','2018-04-23 10:14:36'),(3,2,3,'2018-04-23 10:14:38','2018-04-23 10:14:38'),(4,2,4,'2018-04-23 10:15:03','2018-04-23 10:15:03');
/*!40000 ALTER TABLE `biz_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_comment`
--

DROP TABLE IF EXISTS `biz_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` bigint(20) DEFAULT NULL COMMENT '被评论的文章或者页面的ID',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '评论人的ID',
  `pid` bigint(20) unsigned DEFAULT NULL COMMENT '父级评论的id',
  `qq` varchar(13) DEFAULT NULL COMMENT '评论人的QQ（未登录用户）',
  `nickname` varchar(13) DEFAULT NULL COMMENT '评论人的昵称（未登录用户）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '评论人的头像地址',
  `email` varchar(100) DEFAULT NULL COMMENT '评论人的邮箱地址（未登录用户）',
  `url` varchar(200) DEFAULT NULL COMMENT '评论人的网站地址（未登录用户）',
  `status` enum('VERIFYING','APPROVED','REJECT','DELETED') DEFAULT 'VERIFYING' COMMENT '评论的状态',
  `ip` varchar(64) DEFAULT NULL COMMENT '评论时的ip',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '评论时的地址',
  `os` varchar(64) DEFAULT NULL COMMENT '评论时的系统类型',
  `os_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的系统的简称',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `browser_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的浏览器的简称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论的内容',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注（审核不通过时添加）',
  `support` int(10) unsigned DEFAULT '0' COMMENT '支持（赞）',
  `oppose` int(10) unsigned DEFAULT '0' COMMENT '反对（踩）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_comment`
--

LOCK TABLES `biz_comment` WRITE;
/*!40000 ALTER TABLE `biz_comment` DISABLE KEYS */;
INSERT INTO `biz_comment` VALUES (1,1,NULL,0,'843977358','七彩狼','https://q1.qlogo.cn/g?b=qq&nk=843977358&s=40','843977358@qq.com','https://www.zhyd.me','VERIFYING','0:0:0:0:0:0:0:1',NULL,NULL,'未知','Windows 7',NULL,'Chrome 65.0.3325.146',NULL,'<p>测试评论</p>',NULL,0,0,'2018-05-22 11:50:40','2018-05-22 11:50:40'),(2,-1,NULL,0,NULL,'匿名',NULL,NULL,NULL,'VERIFYING','0:0:0:0:0:0:0:1',NULL,NULL,'未知','Windows 10',NULL,'Chrome 70.0.3538.67',NULL,'<p>test</p>',NULL,0,0,'2018-10-30 17:19:36','2018-10-30 17:19:36'),(3,-1,NULL,0,'2222234324','匿名','https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40','22@126.com',NULL,'VERIFYING','0:0:0:0:0:0:0:1',NULL,NULL,'未知','Windows 10',NULL,'Chrome 70.0.3538.67',NULL,'<p>test</p>',NULL,0,0,'2018-10-30 17:21:03','2018-10-30 17:21:03'),(4,1,NULL,0,'2222234324','匿名','https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40','22@126.com',NULL,'VERIFYING','0:0:0:0:0:0:0:1',NULL,NULL,'未知','Windows 10',NULL,'Chrome 70.0.3538.67',NULL,'<p>sdfsdf</p>',NULL,0,0,'2018-10-30 17:21:34','2018-10-30 17:21:34');
/*!40000 ALTER TABLE `biz_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_tags`
--

DROP TABLE IF EXISTS `biz_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '书签名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_tags`
--

LOCK TABLES `biz_tags` WRITE;
/*!40000 ALTER TABLE `biz_tags` DISABLE KEYS */;
INSERT INTO `biz_tags` VALUES (1,'Linux',NULL,'2018-01-14 21:35:31','2018-01-14 21:35:31'),(2,'Java',NULL,'2018-01-14 21:35:45','2018-01-14 21:35:45'),(3,'Spring',NULL,'2018-01-14 21:35:52','2018-01-14 21:35:52'),(4,'Spring Boot',NULL,'2018-01-14 21:36:01','2018-01-14 21:36:01'),(5,'其他',NULL,'2018-01-14 21:36:07','2018-01-14 21:36:07');
/*!40000 ALTER TABLE `biz_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_type`
--

DROP TABLE IF EXISTS `biz_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '文章类型名',
  `description` varchar(200) DEFAULT NULL COMMENT '类型介绍',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `available` tinyint(1) unsigned DEFAULT '1' COMMENT '是否可用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_type`
--

LOCK TABLES `biz_type` WRITE;
/*!40000 ALTER TABLE `biz_type` DISABLE KEYS */;
INSERT INTO `biz_type` VALUES (1,NULL,'前端技术','主要收集、整理的基础前端类文章，包括JS、jQuery和CSS等Web开发所需的基础的文章总结',1,'fa fa-css3',1,'2018-01-14 21:34:54','2018-01-14 21:34:54'),(2,NULL,'后端技术','网站中记录的后端类文章，包括Java、SSM、MySQL和其他在日常工作学习中所用的后端技术',2,'fa fa-coffee',1,'2018-01-14 21:34:57','2018-01-14 21:34:57'),(3,NULL,'其他文章','记录网站建设以及日常工作、学习中的闲言碎语和个人笔记等文章',3,'fa fa-folder-open-o',1,'2018-01-20 22:28:03','2018-03-01 19:27:53'),(4,1,'Javscript',NULL,NULL,NULL,1,'2018-12-15 23:08:55','2018-12-15 23:08:55'),(5,1,'CSS',NULL,NULL,NULL,1,'2018-12-15 23:09:01','2018-12-15 23:09:01'),(6,2,'Java',NULL,NULL,NULL,1,'2018-12-15 23:09:11','2018-12-15 23:09:11'),(7,2,'Spring Boot',NULL,NULL,NULL,1,'2018-12-15 23:09:48','2018-12-15 23:09:48');
/*!40000 ALTER TABLE `biz_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `home_desc` varchar(255) DEFAULT NULL COMMENT '首页描述',
  `home_keywords` varchar(255) DEFAULT NULL COMMENT '首页关键字',
  `domain` varchar(255) DEFAULT NULL COMMENT '根域名',
  `cms_url` varchar(255) DEFAULT NULL COMMENT '管理系统的url',
  `site_url` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `site_name` varchar(255) DEFAULT NULL COMMENT '站点名称',
  `site_desc` varchar(255) DEFAULT NULL COMMENT '站点描述',
  `site_favicon` varchar(255) DEFAULT NULL COMMENT '站点LOGO',
  `static_web_site` varchar(255) DEFAULT NULL COMMENT '资源文件（js、css等的路径）',
  `author_name` varchar(100) DEFAULT NULL COMMENT '站长名称',
  `author_email` varchar(100) DEFAULT NULL COMMENT '站长邮箱',
  `wx_code` varchar(255) DEFAULT NULL COMMENT '微信二维码地址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `weibo` varchar(255) DEFAULT NULL COMMENT '微博',
  `github` varchar(255) DEFAULT NULL COMMENT 'github',
  `maintenance` tinyint(1) unsigned DEFAULT NULL COMMENT '是否开启维护通知',
  `maintenance_data` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '系统维护时间',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `qiuniu_base_path` varchar(255) DEFAULT NULL COMMENT '七牛路径',
  `qiniu_access_key` varchar(100) DEFAULT NULL COMMENT '七牛ACCESS_KEY',
  `qiniu_secret_key` varchar(100) DEFAULT NULL COMMENT '七牛SECRET_KEY',
  `qiniu_bucket_name` varchar(100) DEFAULT NULL COMMENT '七牛BUCKET_NAME',
  `baidu_push_token` varchar(100) DEFAULT NULL COMMENT '百度推送的token',
  `wx_praise_code` varchar(200) DEFAULT NULL COMMENT '微信赞赏码',
  `zfb_praise_code` varchar(200) DEFAULT NULL COMMENT '支付宝赞赏码',
  `baidu_api_ak` varchar(100) DEFAULT NULL COMMENT '百度api授权AK(获取地址：http://lbsyun.baidu.com/apiconsole/key)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。','OneBlog,开源博客','zhyd.me','http://localhost:8085','http://localhost:8443','OneBlog开源博客','OneBlog是一款简洁美观、自适应的Java博客系统','http://localhost:8443/img/favicon.ico','http://localhost:8443','张亚东','yadong.zhang0415#gmail.com','https://static.zhyd.me/static/img/wechat_account.jpg','843977358','http://weibo.com/211230415','https://github.com/zhangyd-c',0,'2018-11-11 11:11:11',1,'phgd7t7cb.bkt.clouddn.com','tdX-6JCJyTF1JLvjSwzjDjfWB1P9sDfOddhrGBII','3YJfxsCiSiQ6XBVfvwZ3qmFMyeXEne_apLd5U14E','linblog',NULL,'qrcode/wx_code.png','qrcode/zfb_code.png','NwHaYlGalDEpgxm46xBaC3T9','2018-01-19 23:07:52','2018-08-28 22:33:25');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_link`
--

DROP TABLE IF EXISTS `sys_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL COMMENT '链接地址',
  `name` varchar(50) DEFAULT NULL COMMENT '链接名',
  `description` varchar(300) DEFAULT NULL COMMENT '链接介绍',
  `email` varchar(100) DEFAULT NULL COMMENT '友链站长邮箱',
  `qq` varchar(13) DEFAULT NULL COMMENT '友链站长QQ',
  `favicon` varchar(255) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `home_page_display` tinyint(1) unsigned DEFAULT '1' COMMENT '是否首页显示',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `source` enum('ADMIN','AUTOMATIC') DEFAULT 'ADMIN' COMMENT '来源：管理员添加、自动申请',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_link`
--

LOCK TABLES `sys_link` WRITE;
/*!40000 ALTER TABLE `sys_link` DISABLE KEYS */;
INSERT INTO `sys_link` VALUES (1,'https://www.zhyd.me','张亚东博客','一个程序员的个人博客','yadong.zhang0415@gmail.com',NULL,'https://static.zhyd.me/static/img/favicon.ico',1,1,NULL,'ADMIN','2016-11-16 23:32:03','2018-01-23 11:27:19'),(13,'http://tool.zhyd.me','在线工具','在线工具，只做最有用、最简单、最干净、最方便的工具网站。','yadong.zhang0415@gmail.com',NULL,'https://static.zhyd.me/static/img/favicon.ico',1,1,NULL,'ADMIN','2017-05-04 11:22:29','2017-05-09 09:11:35'),(35,'http://music.zhyd.me','我的音乐馆','我的音乐馆','yadong.zhang0415@gmail.com',NULL,'http://music.zhyd.me/images/favicon.ico',1,1,NULL,'ADMIN','2018-04-19 20:01:35','2018-04-19 20:01:35');
/*!40000 ALTER TABLE `sys_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '已登录用户ID',
  `type` enum('SYSTEM','VISIT','ERROR') NOT NULL DEFAULT 'SYSTEM' COMMENT '日志类型（系统操作日志，用户访问日志，异常记录日志）',
  `log_level` enum('ERROR','WARN','INFO') NOT NULL DEFAULT 'INFO' COMMENT '日志级别',
  `content` varchar(2000) DEFAULT NULL COMMENT '日志内容（业务操作）',
  `spider_type` varchar(20) DEFAULT NULL COMMENT '爬虫类型（当访问者被鉴定为爬虫时该字段表示爬虫的类型）',
  `ip` varchar(64) DEFAULT NULL COMMENT '操作用户的ip',
  `ua` varchar(500) DEFAULT NULL COMMENT '操作用户的user_agent',
  `os` varchar(64) DEFAULT NULL COMMENT '评论时的系统类型',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `request_url` varchar(3000) DEFAULT NULL COMMENT '请求的路径',
  `referer` varchar(3000) DEFAULT NULL COMMENT '请求来源地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/',NULL,'2018-10-30 16:51:18','2018-10-30 16:51:18'),(2,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@1a7a2feb, other={next=com.zyd.blog.business.entity.Article@3d045ff3}, relatedList=[com.zyd.blog.business.entity.Article@62dfa6cf], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/1','http://localhost:8443/','2018-10-30 16:52:23','2018-10-30 16:52:23'),(3,NULL,'SYSTEM','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入登录页面 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/passport/login/;JSESSIONID=27530806-cb8a-4cc9-94eb-dc546dc4e923',NULL,'2018-10-30 17:05:23','2018-10-30 17:05:23'),(4,NULL,'SYSTEM','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入登录页面 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/passport/login/','http://localhost:8085/passport/login/;JSESSIONID=27530806-cb8a-4cc9-94eb-dc546dc4e923','2018-10-30 17:05:26','2018-10-30 17:05:26'),(5,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/passport/login/;JSESSIONID=27530806-cb8a-4cc9-94eb-dc546dc4e923','2018-10-30 17:05:35','2018-10-30 17:05:35'),(6,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/','2018-10-30 17:05:49','2018-10-30 17:05:49'),(7,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/articles','2018-10-30 17:05:56','2018-10-30 17:05:56'),(8,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/articles','2018-10-30 17:06:16','2018-10-30 17:06:16'),(9,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/','2018-10-30 17:06:37','2018-10-30 17:06:37'),(10,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8085/','2018-10-30 17:13:09','2018-10-30 17:13:09'),(11,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@1a7c1ac, other={next=com.zyd.blog.business.entity.Article@430adbea}, relatedList=[com.zyd.blog.business.entity.Article@2d1b11c8], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/1','http://localhost:8085/','2018-10-30 17:14:56','2018-10-30 17:14:56'),(12,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/','2018-10-30 17:15:21','2018-10-30 17:15:21'),(13,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章分类[3]列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/type/3','http://localhost:8443/article/1','2018-10-30 17:19:01','2018-10-30 17:19:01'),(14,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入留言板页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/guestbook','http://localhost:8443/type/3','2018-10-30 17:19:02','2018-10-30 17:19:02'),(15,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入留言板页 | 参数: &avatar=&qq=good&nickname=匿名&email=&url=',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/guestbook','http://localhost:8443/guestbook','2018-10-30 17:19:20','2018-10-30 17:19:20'),(16,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 获取QQ信息 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/qq/good','http://localhost:8443/guestbook','2018-10-30 17:19:20','2018-10-30 17:19:20'),(17,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 发表评论 | 参数: &pid=0&content=<p>test</p>\r\n&avatar=&qq=&nickname=匿名&email=&url=&sid=-1',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/comment','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:19:36','2018-10-30 17:19:36'),(18,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入留言板页 | 参数: &avatar=&qq=good&nickname=匿名&email=&url=',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/guestbook','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:19:40','2018-10-30 17:19:40'),(19,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/','2018-10-30 17:20:05','2018-10-30 17:20:05'),(20,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 获取QQ信息 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/qq/2222','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:20:20','2018-10-30 17:20:20'),(21,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 获取QQ信息 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/qq/2222234324','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:20:28','2018-10-30 17:20:28'),(22,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 发表评论 | 参数: &pid=0&content=<p>test</p>\r\n&avatar=https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40&qq=2222234324&nickname=匿名&email=22@126.com&url=&sid=-1',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/comment','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:21:03','2018-10-30 17:21:03'),(23,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入留言板页 | 参数: &avatar=&qq=good&nickname=匿名&email=&url=',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/guestbook','http://localhost:8443/guestbook?avatar=&qq=good&nickname=%E5%8C%BF%E5%90%8D&email=&url=','2018-10-30 17:21:07','2018-10-30 17:21:07'),(24,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@171db79f, other={next=com.zyd.blog.business.entity.Article@3143041f}, relatedList=[com.zyd.blog.business.entity.Article@2b3df5c3], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/1','http://localhost:8085/','2018-10-30 17:21:16','2018-10-30 17:21:16'),(25,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 发表评论 | 参数: &pid=0&content=<p>sdfsdf</p>\r\n&avatar=https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40&qq=2222234324&nickname=匿名&email=22@126.com&url=&sid=1',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/api/comment','http://localhost:8443/article/1','2018-10-30 17:21:34','2018-10-30 17:21:34'),(26,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@4b15aad8, other={next=com.zyd.blog.business.entity.Article@b5d61eb}, relatedList=[com.zyd.blog.business.entity.Article@24178260], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/1','http://localhost:8443/article/1','2018-10-30 17:21:38','2018-10-30 17:21:38'),(27,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@5a8d3028, other={next=com.zyd.blog.business.entity.Article@5fad1ce0}, relatedList=[com.zyd.blog.business.entity.Article@709cd039], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/1','http://localhost:8443/article/1','2018-10-30 17:21:38','2018-10-30 17:21:38'),(28,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/',NULL,'2018-10-30 17:22:02','2018-10-30 17:22:02'),(29,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/',NULL,'2018-10-30 17:22:22','2018-10-30 17:22:22'),(30,NULL,'SYSTEM','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入登录页面 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/passport/login/;JSESSIONID=b28d383f-b4b6-423c-83ff-aeff7b5e2484',NULL,'2018-10-31 15:47:51','2018-10-31 15:47:51'),(31,NULL,'SYSTEM','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入登录页面 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/passport/login/','http://localhost:8085/passport/login/;JSESSIONID=b28d383f-b4b6-423c-83ff-aeff7b5e2484','2018-10-31 15:47:55','2018-10-31 15:47:55'),(32,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/passport/login/;JSESSIONID=b28d383f-b4b6-423c-83ff-aeff7b5e2484','2018-10-31 15:47:59','2018-10-31 15:47:59'),(33,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/',NULL,'2018-10-31 15:48:13','2018-10-31 15:48:13'),(34,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@43375522, other={prev=com.zyd.blog.business.entity.Article@769192e5}, relatedList=[com.zyd.blog.business.entity.Article@59dfa504], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/2','http://localhost:8443/','2018-10-31 15:48:22','2018-10-31 15:48:22'),(35,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章分类[2]列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/type/2','http://localhost:8443/','2018-10-31 15:48:46','2018-10-31 15:48:46'),(36,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章分类[1]列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/type/1','http://localhost:8443/type/2','2018-10-31 15:48:48','2018-10-31 15:48:48'),(37,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8443/type/1','2018-10-31 15:50:31','2018-10-31 15:50:31'),(38,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/','2018-10-31 15:51:25','2018-10-31 15:51:25'),(39,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/articles','2018-10-31 15:51:50','2018-10-31 15:51:50'),(40,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/','2018-10-31 15:51:56','2018-10-31 15:51:56'),(41,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/articles','2018-10-31 15:52:04','2018-10-31 15:52:04'),(42,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/','2018-10-31 15:52:07','2018-10-31 15:52:07'),(43,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/','http://localhost:8085/articles','2018-10-31 15:53:41','2018-10-31 15:53:41'),(44,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/','2018-10-31 15:54:32','2018-10-31 15:54:32'),(45,2,'SYSTEM','INFO','用户: [admin] | 操作: 修改文章[2]的状态[comment] | 参数: &id=2',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/article/update/comment','http://localhost:8085/articles','2018-10-31 15:54:35','2018-10-31 15:54:35'),(46,2,'SYSTEM','INFO','用户: [admin] | 操作: 修改文章[2]的状态[comment] | 参数: &id=2',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/article/update/comment','http://localhost:8085/articles','2018-10-31 15:54:36','2018-10-31 15:54:36'),(47,2,'SYSTEM','INFO','用户: [admin] | 操作: 进入文章列表页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8085/articles','http://localhost:8085/articles','2018-10-31 15:55:12','2018-10-31 15:55:12'),(48,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@14f9883f, other={prev=com.zyd.blog.business.entity.Article@36df1e14}, relatedList=[com.zyd.blog.business.entity.Article@295c269f], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/2','http://localhost:8085/articles','2018-10-31 15:55:15','2018-10-31 15:55:15'),(49,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8443/type/1','2018-10-31 15:55:43','2018-10-31 15:55:43'),(50,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8443/type/1','2018-10-31 15:58:22','2018-10-31 15:58:22'),(51,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8443/type/1','2018-10-31 16:00:02','2018-10-31 16:00:02'),(52,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入首页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/','http://localhost:8443/type/1','2018-10-31 17:00:49','2018-10-31 17:00:49'),(53,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@78631a05, other={prev=com.zyd.blog.business.entity.Article@647aba91}, relatedList=[com.zyd.blog.business.entity.Article@10dfa9f0], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/2','http://localhost:8443/','2018-10-31 17:01:05','2018-10-31 17:01:05'),(54,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@66d91e1b, other={prev=com.zyd.blog.business.entity.Article@2b347a51}, relatedList=[com.zyd.blog.business.entity.Article@510bd33e], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/2','http://localhost:8443/','2018-10-31 17:01:18','2018-10-31 17:01:18'),(55,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 进入文章[{article=com.zyd.blog.business.entity.Article@64e99649, other={prev=com.zyd.blog.business.entity.Article@46bb173f}, relatedList=[com.zyd.blog.business.entity.Article@46339b56], articleDetail=true}]详情页 | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/article/2','http://localhost:8443/','2018-10-31 17:01:27','2018-10-31 17:01:27'),(56,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 查看sitemap.txt | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/sitemap.txt',NULL,'2018-10-31 17:25:18','2018-10-31 17:25:18'),(57,NULL,'VISIT','INFO','访客: [0:0:0:0:0:0:0:1] | 操作: 查看robots | 参数: ',NULL,'0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36','Windows 10','Chrome','http://localhost:8443/robots.txt',NULL,'2018-10-31 17:25:53','2018-10-31 17:25:53');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL COMMENT '被通知的用户ID',
  `status` enum('RELEASE','NOT_RELEASE') DEFAULT 'NOT_RELEASE' COMMENT '通知状态',
  `title` varchar(200) DEFAULT NULL COMMENT '通知的标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '通知的内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,1,'RELEASE','OneBlog开源博客','OneBlog开源博客，一款超好用的Java版开源博客','2018-05-22 10:26:26','2018-08-28 23:37:46'),(2,1,'RELEASE','问题反馈','在使用过程中，有问题请先参考相关文档，确实无法解决的，请优先提Issue，感谢各位老铁','2018-08-28 23:40:45','2018-08-28 23:40:45');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_resources`
--

DROP TABLE IF EXISTS `sys_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT '0',
  `sort` int(10) unsigned DEFAULT NULL,
  `external` tinyint(1) unsigned DEFAULT NULL COMMENT '是否外部链接',
  `available` tinyint(1) unsigned DEFAULT '0',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_resource_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_resources`
--

LOCK TABLES `sys_resources` WRITE;
/*!40000 ALTER TABLE `sys_resources` DISABLE KEYS */;
INSERT INTO `sys_resources` VALUES (1,'用户管理','menu','','',0,4,0,1,'fa fa-users','2018-05-22 10:08:05','2018-08-24 14:11:29'),(2,'用户列表','menu','/users','users',1,1,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(3,'新增用户','button',NULL,'user:add',2,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(4,'批量删除用户','button',NULL,'user:batchDelete',2,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(5,'编辑用户','button',NULL,'user:edit,user:get',2,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(6,'删除用户','button',NULL,'user:delete',2,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(7,'分配用户角色','button',NULL,'user:allotRole',2,6,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(8,'权限管理','menu','','',0,3,0,1,'fa fa-cogs','2018-05-22 10:08:05','2018-08-24 14:11:10'),(9,'资源管理','menu','/resources','resources',8,1,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(10,'新增资源','button',NULL,'resource:add',9,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(11,'批量删除资源','button',NULL,'resource:batchDelete',9,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(12,'编辑资源','button',NULL,'resource:edit,resource:get',9,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(13,'删除资源','button',NULL,'resource:delete',9,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(14,'角色管理','menu','/roles','roles',8,2,0,1,'','2018-05-22 10:08:05','2018-05-22 10:08:05'),(15,'新增角色','button',NULL,'role:add',14,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(16,'批量删除角色','button',NULL,'role:batchDelete',14,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(17,'编辑角色','button',NULL,'role:edit,role:get',14,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(18,'删除角色','button',NULL,'role:delete',14,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(19,'分配角色资源','button',NULL,'role:allotResource',14,6,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(20,'文章管理','menu','','',0,1,0,1,'fa fa-list','2018-05-22 10:08:05','2018-08-24 14:10:25'),(21,'文章列表','menu','/articles','articles',20,1,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(22,'发表文章','button',NULL,'article:publish',21,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(23,'批量删除文章','button',NULL,'article:batchDelete',21,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(24,'批量推送文章','button',NULL,'article:batchPush',21,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(25,'推送文章','button',NULL,'article:push',21,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(26,'置顶文章','button',NULL,'article:top',21,6,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(27,'推荐文章','button',NULL,'article:recommend',21,7,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(28,'编辑文章','button',NULL,'article:edit,article:get',21,8,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(29,'删除文章','button',NULL,'article:delete',21,9,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(30,'分类列表','menu','/article/types','types',20,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(31,'添加分类','button',NULL,'type:add',30,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(32,'批量删除分类','button',NULL,'type:batchDelete',30,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(33,'编辑分类','button',NULL,'type:edit,type:get',30,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(34,'删除分类','button',NULL,'type:delete',30,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(35,'标签列表','menu','/article/tags','tags',20,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(36,'添加标签','button',NULL,'tag:add',35,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(37,'批量删除标签','button',NULL,'tag:batchDelete',35,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(38,'编辑标签','button',NULL,'tag:edit,tag:get',35,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(39,'删除标签','button',NULL,'tag:delete',35,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(40,'网站管理','menu','','',0,2,0,1,'fa fa-globe','2018-05-22 10:08:05','2018-08-24 14:10:45'),(41,'友情链接','menu','/links','links',40,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(42,'添加友情链接','button',NULL,'link:add',41,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(43,'批量删除友情链接','button',NULL,'link:batchDelete',41,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(44,'编辑友情链接','button',NULL,'link:edit,link:get',41,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(45,'删除友情链接','button',NULL,'link:delete',41,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(46,'评论管理','menu','/comments','comments',40,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(47,'批量删除评论','button',NULL,'comment:batchDelete',46,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(48,'回复评论','button',NULL,'comment:reply',46,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(49,'审核评论','button',NULL,'comment:audit',46,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(50,'删除评论','button',NULL,'comment:delete',46,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(51,'模板管理','menu','/templates','templates',40,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(52,'添加模板','button',NULL,'template:add',51,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(53,'批量删除模板','button',NULL,'template:batchDelete',51,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(54,'编辑模板','button',NULL,'template:edit,template:get',51,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(55,'删除模板','button',NULL,'template:delete',51,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(56,'更新日志','menu','/updates','updateLogs',40,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(57,'添加更新日志','button',NULL,'updateLog:add',51,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(58,'批量删除更新日志','button',NULL,'updateLog:batchDelete',51,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(59,'编辑更新日志','button',NULL,'updateLog:edit,updateLog:get',51,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(60,'删除更新日志','button',NULL,'updateLog:delete',51,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(61,'公告管理','menu','/notices','notices',40,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(62,'添加公告','button',NULL,'notice:add',61,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(63,'批量删除公告','button',NULL,'notice:batchDelete',61,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(64,'编辑公告','button',NULL,'notice:edit,notice:get',61,4,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(65,'删除公告','button',NULL,'notice:delete',61,5,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(66,'发布公告','button',NULL,'notice:release',61,6,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(67,'撤回公告','button',NULL,'notice:withdraw',61,7,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(68,'测试页面','menu','','',0,6,0,1,'fa fa-desktop','2018-05-22 10:08:05','2018-08-24 14:11:42'),(69,'icons图标','menu','/icons','icons',68,2,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(70,'shiro测试','menu','/shiro','shiro',68,3,0,1,NULL,'2018-05-22 10:08:05','2018-05-22 10:08:05'),(71,'推送消息','menu','/notice','notice',72,NULL,0,1,'','2018-06-26 16:16:51','2018-06-26 16:16:51'),(72,'实验室','menu','','',0,5,0,1,'fa fa-flask','2018-07-30 11:28:50','2018-08-24 14:11:37'),(73,'文章搬运工','menu','/remover','remover',72,NULL,0,1,'','2018-08-17 21:16:24','2018-08-17 21:22:58');
/*!40000 ALTER TABLE `sys_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名',
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'role:root','超级管理员',1,'2017-12-20 16:40:24','2017-12-20 16:40:26'),(2,'role:admin','管理员',1,'2017-12-22 13:56:39','2017-12-22 13:56:39'),(3,'role:comment','评论审核管理员',1,'2018-05-22 11:37:37','2018-05-22 11:37:37');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_resources`
--

DROP TABLE IF EXISTS `sys_role_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `resources_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_resources`
--

LOCK TABLES `sys_role_resources` WRITE;
/*!40000 ALTER TABLE `sys_role_resources` DISABLE KEYS */;
INSERT INTO `sys_role_resources` VALUES (1,1,1,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(2,1,2,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(3,1,3,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(4,1,4,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(5,1,5,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(6,1,6,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(7,1,7,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(8,1,8,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(9,1,9,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(10,1,10,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(11,1,11,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(12,1,12,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(13,1,13,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(14,1,14,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(15,1,15,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(16,1,16,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(17,1,17,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(18,1,18,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(19,1,19,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(20,1,20,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(21,1,21,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(22,1,22,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(23,1,23,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(24,1,24,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(25,1,25,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(26,1,26,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(27,1,27,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(28,1,28,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(29,1,29,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(30,1,30,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(31,1,31,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(32,1,32,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(33,1,33,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(34,1,34,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(35,1,35,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(36,1,36,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(37,1,37,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(38,1,38,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(39,1,39,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(40,1,40,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(41,1,41,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(42,1,42,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(43,1,43,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(44,1,44,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(45,1,45,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(46,1,46,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(47,1,47,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(48,1,48,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(49,1,49,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(50,1,50,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(51,1,51,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(52,1,52,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(53,1,57,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(54,1,53,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(55,1,58,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(56,1,54,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(57,1,59,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(58,1,55,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(59,1,60,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(60,1,56,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(61,1,61,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(62,1,62,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(63,1,63,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(64,1,64,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(65,1,65,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(66,1,66,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(67,1,67,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(68,1,68,'2018-05-22 09:28:07','2018-05-22 09:28:07'),(84,2,20,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(85,2,21,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(86,2,24,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(87,2,25,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(88,2,26,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(89,2,27,'2018-05-22 10:13:40','2018-05-22 10:13:40'),(93,3,40,'2018-05-22 11:37:48','2018-05-22 11:37:48'),(94,3,46,'2018-05-22 11:37:48','2018-05-22 11:37:48'),(95,3,48,'2018-05-22 11:37:48','2018-05-22 11:37:48'),(96,3,49,'2018-05-22 11:37:48','2018-05-22 11:37:48');
/*!40000 ALTER TABLE `sys_role_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ref_key` varchar(100) DEFAULT NULL COMMENT '键',
  `ref_value` text COMMENT '模板内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,'TM_SITEMAP_XML','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\">\r\n	<url>\r\n		<loc>${config.siteUrl}</loc>\r\n		<priority>1.0</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/about</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/links</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/guestbook</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/updateLog</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/recommended</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<#list articleList as item>\r\n		<url>\r\n			<loc>${config.siteUrl}/article/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n	<#list articleTypeList as item>\r\n	   <url>\r\n			<loc>${config.siteUrl}/type/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n	\r\n	<#list articleTagsList as item>\r\n	   <url>\r\n			<loc>${config.siteUrl}/tag/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n</urlset>','2018-01-19 10:47:06','2018-03-13 17:41:31'),(2,'TM_SITEMAP_TXT','${config.siteUrl}\r\n${config.siteUrl}/about\r\n${config.siteUrl}/links\r\n${config.siteUrl}/guestbook\r\n${config.siteUrl}/updateLog\r\n${config.siteUrl}/recommended\r\n<#list articleList as item>\r\n${config.siteUrl}/article/${item.id}\r\n</#list>\r\n<#list articleTypeList as item>\r\n${config.siteUrl}/type/${item.id}\r\n</#list>\r\n<#list articleTagsList as item>\r\n${config.siteUrl}/tag/${item.id}\r\n</#list>','2018-01-19 10:47:12','2018-02-28 12:11:59'),(3,'TM_SITEMAP_HTML','<!DOCTYPE html>\r\n<html lang=\"zh-CN\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title>${config.siteName} 网站地图</title>\r\n    <meta name=\"author\" content=\"SiteMapX.com\"/>\r\n    <meta name=\"robots\" content=\"index,follow\"/>\r\n    <style type=\"text/css\">\r\n        body {\r\n            color: #000000;\r\n            background: #ffffff;\r\n            margin: 20px;\r\n            font-family: Verdana, Arial, Helvetica, sans-serif;\r\n            font-size: 12px;\r\n        }\r\n\r\n        #myTable {\r\n            list-style: none;\r\n            margin: 10px 0px 10px 0px;\r\n            padding: 0px;\r\n            width: 100%;\r\n            min-width: 804px;\r\n        }\r\n\r\n        #myTable li {\r\n            list-style-type: none;\r\n            width: 100%;\r\n            min-width: 404px;\r\n            height: 20px;\r\n            line-height: 20px;\r\n        }\r\n\r\n        .pull-left{\r\n            float: left!important;\r\n        }\r\n        .pull-right{\r\n            float: right!important;\r\n        }\r\n\r\n        #myTable li .T1-h {\r\n            font-weight: bold;\r\n            min-width: 300px;\r\n        }\r\n\r\n        #myTable li .T2-h {\r\n            width: 200px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T3-h {\r\n            width: 200px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T4-h {\r\n            width: 100px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T1 {\r\n            min-width: 300px;\r\n        }\r\n\r\n        #myTable li .T2 {\r\n            width: 200px;\r\n        }\r\n\r\n        #myTable li .T3 {\r\n            width: 200px;\r\n        }\r\n\r\n        #myTable li .T4 {\r\n            width: 100px;\r\n        }\r\n\r\n        #footer {\r\n            padding: 2px;\r\n            margin: 0px;\r\n            font-size: 8pt;\r\n            color: gray;\r\n            min-width: 900px;\r\n        }\r\n\r\n        #footer a {\r\n            color: gray;\r\n        }\r\n\r\n        .myClear {\r\n            clear: both;\r\n        }\r\n\r\n        #nav, #content, #footer {padding: 8px; border: 1px solid #EEEEEE; clear: both; width: 95%; margin: auto; margin-top: 10px;}\r\n\r\n    </style>\r\n</head>\r\n<body>\r\n<h2 style=\"text-align: center; margin-top: 20px\">${config.siteName?if_exists} 网站地图 </h2>\r\n<div id=\"nav\"><a href=\"${config.siteUrl?if_exists}\"><strong>${config.siteName?if_exists}</strong></a> &raquo; <a href=\"${config.siteUrl?if_exists}/sitemap.html\">站点地图</a></div>\r\n<div id=\"content\">\r\n    <h3>最新文章</h3>\r\n    <ul id=\"myTable\">\r\n        <li>\r\n            <div class=\"T1-h pull-left\">URL</div>\r\n            <div class=\"T2-h pull-right\">Last Change</div>\r\n            <div class=\"T3-h pull-right\">Change Frequency</div>\r\n            <div class=\"T4-h pull-right\">Priority</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}\" title=\"${config.siteName}\">${config.siteName} | 一个程序员的个人博客</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">1</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/about\" title=\"${config.siteName}\">关于 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/links\" title=\"${config.siteName}\">友情链接 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/guestbook\" title=\"${config.siteName}\">留言板 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/updateLog\" title=\"${config.siteName}\">网站更新记录 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n		<div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/recommended\" title=\"${config.siteName}\">站长推荐 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <#list articleList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/article/${item.id}\" title=\"${item.title}\">${item.title} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"content\">\r\n    <h3>分类目录</h3>\r\n    <ul id=\"myTable\">\r\n        <#list articleTypeList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/type/${item.id}\" title=\"${item.name}\">${item.name} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"content\">\r\n    <h3>标签目录</h3>\r\n    <ul id=\"myTable\">\r\n        <#list articleTagsList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/tag/${item.id}\" title=\"${item.name}\">${item.name} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"footer\">\r\n    该文件由<a href=\"${config.siteUrl}\" title=\"${config.siteName}\">${config.siteName}</a>网站自动生成。\r\n</div>\r\n</body>\r\n</html>','2018-01-19 10:47:43','2018-03-13 17:40:52'),(4,'TM_ROBOTS','Crawl-delay: 5\r\nSitemap: https://www.zhyd.me/sitemap.txt\r\nSitemap: https://www.zhyd.me/sitemap.xml\r\nSitemap: https://www.zhyd.me/sitemap.html\r\n','2018-01-19 10:48:27','2018-01-19 10:48:27'),(5,'TM_LINKS','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>友情链接操作通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            友情链接操作通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>站长<a href=\"${link.url?if_exists}\" target=\"_blank\">${link.name?if_exists}</a>，您好!</p>\r\n        <p>您于 ${link.createTime?string(\'yyyy-MM-dd HH:mm:ss\')} 提交的友链申请已通过系统审核。以下为您提交的信息，请确认（如有误，请联系我）！</p>\r\n        <p>\r\n        <ul>\r\n            <li>${link.name?if_exists}</li>\r\n            <li>${link.url?if_exists}</li>\r\n            <li>${link.description?if_exists}</li>\r\n            <li>${link.email?if_exists}</li>\r\n            <li>${link.qq?if_exists}</li>\r\n            <li><img src=\"${link.favicon?if_exists}\" width=\"100\" alt=\"LOGO\"></li>\r\n        </ul>\r\n        </p>\r\n        <p>本站会不定期检查连接有效性，如果因为贵站改版、服务到期等原因导致无法正常访问的，我会暂时停掉贵站友链，待贵站可以正常访问后，本站会继续启用贵站友链。</p>\r\n        <p>特别注意：以下情况，本站将在不做任何通知下，<strong>取消友链</strong>！</p>\r\n        <ul>\r\n            <li>私自取消本站友情链接</li>\r\n            <li>更换域名且未通知本站</li>\r\n            <li>网站内容长期不更新</li>\r\n            <li>友链上使用诸如nofollow之类的属性</li>\r\n        </ul>\r\n        <p>感谢您对 <a style=\"text-decoration:none;\" href=\"${config.siteUrl?if_exists}\" target=\"_blank\">${config.siteName?if_exists}</a> 的关注，如您有任何疑问，欢迎来我网站<a style=\"text-decoration:none;\" href=\"${config.siteUrl}/guestbook\" target=\"_blank\">留言</a>。</p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>','2018-01-19 10:48:54','2018-01-19 10:48:54'),(6,'TM_COMMENT_AUDIT','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>评论审核结果通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            评论审核结果通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>${comment.nickname?if_exists}，您好!</p>\r\n        <p>\r\n            您于 ${comment.createTime?string(\'yyyy-MM-dd HH:mm:ss\')} 在文章《${config.siteUrl?if_exists}${comment.sourceUrl?if_exists}》 上发表的<span class=\"il\">评论</span>：\r\n        </p>\r\n        <div style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\">${comment.content}</div>\r\n        <#if comment.status == \'APPROVED\'>\r\n        <p>已通过管理员审核并显示。</p>\r\n        <p>\r\n            您可以点击 <a style=\"text-decoration:none;\" href=\"${config.siteUrl}${comment.sourceUrl}\" target=\"_blank\">链接</a>查看回复的完整內容。\r\n        </p>\r\n        <#elseif comment.status == \'REJECT\'>\r\n        <p>审核失败！失败原因：</p>\r\n        <p style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\">${comment.remark}</p>\r\n        <#elseif comment.status == \'DELETED\'>\r\n        <p>已被管理员删除！删除原因：</p>\r\n        <p style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\">${comment.remark}</p>\r\n        <#else>\r\n        <p>管理员正在审核中！审核通过后将给您及时发送通知！</p>\r\n        </#if>\r\n        <p>感谢您对 <a style=\"text-decoration:none;\" href=\"${config.siteUrl}\" target=\"_blank\">${config.siteName}</a> 的关注，如您有任何疑问，欢迎来我网站<a style=\"text-decoration:none;\" href=\"${config.siteUrl}/guestbook\" target=\"_blank\">留言</a>。</p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>','2018-01-26 21:17:38','2018-01-26 21:17:38'),(7,'TM_COMMENT_REPLY','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>评论回复通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            评论回复通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>${comment.nickname}，您好!</p>\r\n        <p>\r\n            您于 ${comment.createTime?string(\'yyyy-MM-dd HH:mm:ss\')} 在文章《${config.siteUrl}${comment.sourceUrl}》 上发表的<span class=\"il\">评论</span>：\r\n        </p>\r\n        <div style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\">${comment.content}</div>\r\n        <p>\r\n            有了 <strong>新的回复</strong>！您可以点击 <a style=\"text-decoration:none;\" href=\"${config.siteUrl}${comment.sourceUrl}\" target=\"_blank\">链接</a>查看回复的完整內容。\r\n        </p>\r\n        <p>感谢您对 <a style=\"text-decoration:none;\" href=\"${config.siteUrl}\" target=\"_blank\">${config.siteName}</a> 的关注，如您有任何疑问，欢迎来我网站<a style=\"text-decoration:none;\" href=\"${config.siteUrl}/guestbook\" target=\"_blank\">留言</a>。</p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>','2018-01-26 21:17:55','2018-01-26 21:17:55'),(8,'TM_LINKS_TO_ADMIN','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>友情链接操作通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            友情链接操作通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>有新的友情链接加入，信息如下</p>\r\n        <p>\r\n        <ul>\r\n            <li>${link.name?if_exists}</li>\r\n            <li>${link.url?if_exists}</li>\r\n            <li>${link.description?if_exists}</li>\r\n            <#if link.favicon?exists><li><img src=\"${link.favicon?if_exists}\" width=\"100\" alt=\"LOGO\"></li></#if>\r\n        </ul>\r\n        </p>\r\n        <p><a style=\"text-decoration:none;\" href=\"http://admin.zhyd.me\" target=\"_blank\">去后台继续审核</a>。</p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>','2018-03-31 14:14:11','2018-03-31 14:14:11'),(9,'TM_NEW_COMMENT','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>新评论通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            新评论通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>\r\n            评论内容：\r\n        </p>\r\n        <div style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\"><#if comment?exists>${comment.content}<#else>**无评论内容**</#if></div>\r\n        <p>\r\n            <a style=\"text-decoration:none;\" href=\"${config.siteUrl}${comment.sourceUrl}\" target=\"_blank\">查看完整评论</a>\r\n        </p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>','2018-03-31 14:19:04','2018-03-31 14:19:04');
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_update_recorde`
--

DROP TABLE IF EXISTS `sys_update_recorde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_update_recorde` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(20) DEFAULT NULL COMMENT '更新版本',
  `description` varchar(2500) DEFAULT NULL COMMENT '更新记录备注',
  `recorde_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '项目更新时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_update_recorde`
--

LOCK TABLES `sys_update_recorde` WRITE;
/*!40000 ALTER TABLE `sys_update_recorde` DISABLE KEYS */;
INSERT INTO `sys_update_recorde` VALUES (1,'1.0.1','第一版','2018-01-19 22:16:40','2018-01-19 22:16:40','2018-01-19 22:16:40');
/*!40000 ALTER TABLE `sys_update_recorde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL COMMENT '登录密码',
  `nickname` varchar(30) DEFAULT '' COMMENT '昵称',
  `mobile` varchar(30) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `gender` tinyint(2) unsigned DEFAULT NULL COMMENT '性别',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `user_type` enum('ROOT','ADMIN','USER') DEFAULT 'ADMIN' COMMENT '超级管理员、管理员、普通用户',
  `company` varchar(100) DEFAULT NULL COMMENT '公司',
  `blog` varchar(255) DEFAULT NULL COMMENT '个人博客地址',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `source` enum('GITHUB','WEIBO','QQ','ZHYD') DEFAULT 'ZHYD' COMMENT '用户来源(默认ZHYD=本网站注册用户)',
  `privacy` tinyint(2) DEFAULT NULL COMMENT '隐私（1：公开，0：不公开）',
  `notification` tinyint(2) unsigned DEFAULT NULL COMMENT '通知：(1：通知显示消息详情，2：通知不显示详情)',
  `score` int(10) unsigned DEFAULT '0' COMMENT '金币值',
  `experience` int(10) unsigned DEFAULT '0' COMMENT '经验值',
  `reg_ip` varchar(30) DEFAULT NULL COMMENT '注册IP',
  `last_login_ip` varchar(30) DEFAULT NULL COMMENT '最近登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近登录时间',
  `login_count` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  `remark` varchar(100) DEFAULT NULL COMMENT '用户备注',
  `status` int(1) unsigned DEFAULT NULL COMMENT '用户状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'root','CGUx1FN++xS+4wNDFeN6DA==','超级管理员','15151551516','843977358@qq.com','843977358',NULL,NULL,'https://static.zhyd.me/static/img/favicon.ico','ROOT',NULL,NULL,NULL,'ZHYD',NULL,NULL,0,0,NULL,'0:0:0:0:0:0:0:1','2018-05-22 11:14:19',177,NULL,1,'2018-01-02 09:32:15','2018-05-22 11:14:19'),(2,'admin','gXp2EbyZ+sB/A6QUMhiUJQ==','管理员','15151551516','843977358@qq.com','843977358',NULL,NULL,NULL,'ADMIN',NULL,NULL,NULL,'ZHYD',1,1,0,0,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:1','2018-10-31 15:47:59',4,NULL,1,'2018-01-02 15:56:34','2018-10-31 15:47:59'),(3,'comment-admin','x9qCx3yP05yWfIE5wXbCsg==','评论审核管理员','','','',NULL,NULL,NULL,'ADMIN',NULL,NULL,NULL,'ZHYD',1,1,0,0,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:1','2018-05-22 11:43:45',1,NULL,1,'2018-05-22 11:43:22','2018-05-22 11:43:45');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1,'2018-01-02 10:47:27','2018-01-02 10:47:27'),(2,2,2,'2018-01-05 18:21:02','2018-01-05 18:21:02'),(3,3,3,'2018-05-22 11:43:31','2018-05-22 11:43:31');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('good','good','113',1);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-21 21:37:23
