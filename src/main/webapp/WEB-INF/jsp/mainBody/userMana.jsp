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
                <li><a href="#0" data-toggle="tab">查看用户</a></li>
                <li><a href="#1" data-toggle="tab">查看用户信息</a></li>
                <li><a href="#2" data-toggle="tab">添加账号</a></li>
                <li><a href="#3" data-toggle="tab">添加用户信息</a></li>
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
            <div class="tab-pane fade in active" id="0">

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
                        <th>用户删除</th>
                    </tr>
                    <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <form action="/user/userInformationAdd" method="post" ACCEPT-CHARSET="UTF-8">
                                <td><input class="layui-col-md6" type="text" name="userId" value="${user.userId}"/></td>
                                <td><input class="layui-col-md6" type="text" name="userLoginId" value="${user.userLoginId}"/></td>
                                <td><input class="layui-col-md6" type="text" name="username" value="${user.username}"/></td>
                                <td><input class="layui-col-md6" type="text" name="introduce" value="${user.introduce}"/></td>
                                <td><input class="layui-col-md6" type="text" name="sex" value="${user.sex}"/></td>
                                <td><input class="layui-col-md6" type="text" name="userBirthday" value="${user.userBirthday}"/></td>
                                <td><a class="layui-col-md10" href="/user/userDelete/${user.userId}">删除</a></td>
                                <td><button class="layui-col-md10" type="submit" class="btn btn-default">修改</button></td>
                            </form>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
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
                        <th>用户删除</th>
                        <th>用户修改</th>
                    </tr>
                    <tbody>
                    <c:forEach var="user" items="${userList}">
                        <tr>
                            <form action="/user/userInformationAdd" method="post" ACCEPT-CHARSET="UTF-8">
                                <td><input class="layui-col-md10" type="text" name="userId" value="${user.userId}"/></td>
                                <td><input class="layui-col-md10" type="text" name="userLoginId" value="${user.userLoginId}"/></td>
                                <td><input class="layui-col-md10" type="text" name="username" value="${user.username}"/></td>
                                <td><input class="layui-col-md10" type="text" name="introduce" value="${user.introduce}"/></td>
                                <td><input class="layui-col-md10" type="text" name="sex" value="${user.sex}"/></td>
                                <td><input class="layui-col-md10" type="text" name="userBirthday" value="${user.userBirthday}"/></td>
                                <td><input class="layui-col-md10" type="text" name="userAvatar" value="${user.userAvatar}"/></td>
                                <td><input class="layui-col-md10" type="text" name="userArea" value="${user.userArea}"/></td>
                                <td><a class="layui-col-md10" href="/user/userDelete/${user.userId}">删除</a></td>
                                <td><button class="layui-col-md10" type="submit" class="btn btn-default">修改</button></td>
                            </form>
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