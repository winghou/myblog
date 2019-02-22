-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: lblog
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `content` longtext COMMENT '文章内容',
  `type_id` bigint(20) unsigned NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `recommended` tinyint(1) unsigned DEFAULT '0' COMMENT '是否推荐',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键字，优化搜索',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'OneBlog简介',1,'<h1 id=\"dblog-\">OneBlog简介</h1>\r\n<p>OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。</p>\r\n<p><strong>网站预览</strong>    </p>\r\n<p><a href=\"https://www.zhyd.me\">https://www.zhyd.me</a>  </p>\r\n<p><strong>开源地址</strong>   </p>\r\n<ol>\r\n<li><a href=\"https://gitee.com/yadong.zhang/DBlog\">Gitee</a>    </li>\r\n<li><a href=\"https://github.com/zhangyd-c/DBlog\">Github</a>    </li>\r\n</ol>\r\n<h2 id=\"-\">写在前面的话</h2>\r\n<p>ps: 虽然我知道，大部分人都是来了<strong>直接下载源代码</strong>后就潇洒的离开，并且只有等到下次<strong>突然想到</strong>“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    </p>\r\n<p>发现更新代码了 --&gt; 下载源码后重复上面的步骤<br>发现没更新代码 --&gt; 直接关闭浏览器</p>\r\n<p>虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：</p>\r\n<p><strong>如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！</strong></p>\r\n<h3 id=\"-\">开发环境</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>工具</th>\r\n<th>版本或描述</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>OS</td>\r\n<td>Windows 7</td>\r\n</tr>\r\n<tr>\r\n<td>JDK</td>\r\n<td>1.7+</td>\r\n</tr>\r\n<tr>\r\n<td>IDE</td>\r\n<td>IntelliJ IDEA 2017.3</td>\r\n</tr>\r\n<tr>\r\n<td>Maven</td>\r\n<td>3.3.1</td>\r\n</tr>\r\n<tr>\r\n<td>MySQL</td>\r\n<td>5.6.4</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 id=\"-\">模块划分</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>模块</th>\r\n<th>释义</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>blog-core</td>\r\n<td>核心业务类模块，提供基本的数据操作、工具处理等</td>\r\n</tr>\r\n<tr>\r\n<td>blog-admin</td>\r\n<td>后台管理模块</td>\r\n</tr>\r\n<tr>\r\n<td>blog-web</td>\r\n<td>前台模块</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 id=\"-\">技术栈</h3>\r\n<ul>\r\n<li>Springboot 1.5.9</li>\r\n<li>Apache Shiro 1.2.2</li>\r\n<li>Logback</li>\r\n<li>Redis</li>\r\n<li>Lombok</li>\r\n<li>Websocket</li>\r\n<li>MySQL、Mybatis、Mapper、Pagehelper</li>\r\n<li>Freemarker</li>\r\n<li>Bootstrap 3.3.0</li>\r\n<li>wangEditor</li>\r\n<li>jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck</li>\r\n<li>阿里云OSS</li>\r\n<li>kaptcha</li>\r\n<li>Qiniu</li>\r\n<li>...</li>\r\n</ul>\r\n<h3 id=\"-\">使用方法</h3>\r\n<ol>\r\n<li>使用IDE导入本项目</li>\r\n<li>新建数据库<code>CREATE DATABASE dblog;</code></li>\r\n<li>导入数据库<code>docs/db/dblog.sql</code></li>\r\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\r\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.19) </li>\r\n<li>redis配置(可搜索<code>redis</code>或定位到L.69)</li>\r\n<li>mail配置(可搜索<code>mail</code>或定位到L.89)</li>\r\n<li>【<a href=\"http://qiniu.com\">七牛云</a>】配置(见sys<em>config表中qiniu</em>*开头的字段)<br>注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的<code>系统配置</code>页面修改相关配置内容</li>\r\n</ol>\r\n</li>\r\n<li>运行项目(三种方式)<ol>\r\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar target/blog-web.jar</code></li>\r\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\r\n<li>直接运行<code>BlogWebApplication.java</code></li>\r\n</ol>\r\n</li>\r\n<li>浏览器访问<code>http://127.0.0.1:8443</code></li>\r\n</ol>\r\n<p><strong>后台用户</strong></p>\r\n<p><em>超级管理员</em>： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）</p>\r\n<p><em>普通管理员</em>： 账号：admin  密码：123456</p>\r\n<p><em>评论审核管理员</em>： 账号：comment-admin  密码：123456</p>\r\n<p>注：后台用户的创建，尽可能做到<strong>权限最小化</strong></p>\r\n<p>更多详情，请参考【<a href=\"https://gitee.com/yadong.zhang/DBlog/wikis\">Wiki</a>】</p>\r\n<h3 id=\"-\">更新日志</h3>\r\n<p>2018-06-10</p>\r\n<p><strong>修改功能：</strong></p>\r\n<p>新增：<br>    markdown版的编辑器、评论框<br>    控制文章的评论框是否显示<br>    修改密码功能<br>优化：相关页面进行优化    </p>\r\n<p>2018-06-05</p>\r\n<p><strong>修改功能：</strong></p>\r\n<p>修复： admin用户首页报错的问题    </p>\r\n<p>优化：</p>\r\n<ol>\r\n<li>ROOT用户默认拥有所有权限</li>\r\n<li>admin页面改为macro引用的方式</li>\r\n<li>登录界面</li>\r\n<li>日志记录</li>\r\n</ol>\r\n<p>2018-05-25</p>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>修复后台标签等分页失败的问题</li>\r\n<li>修复前台自动申请友链失败的问题</li>\r\n<li>其他一些问题</li>\r\n</ol>\r\n<p>2018-05-22</p>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>完善shiro权限（数据库、页面）。注：需要重新执行下<code>sys_resources</code>和<code>sys_role_resources</code>两张表的<code>insert</code>语句</li>\r\n<li>redis配置默认不含密码（鉴于大多数朋友的redis都没有密码做此修改，不过本人 <strong>强烈建议</strong>设置下密码）</li>\r\n</ol>\r\n<p>2018-05-18</p>\r\n<p><strong>修复bug：</strong></p>\r\n<ol>\r\n<li>web端自动申请友链后不显示的问题</li>\r\n<li>config表修改后不能实时刷新的问题</li>\r\n</ol>\r\n<p><strong>增加功能：</strong></p>\r\n<ol>\r\n<li>网站赞赏码</li>\r\n<li>百度推送功能(链接提交到百度站长平台)</li>\r\n</ol>\r\n<p><strong>修改功能：</strong></p>\r\n<ol>\r\n<li>百度api的ak和百度推送的token以及七牛云的配置改为通过config表管理</li>\r\n<li>admin模块菜单通过标签实时获取</li>\r\n<li>弹窗工具类js结构调整</li>\r\n</ol>\r\n<p>你能看到这儿已经很不容易了，剩下的自己先摸索摸索吧，实在不行，加QQ群<a href=\"http://shang.qq.com/wpa/qunwpa?idkey=9f986e9b33b1de953e1ef9a96cdeec990affd0ac7855e00ff103514de2027b60\">190886500</a>，进群可以选择性的备注：<del>欧巴群主我爱你</del>(咳咳，鉴于部分群友的抗议，该备注就不用了)，麻烦大家换成：<code>我猜群主一定很帅</code></p>\r\n<h3 id=\"-\">图片预览</h3>\r\n<p><strong>前台页面</strong><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-index.png?v=1.0\" alt=\"PC-首页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/pc-detail.png?v=1.0\" alt=\"PC-文章详情页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/m.png?v=1.0\" alt=\"手机\"><br><strong>后台页面</strong><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-index.png?v=1.0\" alt=\"首页\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-menu.png?v=1.0\" alt=\"菜单\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-articles.png?v=1.0\" alt=\"文章列表\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-article2.png?v=1.0\" alt=\"发表文章\"><br><img src=\"https://gitee.com/uploads/images/2018/0610/145228_06541ada_784199.png?v=1.0\" alt=\"markdown版的编辑器\" title=\"markdown版的编辑器\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role.png?v=1.0\" alt=\"角色列表\"><br><img src=\"https://gitee.com/yadong.zhang/DBlog/raw/master/docs/img/admin-role2.png?v=1.0\" alt=\"角色分配\"></p>\r\n<h3 id=\"-\">生命不息，折腾不止！ 更多信息，请关注：</h3>\r\n<ol>\r\n<li><a href=\"https://www.zhyd.me\">我的博客</a></li>\r\n<li><a href=\"http://weibo.com/211230415\">我的微博</a></li>\r\n<li><a href=\"http://www.toutiao.com/c/user/3286958681/\">我的头条号</a></li>\r\n<li><p><a href=\"http://www.imooc.com/u/1175248/articles\">我的mooc</a></p>\r\n<h3 id=\"-\">有任何问题可以</h3>\r\n<ul>\r\n<li><a href=\"https://www.zhyd.me/guestbook\">给我留言</a></li>\r\n</ul>\r\n</li>\r\n</ol>\r\n<h3 id=\"-\">开源协议</h3>\r\n<p> <a href=\"https://gitee.com/yadong.zhang/DBlog/blob/master/LICENSE\">MIT</a></p>\r\n',3,1,0,'OneBlog,开源博客',1,'2018-06-13 09:20:19','2018-06-13 09:20:19'),(2,'OneBlog简介（未开启评论）',1,'<h1 id=\"dblog-\">OneBlog简介</h1>\n<p>OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。</p>\n<p><strong>网站预览</strong>    </p>\n<p><a href=\"https://www.zhyd.me\">https://www.zhyd.me</a>  </p>\n<p><strong>开源地址</strong>   </p>\n<ol>\n<li><a href=\"https://gitee.com/yadong.zhang/DBlog\">Gitee</a>    </li>\n<li><a href=\"https://github.com/zhangyd-c/DBlog\">Github</a>    </li>\n</ol>\n<h2 id=\"-\">写在前面的话</h2>\n<p>ps: 虽然我知道，大部分人都是来了<strong>直接下载源代码</strong>后就潇洒的离开，并且只有等到下次<strong>突然想到</strong>“我天~~我得去看看OneBlog这烂项目更新新功能了吗”的时候才会重新来到这儿，即使你重新来过，我估计你也只有两个选择：    </p>\n<p>发现更新代码了 --&gt; 下载源码后重复上面的步骤<br>发现没更新代码 --&gt; 直接关闭浏览器</p>\n<p>虽然我知道现实就是如此的残酷，但我还是要以我萤虫之力对各位到来的同仁发出一声诚挚的嘶吼：</p>\n<p><strong>如果喜欢，请多多分享！！多多Star！！fork可以，但还是请star一下！！</strong></p>\n<h3 id=\"-\">开发环境</h3>\n<table>\n<thead>\n<tr>\n<th>工具</th>\n<th>版本或描述</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>OS</td>\n<td>Windows 7</td>\n</tr>\n<tr>\n<td>JDK</td>\n<td>1.7+</td>\n</tr>\n<tr>\n<td>IDE</td>\n<td>IntelliJ IDEA 2017.3</td>\n</tr>\n<tr>\n<td>Maven</td>\n<td>3.3.1</td>\n</tr>\n<tr>\n<td>MySQL</td>\n<td>5.6.4</td>\n</tr>\n</tbody>\n</table>\n<h3 id=\"-\">模块划分</h3>\n<table>\n<thead>\n<tr>\n<th>模块</th>\n<th>释义</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>blog-core</td>\n<td>核心业务类模块，提供基本的数据操作、工具处理等</td>\n</tr>\n<tr>\n<td>blog-admin</td>\n<td>后台管理模块</td>\n</tr>\n<tr>\n<td>blog-web</td>\n<td>前台模块</td>\n</tr>\n</tbody>\n</table>\n<h3 id=\"-\">技术栈</h3>\n<ul>\n<li>Springboot 1.5.9</li>\n<li>Apache Shiro 1.2.2</li>\n<li>Logback</li>\n<li>Redis</li>\n<li>Lombok</li>\n<li>Websocket</li>\n<li>MySQL、Mybatis、Mapper、Pagehelper</li>\n<li>Freemarker</li>\n<li>Bootstrap 3.3.0</li>\n<li>wangEditor</li>\n<li>jQuery 1.11.1、jQuery Lazyload 1.9.7、fancybox、iCheck</li>\n<li>阿里云OSS</li>\n<li>kaptcha</li>\n<li>Qiniu</li>\n<li>...</li>\n</ul>\n<h3 id=\"-\">使用方法</h3>\n<ol>\n<li>使用IDE导入本项目</li>\n<li>新建数据库<code>CREATE DATABASE dblog;</code></li>\n<li>导入数据库<code>docs/db/dblog.sql</code></li>\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.19) </li>\n<li>redis配置(可搜索<code>redis</code>或定位到L.69)</li>\n<li>mail配置(可搜索<code>mail</code>或定位到L.89)</li>\n<li>【<a href=\"http://qiniu.com\">七牛云</a>】配置(见sys<em>config表中qiniu</em>*开头的字段)<br>注：因为系统存在redis缓存，如果是第一次使用，可以直接修改sys_config表内容，如果不是第一次用，建议使用admin项目中的<code>系统配置</code>页面修改相关配置内容</li>\n</ol>\n</li>\n<li>运行项目(三种方式)<ol>\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar target/blog-web.jar</code></li>\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\n<li>直接运行<code>BlogWebApplication.java</code></li>\n</ol>\n</li>\n<li>浏览器访问<code>http://127.0.0.1:8443</code></li>\n</ol>\n<p><strong>后台用户</strong></p>\n<p><em>超级管理员</em>： 账号：root  密码：123456  （本地测试使用这个账号，admin没设置权限）</p>\n<p><em>普通管理员</em>： 账号：admin  密码：123456</p>\n<p><em>评论审核管理员</em>： 账号：comment-admin  密码：123456</p>\n<p>注：后台用户的创建，尽可能做到<strong>权限最小化</strong></p>\n<p>更多详情，请参考【<a href=\"https://gitee.com/yadong.zhang/DBlog/wikis\">Wiki</a>】</p>\n',3,1,0,'OneBlog,开源博客',0,'2018-06-13 09:21:28','2018-10-31 15:54:36');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `aid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  PRIMARY KEY (`aid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_type`
