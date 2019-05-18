<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/15
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>医生评价信息详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div style="margin-left: 200px;margin-right: 200px">
    <table class="layui-table" style="text-align: center;margin-top: 50px">
        <thead>
        <tr>
            <th><center>医生：${doctorCommit.doctor.dname}</center></th>
            <th><center>疾病：${doctorCommit.illness.ilname}</center></th>
            <th><center>医生态度：${doctorCommit.doctorManner}</center></th>
            <th><center>诊疗效果：${doctorCommit.degree}</center></th>
        </tr>
        </thead>
        <tbody>
        <tr>
           <td colspan="4" height="160px" style="text-align: left">${doctorCommit.descr}</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td><i class="layui-icon">&#xe6c6;</i>有用(${doctorCommit.number})</td>
            <td><fmt:formatDate value="${doctorCommit.time}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
        </tr>
        </tbody>
    </table>
    <center>
        <button id="backBut" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
    </center>

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
