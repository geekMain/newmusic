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
                <a class="navbar-brand" href="#">歌曲管理</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <!-- 基本功能 -->
                <ul class="nav navbar-nav">
                    <li class="nav-item">
                        <a href="#">
                            <i class="bi bi-brightness-alt-high"></i>
                            </span><span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item"><a href="#1" data-toggle="tab">查看</a></li>
                    <li class="nav-item"><a href="#2" data-toggle="tab">添加</a></li>
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
    <div class="tab-content">
        <div class="tab-pane fade in active" id="1">
            <table class="table table-condensed">
                <thead>
                    <tr>
                        <th>序号</th>
                        <th>歌曲名称</th>
                        <th>风格</th>
                        <th>歌手</th>
                        <th>歌曲时长</th>
                        <th>歌曲播放量</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="music" items="${list}">
                        <tr>
                            <td>${list.indexOf(music)+1}</td>
                            <td>${music.musicName}</td>
                            <!--
                                这里是需要在写一个c:forEach来进行便利
                            -->
                            <td>
                                <c:forEach var="stylemusic" items="${list3}">
                                    <c:if test="${music.singerId == stylemusic.styleId}">
                                        ${stylemusic.styleName}
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>
                                <c:forEach var="singer" items="${list2}">
                                    <c:if test="${music.singerId == singer.singerId}">
                                        ${singer.singerName}
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>${music.musicLength}</td>
                            <td>${music.musicCount}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade" id="2">
            <div>
                <form model="">
                    <div class="form-group">
                        <label for="exampleInputEmail1">歌曲名称</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="歌曲名称">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">歌曲链接</label>
                        <input type="password" class="form-control" id="exampleInputEmail2" placeholder="歌曲链接">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">歌手名称</label>
                        <input type="password" class="form-control" id="exampleInputEmail3" placeholder="歌手名称">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail4">图片链接</label>
                        <input type="password" class="form-control" id="exampleInputEmail4" placeholder="图片链接">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">歌词文件</label>
                        <input type="file" id="exampleInputFile">
                    </div>
                    <div class="form-group">
                        <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option selected>请选择你歌曲的类型</option>
                            <!--这里之后需要从数据库中获取数据-->
                            <option value="1">流行</option>
                            <option value="2">摇滚</option>
                            <option value="3">民谣</option>
                            <option value="4">电子</option>
                            <option value="5">舞曲</option>
                            <option value="6">民谣</option>
                        </select>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> 这个不必在意
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">添加</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
