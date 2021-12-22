<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/12/1
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="/lib/layui/css/layui.css">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">用户管理</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <!-- 基本功能 -->
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span
                        class="sr-only">(current)</span></a></li>
                <li><a href="#1" data-toggle="tab">查看</a></li>
                <li><a href="#2" data-toggle="tab">添加账号</a></li>
                <li><a href="#3" data-toggle="tab">添加用户信息</a></li>
                <li><a href="#4" data-toggle="tab">添加用户信息</a></li>
            </ul>
            <!--搜素框-->
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="查找用户">
                </div>
                <button type="submit" class="btn btn-default">查找</button>
            </form>
        </div>
    </div>
</nav>
<div>
    <div class="tab-content">
        <div class="col-md-12">
            <div class="container">

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
                                    <%--<li class="active">
                                        <a href="#1" data-toggle="tab">查询用户</a>
                                    </li>--%>

                                </ul>
                                <div id="myTabContent" class="tab-content" style="padding:50px;">
                                    <div class="tab-pane fade in active" id="4">
                                        //--------------------------
                                        <form action="" class="login-form" method="post">
                                            <input type="text" autocomplete="off"
                                                   placeholder="输入查询用户id" name="id" required/>
                                            </br></br>
                                            <%--<input  class="btn btn-primary" type="submit" value="确定"/>--%>
                                            <span class="btn btn-primary">
                                                    <a style="text-decoration: none;color: #ffffff" href="">查询全部</a>
                                                </span>
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
            <div class="tab-pane fade in active" id="1">

                <table class="table table-condensed">
                    <tr>
                        <th>用户id</th>
                        <th>用户登录id</th>
                        <th>用户名称</th>
                        <th>用户介绍</th>
                        <th>用户性别</th>
                        <th>用户生日</th>
                        <th>用户头像</th>
                        <th>用户地区</th>
                        <th>用户操作</th>
                    </tr>
                    <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <td>${user.userId}</td>
                            <td>${user.userLoginId}</td>
                            <td>${user.username}</td>
                            <td>${user.introduce}</td>
                            <td>${user.sex}</td>
                            <td>${user.userBirthday}</td>
                            <td>${user.userAvatar}</td>
                            <td>${user.userArea}</td>
                            <td><a href="/user/userDelete/${user.userId}">删除</a></td>
                            <td>
                                <button type="button" data-toggle="modal" data-target="#myModal">
                                    修改
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="2">
                <div>
                    <form action="/user/userLoginAdd" method="post" style="text-align: center">
                        <div class="form-group" style="text-align: center">
                            <label>用户账号</label>
                            <input type="text" class="form-control" name="userCount" style="text-align:center"
                                   placeholder="*请输入账号">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户密码</label>
                            <input type="text" class="form-control" name="userPassword" style="text-align:center"
                                   placeholder="*请输入密码">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户邮箱</label>
                            <input type="text" class="form-control" name="userEmail" style="text-align:center"
                                   placeholder="请输入邮箱">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户手机号</label>
                            <input type="text" class="form-control" name="userPhone" style="text-align:center"
                                   placeholder="*请输入手机号">
                        </div>
                        <button type="submit" onclick="addUser()" class="btn btn-default">添加</button>
                    </form>
                </div>
            </div>
            <div class="tab-pane fade" id="3">
                <div>
                    <form model="userAd d" style="text-align: center">
                        <div class="form-group" style="text-align: center">
                            <label>用户名称</label>
                            <input type="text" class="form-control" id="username" style="text-align:center"
                                   placeholder="*请输入你的名字">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户介绍</label>
                            <input type="text" class="form-control" id="introduce" style="text-align:center"
                                   placeholder="请输入介绍">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户性别</label>
                            <input type="text" class="form-control" id="usersex" style="text-align:center"
                                   placeholder="*请输入你的性别">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户生日</label>
                            <input type="text" class="form-control" id="birthday" style="text-align:center"
                                   placeholder="*请输入你的生日">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>用户地区</label>
                            <input type="text" class="form-control" id="userarea" style="text-align:center"
                                   placeholder="*请输入你所地址">
                        </div>
                        <div class="form-group" style="text-align: center">
                            <label>1</label>
                            <input type="text" class="form-control" id="exampleInputFile6" style="text-align:center"
                                   placeholder="*请输入1">
                        </div>
                        <button type="submit" onclick="addUser()" class="btn btn-default">添加</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>