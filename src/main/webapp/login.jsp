<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="page-fill">
<head>
    <meta charset="UTF-8">
    <title>title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/oksub.css"/>
</head>
<body class="page-fill">
    <div class="page-fill" id="login">
        <form action="" class="layui-form" style="opacity: 0.9;filter: blur(0.3px);">
            <div class="login_face"><img src="images/logo.jpg"></div>
            <div class="input-item">
                <input type="text" name="userCount" placeholder="请输入账号" autocomplete="off" required maxlength="11" class="layui-input">
            </div>
            <div class="input-item">
                <input type="password" name="userPassword" placeholder="请输入密码" autocomplete="off" required class="layui-input">
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-block" lay-filter="login" lay-submit="">登录</button>
            </div>
            <div class="login-link">
                <a href="forget.html">忘记密码?</a>
            </div>
        </form>
    </div>
    <!--js逻辑-->
    <script src="lib/layui/layui.js"></script>
</body>
</html>
