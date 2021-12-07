<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="page-fill">
<head>
    <meta charset="UTF-8">
    <title>New Music登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/css/oksub.css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="page-fill">
    <div class="msg alert alert-danger" style="opacity: 0"></div>
    <div class="page-fill" id="login">
        <form action="/userLogin/index" method="post" class="layui-form" style="opacity: 0.9;filter: blur(0.3px);">
            <div class="login_face"><img src="/static/images/logo.jpg"></div>
            <div id="userCount-div" class="layui-form-item input-item">
                <label for="userCount">账号</label>
                <input type="text" name="userCount" placeholder="请输入账号" required autocomplete="off" id="userCount" class="layui-input layui-input-focus">
            </div>
            <div id="userPassword-div" class="layui-form-item input-item">
                <label for="userPassword">密码</label>
                <input type="password" name="userPassword" placeholder="请输入密码" required autocomplete="off" id="userPassword" class="layui-input layui-input-focus">
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-block msg-information" data-type="information">登录</button>
            </div>
            <div class="login-link">
                <a href="/register.html">注册</a>
            </div>
        </form>
    </div>
</body>

<script src="/lib/layui/layui.js"></script>
<script src="/static/js/loginerorr.js"></script>
<script src="/static/js/loginform.js"></script>

<script>
    layui.use('layer', function() {
        var err = ${msg}
    });
</script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
