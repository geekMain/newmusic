<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/12/1
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>消息模块</title>
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
                <th>对象</th>
                <th>查看详细对话</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="music" items="${list1}">
                    <tr>
                        <td>${list1.indexOf(music)}</td>
                        <td>
                           ${music.infObjId1} 于 ${music.infObjId2}
                        </td>
                        <td>
                            <button onclick="demo(${music.infLibrary})" class="layui-btn layui-btn-normal">查看详细</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
<script>
    function demo(e){
        layui.use('layer', function() {
            layer.open({
                type: 2,
                title: "聊天框",
                skin: 'layui-layer-lan', //样式类名，即子页面边框样式
                closeBtn: 1, //要显示关闭按钮
                anim: 2,
                shadeClose: false, //开启遮罩
                moveOut: false,
                area: ['800px'],
                content: '/Information/com/'+e
            });
        })
    }
</script>
</html>