--

DROP TABLE IF EXISTS `article_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_type` (
  `aid` bigint(20) NOT NULL,
  `tid` bigint(20) NOT NULL,
  PRIMARY KEY (`aid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_type`
--

LOCK TABLES `article_type` WRITE;
/*!40000 ALTER TABLE `article_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `aid` bigint(20) DEFAULT NULL COMMENT '被评论的文章或者页面的ID',
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT '评论人的ID',
  `pid` bigint(20) unsigned DEFAULT NULL COMMENT '父级评论的id',
  `qq` varchar(13) DEFAULT NULL COMMENT '评论人的QQ（未登录用户）',
  `nickname` varchar(13) DEFAULT NULL COMMENT '评论人的昵称（未登录用户）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '评论人的头像地址',
  `email` varchar(100) DEFAULT NULL COMMENT '评论人的邮箱地址（未登录用户）',
  `url` varchar(200) DEFAULT NULL COMMENT '评论人的网站地址（未登录用户）',
  `ip` varchar(64) DEFAULT NULL COMMENT '评论时的ip',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论的内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,NULL,0,'843977358','七彩狼','https://q1.qlogo.cn/g?b=qq&nk=843977358&s=40','843977358@qq.com','https://www.zhyd.me','0:0:0:0:0:0:0:1','Chrome 65.0.3325.146','<p>测试评论</p>','2018-05-22 11:50:40','2018-05-22 11:50:40'),(2,-1,NULL,0,NULL,'匿名',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','Chrome 70.0.3538.67','<p>test</p>','2018-10-30 17:19:36','2018-10-30 17:19:36'),(3,-1,NULL,0,'2222234324','匿名','https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40','22@126.com',NULL,'0:0:0:0:0:0:0:1','Chrome 70.0.3538.67','<p>test</p>','2018-10-30 17:21:03','2018-10-30 17:21:03'),(4,1,NULL,0,'2222234324','匿名','https://q1.qlogo.cn/g?b=qq&nk=2222234324&s=40','22@126.com',NULL,'0:0:0:0:0:0:0:1','Chrome 70.0.3538.67','<p>sdfsdf</p>','2018-10-30 17:21:34','2018-10-30 17:21:34');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
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
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'OneBlog是一款简洁美观、自适应的Java博客系统。使用springboot开发，前端使用Bootstrap。支持移动端自适应，配有完备的前台和后台管理功能。','OneBlog,开源博客','zhyd.me','http://localhost:8085','http://localhost:8443','OneBlog开源博客','OneBlog是一款简洁美观、自适应的Java博客系统','http://localhost:8443/img/favicon.ico','http://localhost:8443','张亚东','yadong.zhang0415#gmail.com','https://static.zhyd.me/static/img/wechat_account.jpg','843977358','http://weibo.com/211230415','https://github.com/zhangyd-c',0,'2018-11-11 11:11:11',1,'phgd7t7cb.bkt.clouddn.com','tdX-6JCJyTF1JLvjSwzjDjfWB1P9sDfOddhrGBII','3YJfxsCiSiQ6XBVfvwZ3qmFMyeXEne_apLd5U14E','linblog',NULL,'qrcode/wx_code.png','qrcode/zfb_code.png','NwHaYlGalDEpgxm46xBaC3T9','2018-01-19 23:07:52','2018-08-28 22:33:25');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
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
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'https://www.zhyd.me','张亚东博客','一个程序员的个人博客','yadong.zhang0415@gmail.com',NULL,'https://static.zhyd.me/static/img/favicon.ico',1,1,NULL,'ADMIN','2016-11-16 23:32:03','2018-01-23 11:27:19'),(13,'http://tool.zhyd.me','在线工具','在线工具，只做最有用、最简单、最干净、最方便的工具网站。','yadong.zhang0415@gmail.com',NULL,'https://static.zhyd.me/static/img/favicon.ico',1,1,NULL,'ADMIN','2017-05-04 11:22:29','2017-05-09 09:11:35'),(35,'http://music.zhyd.me','我的音乐馆','我的音乐馆','yadong.zhang0415@gmail.com',NULL,'http://music.zhyd.me/images/favicon.ico',1,1,NULL,'ADMIN','2018-04-19 20:01:35','2018-04-19 20:01:35');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
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
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,1,'RELEASE','OneBlog开源博客','OneBlog开源博客，一款超好用的Java版开源博客','2018-05-22 10:26:26','2018-08-28 23:37:46'),(2,1,'RELEASE','问题反馈','在使用过程中，有问题请先参考相关文档，确实无法解决的，请优先提Issue，感谢各位老铁','2018-08-28 23:40:45','2018-08-28 23:40:45');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '书签名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Linux',NULL,'2018-01-14 21:35:31','2018-01-14 21:35:31'),(2,'Java',NULL,'2018-01-14 21:35:45','2018-01-14 21:35:45'),(3,'Spring',NULL,'2018-01-14 21:35:52','2018-01-14 21:35:52'),(4,'Spring Boot',NULL,'2018-01-14 21:36:01','2018-01-14 21:36:01'),(5,'其他',NULL,'2018-01-14 21:36:07','2018-01-14 21:36:07');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
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

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,NULL,'前端技术','主要收集、整理的基础前端类文章，包括JS、jQuery和CSS等Web开发所需的基础的文章总结',4,'fa fa-css3',1,'2018-01-14 21:34:54','2018-01-14 21:34:54'),(2,NULL,'后端技术','网站中记录的后端类文章，包括Java、SSM、MySQL和其他在日常工作学习中所用的后端技术',6,'fa fa-coffee',1,'2018-01-14 21:34:57','2018-01-14 21:34:57'),(3,NULL,'其他文章','记录网站建设以及日常工作、学习中的闲言碎语和个人笔记等文章',8,'fa fa-folder-open-o',1,'2018-01-20 22:28:03','2018-03-01 19:27:53'),(4,1,'Javscript',NULL,NULL,NULL,1,'2018-12-15 23:08:55','2018-12-15 23:08:55'),(5,1,'CSS',NULL,NULL,NULL,1,'2018-12-15 23:09:01','2018-12-15 23:09:01'),(6,2,'Java',NULL,NULL,NULL,1,'2018-12-15 23:09:11','2018-12-15 23:09:11'),(7,2,'Spring Boot',NULL,NULL,NULL,1,'2018-12-15 23:09:48','2018-12-15 23:09:48'),(8,NULL,'首页',NULL,1,NULL,1,'2019-02-22 11:11:51','2019-02-22 11:11:51');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
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
  `last_login_ip` varchar(30) DEFAULT NULL COMMENT '最近登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近登录时间',
  `login_count` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  `status` int(1) unsigned DEFAULT NULL COMMENT '用户状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','CGUx1FN++xS+4wNDFeN6DA==','超级管理员','15151551516','843977358@qq.com','843977358',NULL,NULL,'https://static.zhyd.me/static/img/favicon.ico','ROOT','0:0:0:0:0:0:0:1','2018-05-22 11:14:19',177,1,'2018-01-02 09:32:15','2018-05-22 11:14:19'),(2,'admin','gXp2EbyZ+sB/A6QUMhiUJQ==','管理员','15151551516','843977358@qq.com','843977358',NULL,NULL,NULL,'ADMIN','0:0:0:0:0:0:0:1','2018-10-31 15:47:59',4,1,'2018-01-02 15:56:34','2018-10-31 15:47:59'),(3,'comment-admin','x9qCx3yP05yWfIE5wXbCsg==','评论审核管理员','','','',NULL,NULL,NULL,'ADMIN','0:0:0:0:0:0:0:1','2018-05-22 11:43:45',1,1,'2018-05-22 11:43:22','2018-05-22 11:43:45');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-22 17:48:45
