<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>New Music后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/css/okadmin.css">
    <link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.min.css"/>

</head>
<body class="layui-layout-body">

<div id="main-body" class="layui-layout layui-layout-admin okadmin blue_theme ok-left-hide">
    <!--头部导航-->
    <div class="layui-header okadmin-header">
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item">
                <a id="mainBody-show" class="ok-menu ok-show-menu" href="javascript:" title="菜单切换">
                    <i class="fa fa-bars" aria-hidden="true"style=""></i>
                </a>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item ok-input-search">
                <input type="text" placeholder="搜索..." class="layui-input layui-input-search"/>
            </li>
            <li class="layui-nav-item">
                <a class="ok-refresh" href="javascript:" title="刷新">
                    <i class="fa fa-rotate-right" aria-hidden="true"></i>
                </a>
            </li>
            <li class="no-line layui-nav-item layui-hide-xs">
                <a id="notice" class="pr10 pl10" href="javascript:">
                    <i class="fa fa-bell" title="系统公告"></i>
                    <span class="layui-badge-dot" style="left: 11px"></span>
                </a>
            </li>

            <li class="no-line layui-nav-item layui-hide-xs">
                <a id="lock" class="ok-refresh" href="javascript:" title="锁屏">
                    <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                </a>
            </li>

            <!-- 全屏 -->
            <li class="layui-nav-item layui-hide-xs">
                <a id="fullScreen" class=" pr10 pl10" href="javascript:;" title="全屏">
                    <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                </a>
            </li>

            <li class="no-line layui-nav-item">
                <a href="javascript:">
                    <img src="/static/avatar/${user.userAvatar}" class="layui-nav-img">
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
                    <img src="/static/avatar/${user.userAvatar}" class="userAvatar">
                </a>
                <p>你好！<span class="userName">${user.username}</span>, 欢迎登录</p>
            </div>
            <!--左侧导航菜单-->
            <ul id="navBar" class="layui-nav okadmin-nav okadmin-bg-20222A layui-nav-tree">
                <li class="layui-nav-item layui-this">
                    <a href="javascript:">
                        <i class="fa fa-globe" aria-hidden="true"></i>
                        仪表盘
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        用户管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i class="fa fa-font" aria-hidden="true"></i>
                        专辑管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i class="fa fa-microphone" aria-hidden="true"></i>
                        歌曲管理
                    </a>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i class="fa fa-frown-o" aria-hidden="true"></i>
                        风格管理
                    </a>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:">
                        <i class="fa fa-cogs" aria-hidden="true"></i>
                        用户中心管理
                    </a>
                    <ul id="userSubpage" style="background-color: #4476A7;display:none;">
                        <li class="layui-nav-item" style="flood-color: #4476A7;">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-heartbeat" aria-hidden="true"></i>
                                粉丝模块
                            </a>
                        </li>
                        <li class="layui-nav-item" style="flood-color: #4476A7">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
                                消息模块
                            </a>
                        </li>
                        <li class="layui-nav-item" style="flood-color: #4476A7">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-edit" aria-hidden="true"></i>
                                日志模块
                            </a>
                        </li>
                        <li class="layui-nav-item" style="flood-color: #4476A7">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                收藏模块
                            </a>
                        </li>
                        <li class="layui-nav-item" style="flood-color: #4476A7">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-list-alt" aria-hidden="true"></i>
                                歌单模块
                            </a>
                        </li>
                        <li class="layui-nav-item" style="flood-color: #4476A7">
                            <a href="javascript:" style="font-size: 1px">
                                <i class="fa fa-comments-o" aria-hidden="true"></i>
                                评论模块
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- 内容主体区域 -->
    <div class="content-body">
        <div id="tabContent" class="layui-tab-content ok-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe id="main-content" src='/Page/meter' frameborder="0" scrolling="yes" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>

    <!--底部信息-->
    <div class="layui-footer okadmin-text-center">
        新音乐后台管理
    </div>
</div>
</body>
<script src="/static/js/jump.js"></script>
<script src="/static/js/onclickUserCenter.js"></script>
<script src="/static/js/main_body.js"></script>
<script src="/lib/layui/layui.js"></script>
</html>
