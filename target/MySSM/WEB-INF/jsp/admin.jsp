<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新音乐后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../../css/okadmin.css">
</head>
<body class="layui-layout-body">
<!-- 更换主体 Eg:orange_theme|blue_theme -->
<div class="layui-layout layui-layout-admin okadmin blue_theme">
    <!--头部导航-->
    <div class="layui-header okadmin-header">
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <a class="ok-menu ok-show-menu" href="javascript:" title="菜单切换">
                    <i class="layui-icon layui-icon-shrink-right"></i>
                </a>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item ok-input-search">
                <input type="text" placeholder="搜索..." class="layui-input layui-input-search"/>
            </li>
            <li class="layui-nav-item">
                <a class="ok-refresh" href="javascript:" title="刷新">
                    <i class="layui-icon layui-icon-refresh-3"></i>
                </a>
            </li>
            <li class="no-line layui-nav-item layui-hide-xs">
                <a id="notice" class="flex-vc pr10 pl10" href="javascript:">
                    <i class="ok-icon ok-icon-notice icon-head-i" title="系统公告"></i>
                    <span class="layui-badge-dot"></span>
                    <cite></cite>
                </a>
            </li>

            <li class="no-line layui-nav-item layui-hide-xs">
                <a id="lock" class="flex-vc pr10 pl10" href="javascript:">
                    <i class="ok-icon ok-icon-lock icon-head-i" title="锁屏"></i><cite></cite>
                </a>
            </li>

            <!-- 全屏 -->
            <li class="layui-nav-item layui-hide-xs">
                <a id="fullScreen" class=" pr10 pl10" href="javascript:;">
                    <i class="layui-icon layui-icon-screen-full"></i>
                </a>
            </li>

            <li class="no-line layui-nav-item">
                <a href="javascript:">
                    <img src="../../images/avatar.png" class="layui-nav-img">
                </a>
                <dl id="userInfo" class="layui-nav-child">
                    <dd><a lay-id="u-1" href="javascript:" data-url="pages/member/user.html">个人中心<span
                            class="layui-badge-dot"></span></a></dd>
                    <dd><a lay-id="u-2" href="javascript:" data-url="pages/member/user-info.html">基本资料</a></dd>
                    <dd><a lay-id="u-3" href="javascript:" data-url="pages/member/user-pwd.html">安全设置</a></dd>
                    <dd><a lay-id="u-4" href="javascript:" id="alertSkin">皮肤动画</a></dd>
                    <dd>
                        <hr/>
                    </dd>
                    <dd><a href="javascript:void(0)" id="logout">退出登录</a></dd>
                </dl>
            </li>

            <!-- 菜单 -->
            <li class="layui-nav-item layui-hide-xs">
                <a id="okSetting" class="pr10 pl10" href="javascript:;">
                    <i style="font-size: 18px" class="ok-icon ok-icon-moreandroid"></i>
                </a>
            </li>
        </ul>
    </div>
    <!--遮罩层-->
    <div class="ok-make"></div>
    <!--左侧导航区域-->
    <div class="layui-side layui-side-menu okadmin-bg-20222A ok-left">
        <div class="layui-side-scroll okadmin-side">
            <div class="okadmin-logo">New Music！</div>
            <div class="user-photo">
                <a class="img" title="我的头像">
                    <img src="../../images/avatar.png" class="userAvatar">
                </a>
                <p>你好！<span class="userName">bobi</span>, 欢迎登录</p>
            </div>
            <!--左侧导航菜单-->
            <ul id="navBar" class="layui-nav okadmin-nav okadmin-bg-20222A layui-nav-tree">
                <li class="layui-nav-item layui-this">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        仪表盘
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        用户管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        专辑管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        歌曲管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        风格管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i is-close=false class="ok-icon">&#xe654;</i>
                        用户中心管理
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- 内容主体区域 -->
    <div class="content-body">
        <div id="tabContent" class="layui-tab-content ok-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe id="main-content" src='/meter/m' frameborder="0" scrolling="yes" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>

    <!--底部信息-->
    <div class="layui-footer okadmin-text-center">
        新音乐后台管理
    </div>
</div>
</body>
<script src="../../js/jump.js"></script>
</html>
