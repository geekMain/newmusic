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
            <a class="navbar-brand" href="#">专辑管理</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <!-- 基本功能 -->
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-headphones" aria-hidden="true"></span><span class="sr-only">(current)</span></a></li>
                <li><a href="#1" data-toggle="tab">查看</a></li>
                <li><a href="#2" data-toggle="tab">添加</a></li>
            </ul>
            <!--搜素框-->
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="查找歌曲">
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
                <th>id</th>
                <th>专辑名字</th>
                <th>专辑歌手id</th>
                <th>专辑发布时间</th>
                <th>专辑发行公司</th>
                <th>专辑介绍</th>
            </tr>
            <tbody>
            <c:forEach var="album" items="${list}">
                <tr>
                    <td>${list.indexOf(album)+1}</td>
                    <td>${album.albumName}</td>
                    <td>${album.albumSingerId}</td>
                    <td>${album.issuingReleaseTime}</td>
                    <td>${album.companyId}</td>
                    <td>${album.introduce}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="tab-pane fade" id="2">
        <div>
            <form model="albumadd">
                <div class="form-group">
                    <label for="exampleInputEmail1">专辑名称</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="专辑名称">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">专辑歌手id</label>
                    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="专辑歌手id">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail3">专辑发布时间</label>
                    <input type="date" class="form-control" id="exampleInputEmail3" placeholder="专辑发布时间">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail4">专辑发行公司</label>
                    <input type="text" class="form-control" id="exampleInputEmail4" placeholder="专辑发行公司">
                </div>
                <div class="form-group">
                    <label for="exampleInputFile5">专辑介绍</label>
                    <input type="text" class="form-control" id="exampleInputFile5" placeholder="专辑介绍">
                </div>
                <button type="submit" class="btn btn-default">添加</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
