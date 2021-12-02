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
    <title>Title</title>
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
            <a class="navbar-brand" href="#">歌曲管理</a>
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
                <th>风格id</th>
                <th>歌曲名字</th>
                <th>歌曲时长</th>
                <th>歌词文件名</th>
                <th>歌手id</th>
            </tr>
        </table>
    </div>
    <div  class="tab-pane fade" id="2">
        添加
    </div>
</div>
</body>
</html>
