<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/14
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ZH-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>西京医院后台管理系统登录</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css">
    <link rel="stylesheet" href="http://localhost:8088/css/login.css">
</head>

<body>
<div class="kit-login">
    <div class="kit-login-bg"></div>
    <div class="kit-login-wapper">
        <h2 class="kit-login-slogan">欢迎登录 <br> 西京医院后台管理系统</h2>
        <div class="kit-login-form">
            <h4 class="kit-login-title">登录</h4>
            <form class="layui-form">
                <div class="kit-login-row">
                    <div class="kit-login-col">
                        <i class="layui-icon">&#xe612;</i>
                        <span class="kit-login-input">
                <input type="text" id="did" name="loginName" lay-verify="required" placeholder="账号" />
              </span>
                    </div>
                    <div class="kit-login-col"></div>
                </div>
                <div class="kit-login-row">
                    <div class="kit-login-col">
                        <i class="layui-icon">&#xe64c;</i>
                        <span class="kit-login-input">
                <input type="password" id="pass" name="password" lay-verify="required" placeholder="密码" />
              </span>
                    </div>
                    <div class="kit-login-col"></div>
                </div>
                <div class="kit-login-row">
                    <div class="kit-login-col">
                        <input type="checkbox" name="rememberMe" title="记住帐号" lay-skin="primary">
                    </div>
                </div>
                <div class="kit-login-row">
                    <button class="layui-btn kit-login-btn" type="button" id="login" lay-submit="submit" lay-filter="login_hash">登录</button>
                </div>
                <div class="kit-login-row" style="margin-bottom:0;">
                    <a href="javascript:;" style="color: rgb(153, 153, 153); text-decoration: none; font-size: 13px;" id="forgot">忘记密码</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="http://localhost:8088/polyfill.min.js"></script>
<script src="http://localhost:8088/layui.js"></script>
<script>
    layui.use(['layer', 'form'], function() {
        var form = layui.form,
            $ = layui.jquery;

        $('#forgot').on('click', function() {
            layer.msg('请联系管理员.');
        });
        //监听提交
        $('#login').on('click', function() {
            var sdid = $("#did").val();
            var spass = $("#pass").val();

            $.post("/loginHtIndex",{did:sdid,pass:spass},function (data) {
                console.log(data);
                if (data){
                    location.href="/loginHtIndexTj";
                } else {
                    layer.msg('用户名或密码错误');
                }

            });
        });
    });

</script>
</body>

</html>
