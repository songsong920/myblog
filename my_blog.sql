-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-09 01:24:41
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `my_admin`
--

CREATE TABLE `my_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT '管理员账户',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `email` varchar(20) NOT NULL COMMENT '邮箱',
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '0是不可用，1是可用',
  `is_super` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0是普通管理员，1是超级管理员',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- 转存表中的数据 `my_admin`
--

INSERT INTO `my_admin` (`id`, `username`, `password`, `nickname`, `email`, `status`, `is_super`, `create_time`, `update_time`, `delete_time`) VALUES
(15, '王八', '123456', '老王', '163@qq.com', '1', '0', 1541212250, 1541212250, NULL),
(14, 'admin', '123456', 'admin', '123@qq.com', '1', '0', 1541211664, 1541211664, NULL),
(13, '张静先', '123456', '静先', '123456@qq.com', '1', '0', 1541211576, 1541211576, NULL),
(12, '杨松', '123456221', '松哥', '1601149683@qq.com', '1', '1', 1541211411, 1541220392, NULL),
(16, '张三', '123456', '张三', '1@qq.com', '1', '0', 1541212402, 1541212402, NULL),
(17, '李四', '123456', '小四', '12@qq.com', '1', '0', 1541213423, 1541213423, NULL),
(18, '王五', '123456', '小五', '1234@qq.com', '1', '0', 1541213755, 1541213755, NULL),
(19, '赵六', '123456', '小六', '12345@qq.com', '1', '0', 1541215170, 1541215170, NULL),
(20, '宋七', '123456', '小七', '1234567@qq.com', '1', '0', 1541215869, 1541215869, NULL),
(21, '何九', '123456', '小九', '12345678@qq.com', '1', '0', 1541216764, 1541216764, NULL),
(22, '胡十', '123456', '小十', '123456789@qq.com', '1', '0', 1541217055, 1541217055, NULL),
(23, '武十一', '123456', '十一', '12345678910@qq.com', '1', '0', 1541218074, 1541218074, NULL),
(24, '毕十三', '123456', '十三', '21@qq.com', '1', '0', 1541218243, 1541218243, NULL),
(25, '谢十二', '123456', '十二', '11@qq.com', '1', '0', 1541218438, 1541218438, NULL),
(26, '周十四', '123456', '十四', '2746084712@qq.com', '1', '0', 1541218819, 1541218819, NULL),
(27, '松哥', '123456', '松哥', '1601149683@qq.com', '1', '0', 1541219997, 1541219997, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `my_article`
--

CREATE TABLE `my_article` (
  `id` int(11) NOT NULL,
  `author` varchar(20) NOT NULL COMMENT '作者',
  `title` varchar(50) NOT NULL COMMENT '文章标题',
  `desc` text NOT NULL COMMENT '概要',
  `tags` varchar(100) NOT NULL COMMENT '标签',
  `comm_num` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `content` longtext NOT NULL COMMENT '文章内容',
  `cate_id` int(11) NOT NULL COMMENT '所属导航',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除',
  `is_top` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否推荐'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `my_article`
--

INSERT INTO `my_article` (`id`, `author`, `title`, `desc`, `tags`, `comm_num`, `click`, `content`, `cate_id`, `create_time`, `update_time`, `delete_time`, `is_top`) VALUES
(1, '松松', 'github搭建博客教程', 'github搭建博客教程', 'git|hub', 0, 0, '<p>github搭建博客教程</p>', 4, 1541213992, 1541231456, 1541231456, '1'),
(2, '松松', '从零玩转HTML5教程', '从零玩转HTML5教程', 'HTML5', 3, 64, '<h3><strong><span style="font-family: 黑体, SimHei;">&lt;video&gt; 标签的属性</span></strong></h3><table class="dataintable"><tbody><tr class="firstRow"><th style="width:20%;"><span style="font-family: 黑体, SimHei;">属性</span></th><th style="width:16%;"><span style="font-family: 黑体, SimHei;">值</span></th><th><span style="font-family: 黑体, SimHei;">描述</span></th></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_autoplay.asp" title="HTML5 &lt;video&gt; autoplay 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">autoplay</span></a></td><td><span style="font-family: 黑体, SimHei;">autoplay</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则视频在就绪后马上播放。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_controls.asp" title="HTML5 &lt;video&gt; controls 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">controls</span></a></td><td><span style="font-family: 黑体, SimHei;">controls</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则向用户显示控件，比如播放按钮。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_height.asp" title="HTML5 &lt;video&gt; height 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">height</span></a></td><td><span style="font-family: 黑体, SimHei;"><em>pixels</em></span></td><td><span style="font-family: 黑体, SimHei;">设置视频播放器的高度。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_loop.asp" title="HTML5 &lt;video&gt; loop 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">loop</span></a></td><td><span style="font-family: 黑体, SimHei;">loop</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则当媒介文件完成播放后再次开始播放。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_preload.asp" title="HTML5 &lt;video&gt; preload 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">preload</span></a></td><td><span style="font-family: 黑体, SimHei;">preload</span></td><td><p><span style="font-family: 黑体, SimHei;">如果出现该属性，则视频在页面加载时进行加载，并预备播放。</span></p><p><span style="font-family: 黑体, SimHei;">如果使用 &quot;autoplay&quot;，则忽略该属性。</span></p></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_src.asp" title="HTML5 &lt;video&gt; src 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">src</span></a></td><td><span style="font-family: 黑体, SimHei;"><em>url</em></span></td><td><span style="font-family: 黑体, SimHei;">要播放的视频的 URL。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_video_width.asp" title="HTML5 &lt;video&gt; width 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">width</span></a></td><td><span style="font-family: 黑体, SimHei;"><em>pixels</em></span></td><td><span style="font-family: 黑体, SimHei;">设置视频播放器的宽度。</span></td></tr></tbody></table><h3><span style="font-family: 黑体, SimHei;">HTML5 &lt;video&gt; - 使用 DOM 进行控制</span></h3><p><span style="font-family: 黑体, SimHei;">HTML5 &lt;video&gt; 元素同样拥有方法、属性和事件。</span></p><p><span style="font-family: 黑体, SimHei;">其中的方法用于播放、暂停以及加载等。其中的属性（比如时长、音量等）可以被读取或设置。其中的 DOM 事件能够通知您，比方说，&lt;video&gt; 元素开始播放、已暂停，已停止，等等。</span></p><h3><span style="font-family: 黑体, SimHei;">&lt;audio&gt; 标签的属性</span></h3><table class="dataintable"><tbody><tr class="firstRow"><th style="width:20%;"><span style="font-family: 黑体, SimHei;">属性</span></th><th style="width:16%;"><span style="font-family: 黑体, SimHei;">值</span></th><th><span style="font-family: 黑体, SimHei;">描述</span></th></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_audio_autoplay.asp" title="HTML5 &lt;audio&gt; autoplay 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">autoplay</span></a></td><td><span style="font-family: 黑体, SimHei;">autoplay</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则音频在就绪后马上播放。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_audio_controls.asp" title="HTML5 &lt;audio&gt; controls 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">controls</span></a></td><td><span style="font-family: 黑体, SimHei;">controls</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则向用户显示控件，比如播放按钮。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_audio_loop.asp" title="HTML5 &lt;audio&gt; loop 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">loop</span></a></td><td><span style="font-family: 黑体, SimHei;">loop</span></td><td><span style="font-family: 黑体, SimHei;">如果出现该属性，则每当音频结束时重新开始播放。</span></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_audio_preload.asp" title="HTML5 &lt;audio&gt; preload 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">preload</span></a></td><td><span style="font-family: 黑体, SimHei;">preload</span></td><td><p><span style="font-family: 黑体, SimHei;">如果出现该属性，则音频在页面加载时进行加载，并预备播放。</span></p><p><span style="font-family: 黑体, SimHei;">如果使用 &quot;autoplay&quot;，则忽略该属性。</span></p></td></tr><tr><td class="html5_new"><a href="http://www.w3school.com.cn/tags/att_audio_src.asp" title="HTML5 &lt;audio&gt; src 属性" style="font-family: 黑体, SimHei; text-decoration: underline;"><span style="font-family: 黑体, SimHei;">src</span></a></td><td><span style="font-family: 黑体, SimHei;"><em>url</em></span></td><td><span style="font-family: 黑体, SimHei;">要播放的音频的 URL。</span></td></tr></tbody></table><p><br/></p>', 2, 1541224460, 1541336531, NULL, '1'),
(3, '松松', '从零玩转JavaScript教程', '从零玩转JavaScript教程', 'JavaScript', 1, 12, '<p>从零玩转JavaScript教程</p>', 2, 1541224724, 1541385992, NULL, '1'),
(4, '松哥', 'C语言基础（一）', 'Ubuntu的使用', 'c语言', 5, 73, '<p style="text-align:left"><strong><span style="font-family:宋体">打开命令终端：</span>ctrl+alt+t&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><span style="font-family:宋体">命令终端：</span> </strong><strong><span style="font-family:宋体">用来和内核进行交互</span></strong></p><p style="text-align:left"><strong>ls</strong><strong><span style="font-family:宋体">：显示当前路径下所有文件；</span></strong></p><p style="text-align:left"><strong>ls -a:</strong><strong><span style="font-family:宋体">显示当前路径下所有文件，包括以</span>.</strong><strong><span style="font-family:宋体">开头的隐藏文件</span></strong></p><p style="text-align:left"><strong>ls -a /etc:</strong><strong><span style="font-family:宋体">显示</span>/etc</strong><strong><span style="font-family:宋体">下面的所有文件，包括以</span>.</strong><strong><span style="font-family:宋体">开头的隐藏文件</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">命令格式：</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">命令通常由三部分组成：</span></strong></p><p style="text-align:left"><strong>1.</strong><strong><span style="font-family:宋体">命令的名称，严格区分大小写</span></strong></p><p style="text-align:left"><strong>2.</strong><strong><span style="font-family:宋体">选项，通常由“</span>-</strong><strong><span style="font-family:宋体">”“——”来引导</span></strong></p><p style="text-align:left"><strong>3.</strong><strong><span style="font-family:宋体">参数，是这个命令执行的对象</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">注意：</span>1.</strong><strong><span style="font-family:宋体">三部分之间要用空格隔开</span></strong></p><p style="text-align:left"><strong>2.</strong><strong><span style="font-family:宋体">选项和参数可以同时有多个</span></strong></p><p style="text-align:left"><strong>3.</strong><strong><span style="font-family:宋体">选项和参数可以没有</span></strong></p><p style="text-align:left"><strong>man:man</strong><strong><span style="font-family:宋体">手册，用来查询命令的各种函数的具体含义</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">目录：相当于</span>Windows</strong><strong><span style="font-family:宋体">里的文件夹</span></strong></p><p style="text-align:left"><strong>pwd:</strong><strong><span style="font-family:宋体">打印当前目录</span></strong></p><p style="text-align:left"><strong>/home/linux:</strong><strong><span style="font-family:宋体">第一个</span>/</strong><strong><span style="font-family:宋体">表示根目录，第二个及以后的个</span>/</strong><strong><span style="font-family:宋体">仅仅是分隔符</span></strong></p><p style="text-align:left"><strong>/etc</strong><strong><span style="font-family:宋体">：根目录下的</span>etc</strong><strong><span style="font-family:宋体">目录</span></strong></p><p style="text-align:left"><strong>ls -a /etc:</strong><strong><span style="font-family:宋体">显示根目录下的</span>etc</strong><strong><span style="font-family:宋体">目录下的所有文件</span></strong></p><p style="text-align:left"><strong>linux@ubuntu:~$ </strong><strong><span style="font-family:宋体">：</span>linux:</strong><strong><span style="font-family:宋体">代表用户名</span>whoami</strong></p><p style="text-align:left"><strong>ubuntu:</strong><strong><span style="font-family:宋体">代表主机名</span> hostname</strong></p><p style="text-align:left"><strong>/:</strong><strong><span style="font-family:宋体">显示当前路径，此时是根目录</span></strong></p><p style="text-align:left"><strong>$:</strong><strong><span style="font-family:宋体">代表当前用户为普通用户</span></strong></p><p style="text-align:left"><strong>&nbsp;</strong></p><p style="text-align:left"><strong>cd:(change directory):</strong><strong><span style="font-family:宋体">切换目录</span></strong></p><p style="text-align:left"><strong>cd:</strong><strong><span style="font-family:宋体">不加参数，回到家目录</span>/home/linux</strong></p><p style="text-align:left"><strong>cd \\ :</strong><strong><span style="font-family:宋体">后面跟上路径，执行后会切换到相应的路径下</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">相对路径：不是从跟目录开始的路径</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">绝对路径：从跟目录开始的路径就是绝对路径</span></strong></p><p style="text-align:left"><strong>..:</strong><strong><span style="font-family:宋体">表示的是上一层目录</span></strong></p><p style="text-align:left"><strong>.:</strong><strong><span style="font-family:宋体">表示当前目录</span></strong></p><p style="text-align:left"><strong>mkdir</strong><strong><span style="font-family:宋体">（</span>make directory</strong><strong><span style="font-family:宋体">）</span>:</strong><strong><span style="font-family:宋体">创建目录</span></strong></p><p style="text-align:left"><strong>mkdir </strong><strong><span style="font-family:宋体">目录名称：</span></strong></p><p style="text-align:left"><strong>ls -l:</strong><strong><span style="font-family:宋体">显示当前路径下的文件的详细信息</span></strong></p><p style="text-align:left"><strong>drwxrwxr-x 2 linux linux&nbsp;&nbsp; 4096 Jun&nbsp; 3 19:34 demo</strong></p><p style="text-align:left"><strong><span style="font-family:宋体">第一位：显示的是文件类型</span></strong></p><p style="text-align:left"><strong>d:</strong><strong><span style="font-family:宋体">目录</span></strong></p><p style="text-align:left"><strong>-</strong><strong><span style="font-family:宋体">：普通文件</span></strong></p><p style="text-align:left"><strong>l:</strong><strong><span style="font-family:宋体">链接文件</span></strong></p><p style="text-align:left"><strong>s:</strong><strong><span style="font-family:宋体">套接字文件</span></strong></p><p style="text-align:left"><strong>p:</strong><strong><span style="font-family:宋体">管道文件</span></strong></p><p style="text-align:left"><strong>b:</strong><strong><span style="font-family:宋体">块设备文件（存储类型设备）</span></strong></p><p style="text-align:left"><strong>c:</strong><strong><span style="font-family:宋体">字符设备文件（鼠标，键盘）</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">一切皆文件</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">第二位到第九位：显示的是文件的属性权限</span></strong></p><p style="text-align:left"><strong>rwx&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rwx&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r-x</strong></p><p style="text-align:left"><strong><span style="font-family:宋体">创建者</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><span style="font-family:宋体">同组用户</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><span style="font-family:宋体">其他用户</span></strong></p><p style="text-align:left"><strong>r</strong><strong><span style="font-family:宋体">：可读</span></strong></p><p style="text-align:left"><strong>w: </strong><strong><span style="font-family:宋体">可写</span></strong></p><p style="text-align:left"><strong>x:</strong><strong><span style="font-family:宋体">执行</span></strong></p><p style="text-align:left"><strong>-</strong><strong><span style="font-family:宋体">：无对应权限</span></strong></p><p style="text-align:left"><strong>touch:</strong><strong><span style="font-family:宋体">创建普通文件</span></strong></p><p style="text-align:left"><strong>touch </strong><strong><span style="font-family:宋体">文件名：如果文件不存在就创建，文件存在就修改时间戳</span></strong></p><p style="text-align:left"><strong>rm:remove </strong><strong><span style="font-family:宋体">删除文件</span></strong></p><p style="text-align:left"><strong>rm </strong><strong><span style="font-family:宋体">文件名：只能删除普通文件，不能删除根目录</span></strong></p><p style="text-align:left"><strong>rm -rf </strong><strong><span style="font-family:宋体">目录名：</span>r:</strong><strong><span style="font-family:宋体">递归用的</span>&nbsp;&nbsp; f:</strong><strong><span style="font-family:宋体">强制的</span></strong></p><p style="text-align:left"><strong>*</strong><strong><span style="font-family:宋体">：通配符：可以代表任意长度的任意字符，用来批量执行命令</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">？：代表一个长度的任意字符</span></strong></p><p style="text-align:left"><strong>cp:</strong><strong><span style="font-family:宋体">复制</span></strong></p><p style="text-align:left"><strong>cp </strong><strong><span style="font-family:宋体">源文件</span> </strong><strong><span style="font-family:宋体">目标路径</span></strong></p><p style="text-align:left"><strong>mv</strong><strong><span style="font-family:宋体">：移动文件</span></strong></p><p style="text-align:left"><strong>mv </strong><strong><span style="font-family:宋体">源文件</span> </strong><strong><span style="font-family:宋体">目标路径</span></strong></p><p style="text-align:left"><strong>mv ./test/1.txt .</strong></p><p style="text-align:left"><strong><span style="font-family:宋体">移动</span> </strong><strong><span style="font-family:宋体">当前路径下的</span>test</strong><strong><span style="font-family:宋体">目录下的</span>test.txt</strong><strong><span style="font-family:宋体">文件</span>&nbsp; </strong><strong><span style="font-family:宋体">当前路径</span></strong></p><p style="text-align:left"><strong>uname -r:</strong><strong><span style="font-family:宋体">查看内核版本</span></strong></p><p style="text-align:left"><strong>www.kernel.org </strong><strong><span style="font-family:宋体">内核源码</span></strong></p><p style="text-align:left"><strong>tar -vxf </strong><strong><span style="font-family:宋体">压缩包</span></strong></p><p style="text-align:left"><strong>sudo: </strong><strong><span style="font-family:宋体">临时借用超级用户权限</span></strong></p><p style="text-align:left"><strong>ubuntu</strong><strong><span style="font-family:宋体">中的软件是基于集中式的软件源仓库管理机制开发的</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">将制作好的软件放在仓库（类似手机的应用商店）中，然后</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">将仓库放在世界各地的软件源服务器中，我们通过访问这些</span></strong></p><p style="text-align:left"><strong><span style="font-family:宋体">镜像服务器从而去获取软件来安装</span></strong></p><p style="text-align:left"><strong>apt-get:</strong></p><p style="text-align:left"><strong>sudo apt-get install </strong><strong><span style="font-family:宋体">软件名字</span></strong></p><p style="text-align:left"><strong>sudo apt-get remove </strong><strong><span style="font-family:宋体">软件名</span></strong></p><p style="text-align:left"><strong>sudo apt-get&nbsp; source </strong><strong><span style="font-family:宋体">软件名</span></strong></p><p><br/></p>', 5, 1541251792, 1541655574, NULL, '1'),
(8, '松哥', '从零玩转jQuery和Ajax教程', '从零玩转jQuery和Ajax教程', 'jQuery|Ajax', 0, 9, '<p><img src="/ueditor/php/upload/image/20181106/1541495971467956.jpg" title="1541495971467956.jpg" alt="song.jpg"/></p>', 2, 1541385802, 1541495973, NULL, '1'),
(5, '松哥', '如何使用Github搭建个人博客', '如何使用Github搭建个人博客？', 'github', 0, 2, '<p>待续。。<br/></p>', 4, 1541304376, 1541645606, NULL, '1'),
(6, '松哥', '从零玩转Bootstrap教程', '从零玩转Bootstrap教程', 'bootstrap', 0, 17, '<p><img src="/ueditor/php/upload/image/20181106/1541497994882690.jpg" title="1541497994882690.jpg" alt="4.jpg" width="739" height="534"/></p>', 2, 1541305143, 1541653974, NULL, '1'),
(7, '松哥', '从零玩转C语言编程', '从零玩转C语言编程', 'c++', 0, 12, '<p><img src="/ueditor/php/upload/image/20181104/1541305301162902.jpg" title="1541305301162902.jpg" alt="banner4.jpg"/></p>', 7, 1541305309, 1541386145, 1541386145, '1'),
(12, '松哥', 'ThinkPHP5.1的安装', '如何安装ThinkPHP5.1？', 'Composer|Thinkphp框架', 0, 26, '<ol style="list-style-type: decimal;" class=" list-paddingleft-2"><li><p>安装Composer,在 Windows 中，需要下载并运行&nbsp;<a href="https://getcomposer.org/Composer-Setup.exe" target="_blank">Composer-Setup.exe </a>，在命令行窗口使用命令composer命令，看到版本证明安装成功，这里我只截取了部分</p><p><img src="/ueditor/php/upload/image/20181108/1541646255827514.png" title="1541646255827514.png" alt="图片.png" width="718" height="319"/><br/></p><p><br/></p></li><li><p>安装好composer后，使用composer create-project topthink/think Myblog进行安装TP5框架，其中Myblog为自己的项目名字，如果想安装其他版本，使用composer create-project topthink/think=5.1.版本号 项目名字</p><p><img src="/ueditor/php/upload/image/20181108/1541646876225830.png" title="1541646876225830.png" alt="图片.png" width="714" height="244"/></p><p><br/></p></li></ol><p>&nbsp;&nbsp; 3.在浏览器中输入 <a href="http://localhost/Myblog/public">http://localhost/Myblog/public</a>&nbsp; 显示下图，证明安装成功</p><p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp; <img src="/ueditor/php/upload/image/20181108/1541648623565551.png" title="1541648623565551.png" alt="图片.png" width="717" height="354"/></p><p><br/></p><p><br/></p>', 13, 1541646899, 1541651130, NULL, '1'),
(9, '松哥', 'C语言基础（二）', 'C语言基础语法及注意事项', 'C|C++|C#', 0, 12, '<ol style="list-style-type: decimal;" class=" list-paddingleft-2"><li><p>include头文件包含<br/></p><p>#include &lt;stdio.h&gt;这个是hello world程序的第一句话<br/>	# 代表<span style="color: rgb(255, 0, 0); background-color: rgb(0, 0, 0);"><em><span style="color: rgb(255, 0, 0);">预编译指令</span></em></span><br/>	#include的意思就是头文件包含，使用C语言库函数需要提前包含库函数对应的头文件。<br/>stdio.h这个文件在操作系统的系统目录下<br/>include有两种写法<span style="background-color: rgb(0, 0, 0);"></span><br/>	#include &lt;文件名&gt;,如果文件在系统目录下，那么需要用&lt;&gt;<br/>	#include “文件名”,如果文件在当前目录下，那么用&quot;&quot;</p></li><li><p>main函数</p><p class="p0">main<span style="font-family: 宋体;">函数又叫主函数，</span><span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">函数是</span><span style="font-family: Tahoma;">c</span><span style="font-family: 宋体;">语言程序的入口，程序是从</span><span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">函数开始执行的，</span><span style="color: rgb(255, 0, 0);"><span style="background-color: rgb(0, 0, 0);"><span style="font-family: 宋体;">一个</span><span style="background-color: rgb(0, 0, 0); font-family: Tahoma;">c</span><span style="background-color: rgb(0, 0, 0); font-family: 宋体;">语言程序中只能有一个</span><span style="background-color: rgb(0, 0, 0); font-family: Tahoma;">main</span><span style="font-family: 宋体;">函数</span></span><span style="font-family: 宋体; background-color: rgb(255, 255, 0);"></span></span><span style="font-family: 宋体;">。</span></p><p class="p0">c<span style="font-family: 宋体;">语言可执行程序必须也只能有一个</span><span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">函数。</span></p></li><li><p class="p0"><span style="font-family: 宋体;">注释</span></p><p class="p0"><span style="font-family: 宋体;">//单行注释&nbsp; /*&nbsp; */ 多行注释</span></p></li><li><p class="p0">{}括号、程序体及代码块</p><p class="p0">C语言每句可执行代码都是<span style="font-family: Tahoma;">;</span><span style="font-family: 宋体;">结尾</span></p><p class="p0">{}<span style="font-family: 宋体;">叫代码块，一个代码块内部可以有一条或者多条语句</span></p><p class="p0">所有的可执行语句必须是在代码块里面</p><p class="p0">所有的函数都是由、函数名、程序体、<span style="font-family: Tahoma;">{</span><span style="font-family: 宋体;">语句</span><span style="font-family: Tahoma;">}组成的。</span></p></li><li><p class="p0"><span style="font-family: Tahoma;">声明和定义</span></p><p class="p0"><span style="font-family: Tahoma;">int&nbsp;a; //<span style="font-family: 宋体;">定义一个变量</span><br/></span></p><p class="p0">&nbsp;extern&nbsp;int&nbsp;b; //<span style="background-color: rgb(0, 0, 0); color: rgb(255, 0, 0);">&nbsp;<span style="background-color: rgb(0, 0, 0); font-family: 宋体;">声明一个变量</span></span></p><p class="p0">&nbsp;int<span style="font-family: 宋体;">和</span><span style="font-family: Tahoma;">extern</span><span style="font-family: 宋体;">都是</span><span style="font-family: Tahoma;">c</span><span style="font-family: 宋体;">语言的关键字，</span><span style="font-family: Tahoma;">a</span><span style="font-family: 宋体;">和</span><span style="font-family: Tahoma;">b</span><span style="font-family: 宋体;">是用户可以自己起的名字</span></p></li><li><p class="p0"><span style="font-family: 宋体;">命名规范</span></p><p class="p0"><span style="font-family: 宋体;">可以使用大小写字母，下划线，数字，但第一个字母<span style="font-family: 宋体; background-color: rgb(0, 0, 0); color: rgb(255, 0, 0);">必须是字母或者下划线</span>，字母区分大小写。</span></p></li><li><p class="p0"><span style="font-family: 宋体;">printf函数</span></p><p class="p0">printf<span style="font-family: 宋体;">是</span><span style="font-family: Tahoma;">c</span><span style="font-family: 宋体;">语言库函数，功能是</span>向标准输出设备输出一个字符串</p><p class="p0">&nbsp;printf(“hello&nbsp;world\\n”);//\\n<span style="font-family: 宋体;">的意思是回车换行</span></p></li><li><p class="p0"><span style="font-family: 宋体;">return语句</span></p><p class="p0"><span style="font-family: 宋体;">return<span style="font-family: 宋体;">代表函数执行完毕，返回</span><span style="font-family: Tahoma;">return</span><span style="font-family: 宋体;">代表函数的终止</span><span style="font-family: Tahoma;">.</span></span></p><p class="p0">如果<span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">定义的时候前面是</span><span style="font-family: Tahoma;">int,</span><span style="font-family: 宋体;">那么</span><span style="font-family: Tahoma;">return</span><span style="font-family: 宋体;">后面就需要写一个整数，如果</span><span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">定义的时候前面是</span><span style="font-family: Tahoma;">void</span><span style="font-family: 宋体;">，那么</span><span style="font-family: Tahoma;">return</span><span style="font-family: 宋体;">后面什么也不需要写</span></p><p class="p0">&nbsp;在<span style="font-family: Tahoma;">main</span><span style="font-family: 宋体;">函数中</span><span style="font-family: Tahoma;">return&nbsp;0</span><span style="font-family: 宋体;">代表程序执行成功，</span><span style="font-family: Tahoma;">return&nbsp;-1</span><span style="font-family: 宋体;">代表程序执行失败</span></p><p class="p0">&nbsp;在<span style="font-family: Tahoma;">C</span><span style="font-family: 宋体;">语言中&nbsp;</span><span style="font-family: Tahoma;">int&nbsp;main()</span><span style="font-family: 宋体;">和&nbsp;</span><span style="font-family: Tahoma;">void&nbsp;main</span><span style="font-family: 宋体;">都可以</span></p><p class="p0">&nbsp;int&nbsp;main()<span style="font-family: 宋体;">和</span><span style="font-family: Tahoma;">void&nbsp;main</span><span style="font-family: 宋体;">（）在</span><span style="font-family: Tahoma;">c</span><span style="font-family: 宋体;">语言中是一样的，但</span><span style="font-family: Tahoma;">C++</span><span style="font-family: 宋体;">只接受</span><span style="font-family: Tahoma;">int&nbsp;main</span><span style="font-family: 宋体;">这种定义方式</span></p></li></ol><p><br/></p><p><br/></p>', 5, 1541386373, 1541655553, NULL, '1'),
(10, '松哥', '放松一下', '听首音乐放松一下', 'music', 0, 7, '<p>想都不用想<br/></p>', 10, 1541486407, 1541489198, 1541489198, '0'),
(11, '松哥', '邮件发送的POP3邮箱设置', '如何使用PHPMailer收发邮件？', 'Email', 1, 16, '<p>1.QQ客户端找到邮箱设置-账户设置<br/></p><p><img src="http://song.cn/ueditor/php/upload/image/20181108/1541641921888916.png" title="1541641921888916.png" alt="图片.png" width="712" height="247"/></p><p>2.下拉找到POP3,跟着步骤操作<br/></p><p><img src="/ueditor/php/upload/image/20181108/1541642067136901.png" title="1541642067136901.png" alt="图片.png" width="714" height="305"/></p><p>3.使用命令composer require phpmailer/phpmailer在命令控制符下安装扩展，可在<a href="https://packagist.org/">https://packagist.org/</a> 查找phpmailer并点击，进入后在1查看命令，在2下学习使用方法，3是PHP版本要求大于&gt;=5.5.0.</p><p><img src="/ueditor/php/upload/image/20181108/1541651598403411.png" title="1541651598403411.png" alt="图片.png" width="713" height="462"/></p><p><img src="/ueditor/php/upload/image/20181108/1541651827643341.png" title="1541651827643341.png" alt="图片.png" width="711" height="432"/></p><p><br/> </p><p><img src="http://song.cn/ueditor/php/upload/image/20181108/1541643014371398.png" title="1541643014371398.png" alt="图片.png" width="715" height="358"/></p><p>4.邮件为公共函数，所以在common.php下进行封装，把邮箱框里的密码复制到下面红色框里面，密码可以修改<br/></p><p><img src="/ueditor/php/upload/image/20181108/1541642330769165.png" title="1541642330769165.png" alt="图片.png" width="715" height="361"/></p><p>5.发送方法mailto(&quot;发送给谁&quot;,&quot;标题&quot;,&quot;内容&quot;).</p><p><img src="/ueditor/php/upload/image/20181108/1541644742848968.png" title="1541644742848968.png" alt="图片.png" width="717" height="307"/></p>', 13, 1541641532, 1541651958, NULL, '1'),
(13, '松哥', 'ThinkPHP5.1配置文件和目录', '如何配置PHP文件和目录', 'thinkphp|配置', 0, 5, '<p><span style="border-block-start: unset; border-block-end: unset; border-inline-start: unset; border-inline-end: unset; margin-block-start: unset; margin-block-end: unset; margin-inline-start: unset; margin-inline-end: unset; padding-block-start: unset; padding-block-end: unset; padding-inline-start: unset; padding-inline-end: unset; inset-block-start: unset; inset-block-end: unset; inset-inline-start: unset; inset-inline-end: unset; block-size: unset; min-block-size: unset; max-block-size: unset; inline-size: unset; min-inline-size: unset; max-inline-size: unset; background: unset; background-blend-mode: unset; border: unset; border-radius: unset; box-decoration-break: unset; -moz-float-edge: unset; display: unset; position: fixed; float: unset; clear: unset; vertical-align: unset; overflow: unset; transition: unset; animation: unset; scroll-snap-points-x: unset; scroll-snap-points-y: unset; scroll-snap-destination: unset; scroll-snap-coordinate: unset; transform: unset; scroll-behavior: unset; scroll-snap-type: unset; overscroll-behavior: unset; isolation: unset; page-break-after: unset; page-break-before: unset; page-break-inside: unset; resize: unset; perspective: unset; perspective-origin: unset; backface-visibility: unset; transform-box: unset; transform-style: unset; transform-origin: unset; -moz-appearance: unset; -moz-orient: unset; will-change: unset; shape-image-threshold: unset; shape-margin: unset; shape-outside: unset; touch-action: unset; color: unset; columns: unset; column-fill: unset; column-rule: unset; content: unset; counter-increment: unset; counter-reset: unset; opacity: unset; box-shadow: unset; clip: rect(0px, 0px, 0px, 0px); filter: unset; mix-blend-mode: unset; font: unset; font-synthesis: unset; visibility: unset; writing-mode: unset; text-orientation: unset; color-adjust: unset; image-rendering: unset; image-orientation: unset; border-collapse: unset; empty-cells: unset; caption-side: unset; border-spacing: unset; text-transform: unset; hyphens: unset; -moz-text-size-adjust: unset; text-indent: unset; overflow-wrap: unset; word-break: unset; text-justify: unset; text-align-last: unset; text-align: unset; letter-spacing: unset; word-spacing: unset; white-space: pre; text-shadow: unset; text-emphasis: unset; text-emphasis-position: unset; -moz-tab-size: unset; -webkit-text-fill-color: unset; -webkit-text-stroke: unset; ruby-align: unset; ruby-position: unset; text-combine-upright: unset; text-rendering: unset; -moz-control-character-visibility: unset; cursor: unset; pointer-events: unset; -moz-user-input: unset; -moz-user-modify: unset; -moz-user-focus: unset; caret-color: unset; text-anchor: unset; color-interpolation: unset; color-interpolation-filters: unset; fill: unset; fill-opacity: unset; fill-rule: unset; shape-rendering: unset; stroke: unset; stroke-width: unset; stroke-linecap: unset; stroke-linejoin: unset; stroke-miterlimit: unset; stroke-opacity: unset; stroke-dasharray: unset; stroke-dashoffset: unset; clip-rule: unset; marker: unset; paint-order: unset; -moz-context-properties: unset; list-style: unset; quotes: unset; -moz-image-region: unset; margin: unset; outline: unset; -moz-outline-radius: unset; outline-offset: unset; padding: unset; top: 0px; right: unset; bottom: unset; left: unset; z-index: unset; flex-flow: unset; place-content: unset; place-items: unset; flex: unset; place-self: unset; order: unset; width: unset; min-width: unset; max-width: unset; height: unset; min-height: unset; max-height: unset; box-sizing: unset; object-fit: unset; object-position: unset; grid-area: unset; grid: unset; gap: unset; table-layout: unset; text-overflow: unset; text-decoration: unset; ime-mode: unset; -moz-user-select: text; -moz-window-dragging: unset; -moz-force-broken-image-icon: unset; dominant-baseline: unset; vector-effect: unset; stop-color: unset; stop-opacity: unset; flood-color: unset; flood-opacity: unset; lighting-color: unset; mask-type: unset; clip-path: unset; mask: unset; -moz-box-align: unset; -moz-box-direction: unset; -moz-box-flex: unset; -moz-box-orient: unset; -moz-box-pack: unset; -moz-stack-sizing: unset; -moz-box-ordinal-group: unset;">├─config（应用配置目录）\r\n│ &nbsp;├─app.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;应用配置\r\n│ &nbsp;├─cache.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;缓存配置\r\n│ &nbsp;├─cookie.php &nbsp; &nbsp; &nbsp; &nbsp; Cookie配置\r\n│ &nbsp;├─database.php &nbsp; &nbsp; &nbsp; 数据库配置\r\n│ &nbsp;├─log.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;日志配置\r\n│ &nbsp;├─session.php &nbsp; &nbsp; &nbsp; &nbsp;Session配置\r\n│ &nbsp;├─template.php &nbsp; &nbsp; &nbsp; 模板引擎配置\r\n│ &nbsp;├─trace.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Trace配置\r\n│ &nbsp;└─ ... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 更多配置文件\r\n│ &nbsp;\r\n├─route（路由目录）\r\n│ &nbsp;├─route.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;路由定义文件\r\n│ &nbsp;└─ ... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 更多路由定义文件\r\n│ &nbsp;\r\n├─application （应用目录）\r\n│ &nbsp;└─module （模块目录）\r\n│ &nbsp; &nbsp; └─config（模块配置目录）\r\n│ &nbsp; &nbsp; 	 ├─app.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;应用配置\r\n│ &nbsp; &nbsp; 	 ├─cache.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;缓存配置\r\n│ &nbsp; &nbsp; 	 ├─cookie.php &nbsp; &nbsp; &nbsp; &nbsp; Cookie配置\r\n│ &nbsp; &nbsp; 	 ├─database.php &nbsp; &nbsp; &nbsp; 数据库配置\r\n│ &nbsp; &nbsp; 	 ├─log.php &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;日志配置\r\n│ &nbsp; &nbsp; 	 ├─session.php &nbsp; &nbsp; &nbsp; &nbsp;Session配置\r\n│ &nbsp; &nbsp; 	 ├─template.php &nbsp; &nbsp; &nbsp; 模板引擎配置\r\n│ &nbsp; &nbsp; 	 ├─trace.phpThinkPHP的应用配置主要包括<strong>应用配置</strong>目录和<strong>模块配置</strong>目录，结构及配置如下（截取部分）；可以直接在相应的应用或模块配置文件中修改或者增加配置参数，如果你要增加额外的配置文件，直接放入应用或模块配置目录即可（文件名小写）。</span>ThinkPHP的应用配置主要包括<strong>应用配置</strong>目录和<strong>模块配置</strong>目录，结构及配置如下（截取部分）；可以直接在相应的应用或模块配置文件中修改或者增加配置参数，如果你要增加额外的配置文件，直接放入应用或模块配置目录即可（文件名小写）。</p><p><img src="/ueditor/php/upload/image/20181108/1541650924971405.png" title="1541650924971405.png" alt="图片.png" width="770" height="393"/></p><p><img src="/ueditor/php/upload/image/20181108/1541650972845123.png" title="1541650972845123.png" alt="图片.png" width="770" height="482"/></p><p><br/></p>', 13, 1541650278, 1541651069, NULL, '1'),
(14, '松哥', 'C语言基础（三）', 'vi编辑器的使用', 'c语言', 0, 3, '<p>vi: vi<span style="font-family:宋体">编辑器</span></p><p>vim<span style="font-family:宋体">：</span></p><p>&nbsp;<span style="font-family:宋体">有三种工作模式：</span></p><p>&nbsp; 1.<span style="font-family:宋体">编辑模式</span></p><p>&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">如何回到命令行模式？</span></p><p>&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">按</span>ESC<span style="font-family:宋体">键回到命令行模式</span>&nbsp; <br/></p><p>&nbsp; 2.<span style="font-family:宋体">命令行模式</span></p><p>&nbsp;&nbsp; <span style="font-family:宋体">使用</span>vi<span style="font-family:宋体">打开一个文件的时候进入的就是命令行模式，命令行模式不能进行编辑</span></p><p>&nbsp;&nbsp; <span style="font-family:宋体">按键盘上的</span>a<span style="font-family: 宋体">键或者</span>i<span style="font-family:宋体">键或者</span>o<span style="font-family:宋体">键进入编辑模式（底下会出现</span>insert<span style="font-family:宋体">）</span></p><p>&nbsp;&nbsp;&nbsp; a:<span style="font-family:宋体">在光标的后一位插入</span></p><p>&nbsp;&nbsp;&nbsp; i:<span style="font-family:宋体">在光标当前位置插入</span> </p><p>&nbsp;&nbsp;&nbsp; o<span style="font-family:宋体">：在光标所在的下一行插入</span></p><p>&nbsp;&nbsp;&nbsp; dd:<span style="font-family:宋体">剪切</span></p><p>&nbsp;&nbsp;&nbsp; p:<span style="font-family:宋体">粘贴</span></p><p>&nbsp;&nbsp;&nbsp; yy<span style="font-family:宋体">；复制</span></p><p>&nbsp;&nbsp;&nbsp; h:<span style="font-family:宋体">向左</span></p><p>&nbsp;&nbsp;&nbsp; j:<span style="font-family:宋体">向下</span></p><p>&nbsp;&nbsp;&nbsp; k:<span style="font-family:宋体">向上</span></p><p>&nbsp;&nbsp;&nbsp; l:<span style="font-family:宋体">向右</span></p><p>&nbsp; 3.<span style="font-family:宋体">底行模式</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">按</span>shift+:<span style="font-family: 宋体">进入底行模式</span>&nbsp;</p><p>&nbsp;&nbsp;&nbsp; w:<span style="font-family:宋体">保存</span></p><p>&nbsp;&nbsp;&nbsp; q:<span style="font-family:宋体">退出</span></p><p>&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">！：强制执行</span></p><p>&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">：</span>Man +<span style="font-family: 宋体">命令</span></p><p>&nbsp;&nbsp;&nbsp; <span style="font-family:宋体">：</span>vsp <span style="font-family:宋体">文件名</span> <span style="font-family:宋体">：打开其他的文件</span></p><p>&nbsp;&nbsp;&nbsp;</p><p>&nbsp; vi +<span style="font-family:宋体">文件名：如果这个文件不存在，则会先创建后打开</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-family: 宋体">如果文件存在，会直接打开</span></p><p>file<span style="font-family:宋体">：查看文件类型</span></p><p>&nbsp;<span style="font-family:宋体">使用</span>vi<span style="font-family:宋体">编辑器写</span>C<span style="font-family:宋体">语言</span></p><p>vi <span style="font-family:宋体">文件名（后缀必须是以</span>.c<span style="font-family:宋体">结尾）</span></p><p>TAB <span style="font-family:宋体">自动补齐</span></p><p>gcc<span style="font-family:宋体">编译器</span></p><p><span style="font-family:宋体">在终端上直接输入命令就可以执行，但是执行编译后的可执行文件确要告知路径，为什么？？？？</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;shell<span style="font-family:宋体">在执行命令的时候会自动去检索</span>/usr/local/Trolltech/Qt-4.8.1/bin:/usr/local/Trolltech/Qt-4.8.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/linux/chaintool/gcc-4.6.4/bin</p><p><span style="font-family:宋体">凡是在这些路径下的命令或者程序，在执行时不需要告之路径</span></p><p>&nbsp;</p><p>echo:<span style="font-family:宋体">打印信息</span></p><p>$PATH:&nbsp;&nbsp;&nbsp; $<span style="font-family:宋体">引用符，</span>PATH<span style="font-family:宋体">时环境变量</span></p><p>gcc&nbsp; 1.c&nbsp;</p><p>1.<span style="font-family:宋体">预编译，将头文件进行展开，将定义的宏进行替换</span></p><p>gcc -E 1.C -O 1.i</p><p>&nbsp;</p><p>2.<span style="font-family:宋体">进行汇编</span></p><p>gcc -S 1.s -o 1.s <span style="font-family:宋体">进行汇编</span></p><p>&nbsp;</p><p>3.<span style="font-family:宋体">进行编译</span></p><p>gcc -c 1.i -o 1.o</p><p>&nbsp;</p><p>4.<span style="font-family:宋体">进行连接</span></p><p>gcc 1.o -o test</p><p class="MsoListParagraph" style="margin-left:24px;text-indent:0">&nbsp;</p><p><br/></p>', 5, 1541655319, 1541655585, NULL, '1'),
(15, '松哥', 'C语言基础（四）', '进制、数据类型、逻辑类型', 'c语言', 0, 1, '<p>【2】进制<br/>&nbsp;十进制0~9<br/>&nbsp;八进制：可以由三个二进制表示0~7<br/>&nbsp;十六进制：可以由四个二进制表示 0~9 abcdef<br/>&nbsp;二进制<br/>&nbsp;数据在存储方式：<br/>&nbsp; 数据在内存中都是以补码的形式进行存储<br/>&nbsp; 正数 +10<br/>&nbsp; 原码：0000 1010<br/>&nbsp; 反码：0000 1010<br/>&nbsp; 补码：0000 1010<br/><br/>&nbsp; 负数：-10<br/>&nbsp; 原码：1000 1010<br/>&nbsp; 反码：1111 0101（符号位不变，其他位取反）<br/>&nbsp; 补码：1111 0110（在反码的基础上加1）<br/><br/>&nbsp;数据类型<br/>&nbsp; char 也叫字符型，本质上是数值类型，<br/>&nbsp; ASCII码<br/>一个字节，一个字节是由8个bit,一般默认都是有符号，最高位是符号，最高位为1的话<br/>&nbsp;&nbsp; 表示这个数是负数，如果最高位是0的话表示的是正数<br/>&nbsp;&nbsp;&nbsp; -128- 0~127，-128是一个特殊的极限值，也叫-0 ，它没有原码也没有反码，只有补码<br/>&nbsp;&nbsp;&nbsp;&nbsp; 1000 0000<br/>&nbsp;int 在32位的操作系统下是4字节，在16位操作系统下是2个字节<br/>&nbsp;short 2个字节<br/>&nbsp;long 32位操作系统中是4个字节 在64位操作系统中是8个字节<br/>&nbsp;<br/>&nbsp;逻辑类型<br/>&nbsp;&nbsp;&nbsp;&nbsp; #include&lt;stdbool.h&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp; bool 值只有0表示假和1表示真 ，在C语言中，0为假，非零为真<br/>浮点型 float&nbsp;&nbsp; double<br/>构造类型<br/>结构体<br/>数组<br/>union&nbsp;</p><p><br/>指针类型<br/>void类型<br/><br/>数据：<br/>常量<br/>在程序执行的过程中不能改变<br/>字符串常量，“”<br/>字符常量‘’<br/>标识常量（宏替换）<br/>#define 标识&nbsp; 替换的内容：本质是字符串替换<br/><br/>变量<br/>变量相当于一个容器，用来存放数据的<br/><br/></p>', 5, 1541655784, 1541655784, NULL, '1');

-- --------------------------------------------------------

--
-- 表的结构 `my_cate`
--

CREATE TABLE `my_cate` (
  `id` int(11) NOT NULL,
  `catename` varchar(20) NOT NULL COMMENT '导航名称',
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

--
-- 转存表中的数据 `my_cate`
--

INSERT INTO `my_cate` (`id`, `catename`, `sort`, `create_time`, `update_time`, `delete_time`) VALUES
(2, 'HTML5', 1, 1541224349, 1541224349, NULL),
(4, 'Github', 3, 1541231115, 1541231115, NULL),
(5, 'C语言', 4, 1541238676, 1541238676, NULL),
(10, '关于我', 6, 1541386478, 1541489258, 1541489258),
(12, '留言版', 6, 1541492620, 1541492791, 1541492791),
(13, 'PHPstudy', 5, 1541640904, 1541640904, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `my_comment`
--

CREATE TABLE `my_comment` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL COMMENT '评论内容',
  `article_id` int(11) NOT NULL COMMENT '评论文章',
  `member_id` int(11) NOT NULL COMMENT '评论用户',
  `create_time` int(11) NOT NULL COMMENT '评论时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

--
-- 转存表中的数据 `my_comment`
--

INSERT INTO `my_comment` (`id`, `content`, `article_id`, `member_id`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '这篇文章真不错', 2, 1, 1541214242, 1541214242, 1641214243),
(2, '1', 4, 2, 1541266106, 1541266259, 1541266259),
(3, '这篇文章不错哟！', 4, 2, 1541266411, 1541266411, NULL),
(4, '好的开始是成功的一半！晚安！', 3, 3, 1541266825, 1541266825, NULL),
(5, 'Nice！ 好饿！', 2, 3, 1541267073, 1541267073, NULL),
(6, '再测试一次！', 4, 1, 1541304182, 1541304182, NULL),
(7, '文章来自w3chool！', 2, 1, 1541304252, 1541304252, NULL),
(8, 'liuwe', 4, 1, 1541471784, 1541485368, 1541485368),
(9, '时间排序测试！', 2, 1, 1541494804, 1541494804, NULL),
(10, '邮箱的设置完成！\r\n', 11, 1, 1541645065, 1541645065, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `my_member`
--

CREATE TABLE `my_member` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `email` varchar(20) NOT NULL COMMENT '邮箱',
  `create_time` int(20) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

--
-- 转存表中的数据 `my_member`
--

INSERT INTO `my_member` (`id`, `username`, `password`, `nickname`, `email`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '杨松', '123456', '松松', '1601149683@qq.com', 1541213904, 1541213904, NULL),
(2, '杨广', '123456', 'yangguang', 'yangguang@qq.com', 1541261379, 1541261379, NULL),
(3, '松松', '123456', '松松', '123456@qq.com', 1541266556, 1541266556, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `my_system`
--

CREATE TABLE `my_system` (
  `id` int(11) NOT NULL,
  `webname` varchar(50) NOT NULL COMMENT '网站标题',
  `copyright` varchar(50) NOT NULL COMMENT '版权信息',
  `create_time` int(11) NOT NULL COMMENT '设置时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统设置表';

--
-- 转存表中的数据 `my_system`
--

INSERT INTO `my_system` (`id`, `webname`, `copyright`, `create_time`, `update_time`, `delete_time`) VALUES
(1, '杨松的博客', '后台管理', 0, 1541483839, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_admin`
--
ALTER TABLE `my_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_article`
--
ALTER TABLE `my_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_cate`
--
ALTER TABLE `my_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_comment`
--
ALTER TABLE `my_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_member`
--
ALTER TABLE `my_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_system`
--
ALTER TABLE `my_system`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `my_admin`
--
ALTER TABLE `my_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `my_article`
--
ALTER TABLE `my_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `my_cate`
--
ALTER TABLE `my_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `my_comment`
--
ALTER TABLE `my_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `my_member`
--
ALTER TABLE `my_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `my_system`
--
ALTER TABLE `my_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
