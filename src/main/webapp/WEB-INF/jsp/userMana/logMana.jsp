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
    <link rel="stylesheet" href="/static/css/oksub.css" media="all"/>
    <script src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
</head>
<body class="ok-body-scroll console">
<div class="ok-body home">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md9">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">用户日志</div>
                </div>
                <div class="ok-card-body map-body" style="height: 415px;">
                    <div id="music"  style="width: 100%; height: 100%;">
                        <div></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">
                    <div class="ok-card-title">登录信息</div>
                </div>
                <div class="ok-card-body" style="padding: 0px;">
                    <div class="ok-card-body" style="padding: 8px;">
                        <ul>
                            <li>
                                用户：
                                ${sessionScope.sysLog.userId}
                            </li>
                            <li>
                                设备：${sessionScope.sysLog.loginDevice}
                            </li>
                            <li>
                                设备用户：${sessionScope.sysLog.sysUserName}
                            </li>
                            <li>
                                设备名：${sessionScope.sysLog.sysName}
                            </li>
                            <li>
                                浏览器：${sessionScope.sysLog.loginBrowser}
                            </li>
                            <li>
                                地址：${sessionScope.sysLog.loginAddress}
                            </li>
                            <li>
                                登录时间：${sessionScope.sysLog.loginTime}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>


