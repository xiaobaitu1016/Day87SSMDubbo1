<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/15
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>患者信息详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div>
    <table class="layui-table" style="text-align: center;margin-top: 50px">
        <thead>
            <tr>
                <th colspan="4"><center><h3><b>挂号信息详情</b></h3></center></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><b>患者编号：</b></td>
                <td>SU${numberCur.suid+10000}</td>
                <td><b>患者姓名：</b></td>
                <td>${numberCur.suffer.suname}</td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                        <button id="backBut" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
                    </center>
                </td>
            </tr>
        </tbody>
    </table>

</div>
<script src="http://localhost:8080/layui.js" charset="utf-8"></script>
<script>
    layui.use(['jquery', 'layer'], function () {
        var $ = layui.$ //重点处
            , layer = layui.layer;

        $(document).ready(function () {

            $("#backBut").on("click",function () {
                window.history.back(-1);
            });

        });
    });

</script>
</body>
</html>
