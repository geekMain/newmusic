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
                    <th>评论类型</th>
                    <th>评论对象id</th>
                    <th>查看详细对话</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="music" items="${list}">
                    <tr>
                        <td>${list.indexOf(music)+1}</td>
                        <td>${music.comType eq 1? "歌曲":"歌单"}</td>
                        <td id="${list.indexOf(music)+1}">
                            <c:if test="${music.comType == 2}" >
                                <c:forEach var="songlist" items="${list3}">
                                    <c:if test="${songlist.userId == music.objId}">
                                        ${songlist.songName}
                                    </c:if>
                                </c:forEach>
                            </c:if>
                            <c:if test="${music.comType == 1}">
                                <c:forEach var="singer" items="${list4}">
                                    <c:if test="${music.objId == singer.singerId}">
                                        ${singer.singerName}
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </td>
                        <td>
                            <button onclick="demo(${music.objId},${music.comType},${list.indexOf(music)+1})" 	class="layui-btn layui-btn-normal">查看详细</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script>
    var a;
    var d;
    function demo(e,b,f){
        layui.use('layer', function() {
            layer.open({
                type: 2,
                title: document.getElementById(f).innerHTML,
                skin: 'layui-layer-lan', //样式类名，即子页面边框样式
                closeBtn: 1, //要显示关闭按钮
                anim: 2,
                shadeClose: false, //开启遮罩
                moveOut: false,
                area: ['500px', '300px'],
                content: '/comment/com/'+e+'/'+b
            });
        })
    }
</script>
</html>
