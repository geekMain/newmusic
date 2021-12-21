<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
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
                <li class="active"><a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i><span class="sr-only">(current)</span></a></li>
                <li><a href="#1" data-toggle="tab">查看</a></li>
                <li><a href="#2" data-toggle="tab">添加</a></li>
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
                    <td><a>修改</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="tab-pane fade" id="2">
        <div>
            <form model="userAdd" style="text-align: center">
                <div class="form-group" style="text-align: center">
                    <label>用户密码</label>
                    <input type="text" class="form-control" id="userpassword" style="text-align:center" placeholder="*请输入密码">
                </div>
                <div class="form-group" style="text-align: center">
                    <label>用户名称</label>
                    <input type="text" class="form-control" id="username" style="text-align:center" placeholder="*请输入你的名字">
                </div>
                <div class="form-group"style="text-align: center">
                    <label>用户介绍</label>
                    <input type="text" class="form-control" id="introduce" style="text-align:center" placeholder="请输入介绍">
                </div>
                <div class="form-group" style="text-align: center">
                    <label>用户性别</label>
                    <input type="text" class="form-control" id="usersex" style="text-align:center" placeholder="*请输入你的性别">
                </div>
                <div class="form-group" style="text-align: center">
                    <label>用户生日</label>
                    <input type="text" class="form-control" id="birthday" style="text-align:center" placeholder="*请输入你的生日">
                </div>
                <div class="form-group" style="text-align: center">
                    <label>用户地区</label>
                    <input type="text" class="form-control" id="userarea" style="text-align:center" placeholder="*请输入你所地址">
                </div>
                <div class="form-group" style="text-align: center">
                    <label>1</label>
                    <input type="text" class="form-control" id="exampleInputFile6" style="text-align:center" placeholder="*请输入1">
                </div>
                <button type="submit" onclick="addUser()" class="btn btn-default">添加</button>
            </form>
        </div>
    </div>
</div>
<script>
    function addUser(){
        $.ajax({
            type: "POST",
            url: "/user/addUser",
            data: {
                userpassword : ;//用户密码
                username : ;//用户名称
                introduce : ;//用户介绍
                sex : ;//用户性别
                userBirthday : ;//用户生日
                userAvatar : ;//用户头像
                userArea : ;//用户地址
            },
            success: function (result) {
                var scorePage = result.data;
                if (result.success) {
                    var pageContent = "<option>请选择年级</option>";
                    $.each(scorePage, function (i, grade) {
                        pageContent = pageContent + '<option value="' + grade.id + '">' + grade.grade_name + '</option>';
                    });
                    $("#grade").html(pageContent);
                } else {
                    layer.msg("年级查询失败！", {time: 1000, icon: 5, shift: 6});
                }
            }
        })
    }
</script>
</body>
</html>