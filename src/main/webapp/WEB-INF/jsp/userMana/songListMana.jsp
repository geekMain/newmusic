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
    <title>歌单模块</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">歌单模块</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <!-- 基本功能 -->
                <ul class="nav navbar-nav">
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/userCenterMana/songListMana">查看所有</a>
                    </li>
                    <li><a href="#2" data-toggle="tab">添加</a></li>
                </ul>
                <!--搜素框-->
                <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/songList/songListOne"
                      method="post">
                    <div class="form-group">
                        <input type="text" name="songId" class="form-control" placeholder="请输入要查询的歌单id">
                    </div>
                    <button type="submit" class="btn btn-default">查看</button>
                </form>
            </div>
        </div>
    </nav>
    <%--查询--%>
    <div class="tab-content">
        <div class="tab-pane fade in active" id="1">
            <table class="table table-condensed">
                <tr>
                    <th style="display: none"></th>
                    <th>用户id</th>
                    <th>歌单名字</th>
                    <th>歌单创建时间</th>
                    <th>歌单介绍</th>
                    <th>歌单浏览量</th>
                    <th>操作</th>
                </tr>
                <tbody>
                <c:forEach var="songlist" items="${list}">
                    <tr>
                        <form action="${pageContext.request.contextPath}/songList/songListUpdate" method="post"
                              ACCEPT-CHARSET="UTF-8">
                            <td style="display: none">
                                <input class="layui-col-md6" type="text" name="songId" value="${songlist.songId}"/>
                            </td>
                            <td>
                                <input class="layui-col-md1" style="border:0px;width: 100px" type="text" name="userId"
                                       value="${songlist.userId}"/>
                            </td>
                            <td>
                                <input class="layui-col-md2" style="border:0px;width: 100px" type="text" name="songName"
                                       value="${songlist.songName}"/>
                            </td>
                            <td>
                                <input class="layui-col-md3" style="border:0px;width: 100px" type="text"
                                       name="songCreateTime" value="${songlist.songCreateTime}"/>
                            </td>
                            <td>
                                <input class="layui-col-md4" style="border:0px;width: 100px" type="text"
                                       name="songIntroduce" value="${songlist.songIntroduce}"/>
                            </td>
                            <td>
                                <input class="layui-col-md5" style="border:0px;width: 100px" type="text" name="songCount"
                                       value="${songlist.songCount}"/>
                            </td>
                            <td>
                                <a class="layui-col-md10"
                                   href="${pageContext.request.contextPath}/songList/songListDelete/${songlist.songId}">删除</a>
                                |
                                <button class="layui-col-md10" type="submit" class="btn btn-default">修改</button>
                            </td>
                        </form>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <%--添加--%>
        <div class="tab-pane fade" id="2">
            <div>
                <form model="" action="${pageContext.request.contextPath}/songList/songListAdd" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmailuid">用户id</label>
                        <input type="text" name="userId" class="form-control" id="exampleInputEmailuid" placeholder="id">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">歌单名称</label>
                        <input type="text" name="songName" class="form-control" id="exampleInputEmail1" placeholder="歌单名称">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">歌单创建时间</label>
                        <input type="text" name="songCreateTime" class="form-control" id="exampleInputEmail2"
                               placeholder="歌单创建时间">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">歌单介绍</label>
                        <input type="text" name="songIntroduce" class="form-control" id="exampleInputEmail3"
                               placeholder="歌单介绍">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail4">歌单浏览量</label>
                        <input type="text" name="songCount" class="form-control" id="exampleInputEmail4"
                               placeholder="歌单浏览量">
                    </div>
                    <button type="submit" class="btn btn-default">添加</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
