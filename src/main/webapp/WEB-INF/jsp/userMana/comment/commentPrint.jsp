<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/12/1
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论模块</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <script src="/lib/layui/layui.js"></script>
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">
</head>
<body>
<div>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>序号</th>
            <th>评论人id:</th>
            <th>评论的内容</th>
            <th>评论的时间</th>
            <th>点赞的数量</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="music" items="${list}">
                <tr>
                    <td>${list.indexOf(music)+1}</td>
                    <td>${music.userId}</td>
                    <td>${music.comContext}</td>
                    <td>${music.comTime}</td>
                    <td>${music.comNumber}</td>
                    <td><button  class="layui-btn layui-btn-sm layui-btn-danger"><a href="/comment/del/${music.id}">删除</a></button></td>
                </tr>
            </c:forEach>
            <div class="alert alert-warning alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>请不要随便删除</strong>------删除了，请自己到数据库中添加新的数据.
            </div>
        </tbody>
    </table>
</div>
</body>
</html>
