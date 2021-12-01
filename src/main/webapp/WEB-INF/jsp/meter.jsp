<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/11/30
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../css/oksub.css" media="all"/>
</head>
<body class="ok-body-scroll console">
<div class="ok-body home">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <img src="../images/home-01.png" alt="none"/>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text incomes-num">0</div>
                        <div class="stat-heading">歌曲</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card ">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <img src="../images/home-02.png" alt="none"/>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text goods-num">0</div>
                        <div class="stat-heading">专辑</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <img src="../images/home-03.png" alt="none"/>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text blogs-num">0</div>
                        <div class="stat-heading">会员</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-md3">
            <div class="layui-card">
                <div class="ok-card-body">
                    <div class="img-box" ok-pc-in-show>
                        <img src="../images/home-04.png" alt="none"/>
                    </div>
                    <div class="cart-r">
                        <div class="stat-text fans-num">0</div>
                        <div class="stat-heading">用户</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">用户排行榜</div>
                </div>
                <div class="ok-card-body map-body">
                    <div style="height: 100%;" id="userSourceMap"></div>
                </div>
            </div>
        </div>

        <div class="layui-col-md4">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">用户访问</div>
                </div>
                <div class="ok-card-body map-body">
                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="../images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-a">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-a">
                                <div class="layui-progress-bar per-bg-a" lay-percent="35%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="../images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-a">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-b">
                                <div class="layui-progress-bar per-bg-b" lay-percent="15%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="../images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-c">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-c">
                                <div class="layui-progress-bar per-bg-c" lay-percent="20%"></div>
                            </div>
                        </div>
                    </div>

                    <div class="progress-box ">
                        <div class="pro-head">
                            <img src="../images/face.jpg" alt="none"/>
                        </div>
                        <div class="pro-data">
                            <h4 class="por-title">Visits</h4>
                            <div class="por-txt pro-d">用户比例</div>
                            <div class="layui-progress" lay-filter="pro-d">
                                <div class="layui-progress-bar per-bg-d" lay-percent="30%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="ok-card-body ">
                    <table id="userData" lay-filter="userdata"></table>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="ok-card-body ">
                    <div class="map-china" id="userLocationMap"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>