<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <meta name="applicable-device" content="pc,mobile">
    <title>jQuery点击弹出用户登录窗口界面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<body><script src="/demos/googlegg.js"></script>

<a class="a globalLoginBtn">登录</a>

<div class="modal fade" id="loginModal" style="display:none;">

    <div class="modal-dialog modal-sm" style="width:540px;">
        <div class="modal-content" style="border:none;">
            <div class="col-left"></div>
            <div class="col-right">
                <div class="modal-header">
                    <button type="button" id="login_close" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="loginModalLabel" style="font-size: 18px;">登录</h4>
                </div>
                <div class="modal-body">
                    <section class="box-login v5-input-txt" id="box-login">
                        <form id="login_form" action="" method="post" autocomplete="off">

                            <ul>
                                <li class="form-group"><input class="form-control" id="id_account_l" maxlength="50" name="account_l" placeholder="请输入邮箱账号/手机号" type="text"></li>
                                <li class="form-group"><input class="form-control" id="id_password_l" name="password_l" placeholder="请输入密码" type="password"></li>
                            </ul>
                        </form>
                        <p class="good-tips marginB10"><a id="btnForgetpsw" class="fr">忘记密码？</a>还没有账号？<a href="javascript:;" target="_blank" id="btnRegister">立即注册</a></p>
                        <div class="login-box marginB10">
                            <button id="login_btn" type="button" class="btn btn-micv5 btn-block globalLogin">登录</button>
                            <div id="login-form-tips" class="tips-error bg-danger" style="display: none;">错误提示</div>
                        </div>


                        <div class="threeLogin"><span>其他方式登录</span><a class="nqq" href="javascript:;"></a><a class="nwx" href="javascript:;"></a><!--<a class="nwb"></a>--></div>

                    </section>
                </div>
            </div>
        </div>
    </div>

</div>

<script type="text/javascript" src="js/jquery2.2.2.min.js"></script>
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="js/script.js"></script>


</body>
</html>