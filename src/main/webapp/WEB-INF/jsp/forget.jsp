<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="page-fill">
<head>
    <meta charset="UTF-8">
    <title>New Music找回密码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/static/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/static/css/oksub.css"/>
    <style>
        .forget .tit {
            padding-top: 15px;
            text-align: center;
            font-size: 18px;
        }

        .forget .code-box {
            display: flex;
        }

        .forget .code-box .btn-auth-code {
            margin-left: 10px;
        }

        .reset-password-form {
            display: none;
        }
    </style>
</head>
<body class="page-fill">
<div class="page-fill forget" id="login">
    <form action="/userForget/forgetPassword" method="post" class="layui-form verify-user-form" style="opacity: 0.9;filter: blur(0.3px);">
        <div class="layui-form-item tit">忘记密码</div>
        <div class="layui-form-item input-item">
            <label for="userCount">账号</label>
            <input type="text" class="layui-input" id="userCount" name="userCount" placeholder="请输入账号" required autocomplete="off" >
        </div>
        <div class="layui-form-item input-item">
            <label for="userEmail">输入邮箱</label>
            <input type="email" class="layui-input" id="userEmail" name="userEmail" placeholder="请输入邮箱" required autocomplete="off">
        </div>
        <div class="layui-form-item input-item code-box">
            <label for="captcha">验证码</label>
            <input type="text" class="layui-input" id="captcha" name="captcha" placeholder="请输入验证码" required autocomplete="off" maxlength="4">
            <button type="button" class="layui-btn btn-auth-code">获取验证码</button>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn layui-block">提 交</button>
        </div>
        <div class="login-link">
            <a href="/userLogin/login">再去登录试试</a>
        </div>
    </form>

    <form action="" method="post" class="layui-form reset-password-form" style="opacity: 0.9;filter: blur(0.3px);">
        <div class="layui-form-item tit">设置密码</div>
        <div class="layui-form-item input-item">
            <label for="password">新密码</label>
            <input type="password" class="layui-input" id="password" name="password" placeholder="请输入密码" autocomplete="off">
        </div>
        <div class="layui-form-item input-item">
            <label for="comPassword">确认密码</label>
            <input type="password" class="layui-input" id="comPassword" name="password" placeholder="请确认密码" autocomplete="off">
        </div>
        <div class="layui-form-item">
            <button class="layui-btn layui-block" lay-filter="resetPassword" lay-submit="">确定设置</button>
        </div>
    </form>
</div>
<!--js逻辑-->
<script src="/lib/layui/layui.js"></script>
<script src="/static/js/loginform.js"></script>
</body>
</html>
