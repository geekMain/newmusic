<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/11/11
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<center>
    <h3>用户列表</h3>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="container">
                    <!-- 按钮：用于打开模态框 -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        操作
                    </button>

                    <!-- 模态框 -->
                    <div class="modal fade" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- 模态框头部 -->
                                <div class="modal-header">
                                    <h4 class="modal-title">操作用户</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- 模态框主体 -->
                                <div class="modal-body">
                                    <ul id="myTab" class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#1" data-toggle="tab">查询用户</a>
                                        </li>
                                        <li>
                                            <a href="#2" data-toggle="tab">删除用户</a>
                                        </li>
                                        <li>
                                            <a href="#3" data-toggle="tab">修改用户</a>
                                        </li>
                                        <li>
                                            <a href="#4" data-toggle="tab">增加用户</a>
                                        </li>

                                    </ul>
                                    <div id="myTabContent" class="tab-content" style="padding:50px;">
                                        <div class="tab-pane fade in active" id="1">
                                            <form action="/homeIndex/homePageUserQuery" class="login-form" method="post">
                                                <input type="text" autocomplete="off"
                                                       placeholder="输入查询用户id" name="id" required/>
                                                </br></br>
                                                <input  class="btn btn-primary" type="submit" value="确定"/>
                                                <span class="btn btn-primary">
                                                    <a style="text-decoration: none;color: #ffffff" href="/homeIndex/queryUserAll">查询全部</a>
                                                </span>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="2">
                                            <form action="/homeIndex/homePageUserDelete" class="login-form" method="post">
                                                <input type="text" autocomplete="off"
                                                       placeholder="输入删除用户id" name="id" required/>
                                                </br></br>
                                                <input  class="btn btn-primary" type="submit" value="确定"/>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="3">
                                            <form action="/homeIndex/homePageUserUpDate" class="login-form" method="post">
                                                <select name="branch" style="width: 182px">
                                                    <option>选择</option>
                                                    <c:forEach items="${user}" var="us">
                                                        <option name="id">${us.id}</option>
                                                    </c:forEach>
                                                </select>
<%--                                                <div style="margin-top: 16px">--%>
<%--                                                    <input id="id" type="text" autocomplete="off"--%>
<%--                                                           placeholder="输入用户id" name="id" required/>--%>
<%--                                                </div>--%>
                                                <div style="margin-top: 16px">
                                                    <input id="name" type="text" autocomplete="off"
                                                           placeholder="用户名" name="username" required/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input id="pwd" type="password"
                                                           autocomplete="off" placeholder="密码" name="password" required maxlength="32"/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input id="phone" type="phone"
                                                           autocomplete="off" placeholder="手机号" name="phone" required maxlength="11"/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input id="email" type="email"
                                                           autocomplete="off" placeholder="邮箱" name="email" required maxlength="32"/>
                                                </div>
                                                <div style="margin-top: 16px">
                                                     <input  class="btn btn-primary" type="submit" value="确定"/>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="4">
                                            <form action="/registerPage/storeUserInformation" class="login-form" method="post">

                                                <div style="margin-top: 16px">
                                                    <input type="text" autocomplete="off"
                                                           placeholder="用户名" name="username" required/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input type="password"
                                                           autocomplete="off" placeholder="密码" name="password" required maxlength="32"/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input type="phone"
                                                           autocomplete="off" placeholder="手机号" name="phone" required maxlength="11"/>
                                                </div>

                                                <div style="margin-top: 16px">
                                                    <input type="email"
                                                           autocomplete="off" placeholder="邮箱" name="email" required maxlength="32"/>
                                                </div>
                                                <div style="margin-top: 16px">
                                                    <input  class="btn btn-primary" type="submit" value="确定"/>
                                                </div>

                                            </form>

                                        </div>
                                    </div>
                                </div>

                                <!-- 模态框底部 -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <button id="login"class="enter-btn" >login</button>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>手机</th>
                        <th>邮箱</th>
                        <th>时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${user}" var="us">
                        <tr>
                            <td>${us.id}</td>
                            <td>${us.username}</td>
                            <td>${us.password}</td>
                            <td>${us.phone}</td>
                            <td>${us.email}</td>
                            <td>${us.date}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</center>
<script src="https://www.layuicdn.com/layer-v3.1.1/layer.js"></script>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

<script>

</script>
</body>
</html>
