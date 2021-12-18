<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="page-fill">
<head>
    <meta charset="UTF-8">
    <title>New Music登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/css/oksub.css"/>
</head>
<body class="page-fill" style="overflow: hidden">
    <div class="msg alert alert-danger" style="opacity: 0"></div>
    <div class="page-fill" id="login">
        <form action="/userLogin/index" method="post" class="diy-input layui-form">
            <div class="login_face"><img src="/static/images/logo.jpg"></div>
            <div class="layui-form-item input-item">
                <label for="userCount" style="border-radius: 5px;">账号</label>
                <input type="text" name="userCount" placeholder="请输入账号" required autocomplete="off" id="userCount" class="layui-input layui-input-focus" style="background: transparent">
            </div>
            <div class="layui-form-item input-item">
                <label for="userPassword" style="border-radius: 5px;">密码</label>
                <input type="password" name="userPassword" placeholder="请输入密码" required autocomplete="off" id="userPassword" class="layui-input layui-input-focus" style="background: transparent">
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-block msg-information" data-type="information">登录</button>
            </div>
            <div class="login-link">
                <a href="/userForget/forget">忘记密码？</a>
            </div>
        </form>

        <canvas class="firefly-canvas" id="firefly"></canvas>
    </div>
</body>

<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/lib/layui/layui.js"></script>
<script src="/static/js/loginerorr.js"></script>
<script src="/static/js/loginform.js"></script>
<script src="/static/js/firefly.js"></script>
<script>
    layui.use('layer', function() {
        ${msg}
    })
</script>
</html>
