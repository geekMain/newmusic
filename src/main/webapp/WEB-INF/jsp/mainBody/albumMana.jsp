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
    <link rel="stylesheet" href="/static/css/albumstyle.css"/>
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
                    <%--<li class="active"><a href="${pageContext.request.contextPath}/Page/albumMana"><span class="glyphicon glyphicon-headphones" aria-hidden="true"></span><span class="sr-only">(current)</span></a></li>--%>
                    <li><a href="${pageContext.request.contextPath}/Page/albumMana">查看所有</a></li>
                    <li><a href="#2" data-toggle="tab">添加</a></li>
                </ul>
                <!--搜素框-->
                <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/albumPage/findalbum" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="请输入要查询的专辑id" name="albumId">
                    </div>
                    <button type="submit" class="btn btn-default">查找</button>
                </form>
            </div>
        </div>
    </nav>
    <div>
        <div class="tab-content">
            <div class="tab-pane fade in active" id="1">

                    <table class="table table-condensed">
                    <tr>
                        <th></th>
                        <th>专辑名字</th>
                        <th>专辑歌手id</th>
                        <th>专辑发布时间</th>
                        <th>专辑发行公司</th>
                        <th>专辑介绍</th>
                        <th style="padding-left: 50px">操作</th>
                    </tr>
                    <tbody>
                    <c:forEach var="album" items="${albumlist}">
                        <tr>
                            <form action="${pageContext.request.contextPath}/albumPage/updateAlbum" method="post" ACCEPT-CHARSET="UTF-8">
                                <td><input type="text" class="listinput" name="albumId" value="${album.albumId}" style="display: none"></td>
                                <td><input type="text" class="listinput" name="albumName" value="${album.albumName}"></td>
                                <td><input type="text" class="listinput" name="albumSingerId" value="${album.albumSingerId}"></td>
                                <td><input type="text" class="listinput" name="issuingReleaseTime" value="${album.issuingReleaseTime}"></td>
                                <td><input type="text" class="listinput" name="companyId" value="${album.companyId}"></td>
                                <td><input type="text" class="listinput" name="introduce" value="${album.introduce}"></td>
                                <td>
                                    <button type="submit" class="btn btn-success" style="margin-right: 14px">修改</button>
                                    <a class="btn btn-danger" href="${pageContext.request.contextPath}/albumPage/deleteAlbum/${album.albumId}">删除</a>
                                </td>
                            </form>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
            <div class="tab-pane fade" id="2">
                <div>
                    <form model="" action="${pageContext.request.contextPath}/albumPage/insertAlbum" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">专辑名称</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="专辑名称" name="albumName">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail2">专辑歌手id</label>
                            <input type="text" class="form-control" id="exampleInputEmail2" placeholder="专辑歌手id" name="albumSingerId">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail3">专辑发布时间</label>
                            <input type="text" class="form-control" id="exampleInputEmail3" placeholder="专辑发布时间" name="issuingReleaseTime">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail4">专辑发行公司</label>
                            <input type="text" class="form-control" id="exampleInputEmail4" placeholder="专辑发行公司" name="companyId">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile5">专辑介绍</label>
                            <input type="text" class="form-control" id="exampleInputFile5" placeholder="专辑介绍" name="introduce">
                        </div>
                        <button type="submit" class="btn btn-default">添加</button>
                    </form>
                </div>
            </div>
            <%--<div class="tab-pane fade" id="3">
                <div>
                    <form model="" action="${pageContext.request.contextPath}/albumPage/updateAlbum/${albumId}" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail6">专辑名称</label>
                            <input type="text" class="form-control" id="exampleInputEmail6" placeholder="专辑名称" name="albumName" value="${album.albumName}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail7">专辑歌手id</label>
                            <input type="text" class="form-control" id="exampleInputEmail7" placeholder="专辑歌手id" name="albumSingerId" value="${album.albumSingerId}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail8">专辑发布时间</label>
                            <input type="text" class="form-control" id="exampleInputEmail8" placeholder="专辑发布时间" name="issuingReleaseTime" value="${album.issuingReleaseTime}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail9">专辑发行公司</label>
                            <input type="text" class="form-control" id="exampleInputEmail9" placeholder="专辑发行公司" name="companyId" value="${album.companyId}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile10">专辑介绍</label>
                            <input type="text" class="form-control" id="exampleInputFile10" placeholder="专辑介绍" name="introduce" value="${album.introduce}">
                        </div>
                        <button type="submit" class="btn btn-default">修改</button>
                    </form>
                </div>
            </div>--%>
            <%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">修改</h4>
                        </div>
                        <div class="modal-body">
                            <form action="${pageContext.request.contextPath}/albumPage/updateAlbum/{album.albumId}" method="post">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">专辑名字:</label>
                                    <input type="text" name="albumName" class="form-control" id="recipient-name" value="${album.albumName}">
                                </div>
                                &lt;%&ndash;<div class="form-group">
                                    <label for="message-text" class="control-label">专辑介绍:</label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                </div>&ndash;%&gt;
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">修改</button>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
    </div>
</body>
<script></script>
</html>
