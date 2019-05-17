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
    <title>新增挂号信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div>
    <form action="" method="post" class="layui-form">
        <table class="layui-table" style="text-align: center;margin-top: 50px">
            <thead>
            <tr>
                <th colspan="4"><center><h3><b>新增挂号信息</b></h3></center></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><b>患者编号：</b></td>
                <td width="450px">
                    <select id="suid" lay-filter="suid" lay-verify="required">
                        <option></option>
                        <c:forEach items="${allSuffer}" var="s">
                            <option value="${s.suid}">SU${s.suid+10000}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><b>患者姓名：</b></td>
                <td width="450px">
                    <select id="suid2" lay-filter="suid2" lay-verify="required">
                        <option></option>
                        <c:forEach items="${allSuffer}" var="s">
                            <option value="${s.suname}">${s.suname}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>患者性别：</b></td>
                <td>
                    <input id="sex" value="" lay-verify="required" readonly="readonly" type="text" autocomplete="on" class="layui-input">
                </td>
                <td><b>患者年龄：</b></td>
                <td>
                    <input id="age" lay-verify="required" readonly="readonly" type="text" autocomplete="on" class="layui-input">
                </td>
            </tr>
            <tr>
                <td><b>联系电话：</b></td>
                <td>
                    <input id="phone" lay-verify="required" readonly="readonly" type="text" autocomplete="on" class="layui-input">
                </td>
                <td><b>就医卡余额：</b></td>
                <td>
                    <input id="price" lay-verify="required" readonly="readonly" type="text" autocomplete="on" class="layui-input">
                </td>
            </tr>
            <tr>
                <td><b>挂号科室：</b></td>
                <td>
                    <select id="dsmall" lay-filter="dsmall" type="text">
                        <option></option>
                        <c:forEach var="d" items="${allDbig}">
                            <c:if test="${d.dbid != 4}">
                                <optgroup label="${d.dbname}">
                                    <c:forEach items="${d.departmentsSmallList}" var="s">
                                        <option value="${s.dsid}">${s.dsname}</option>
                                    </c:forEach>
                                </optgroup>
                            </c:if>
                        </c:forEach>
                    </select>
                </td>
                <td><b>挂号医师：</b></td>
                <td>
                    <select id="doctor" lay-filter="doctor" lay-verify="required" type="text">
                        <option></option>
                        <c:forEach var="d" items="${allDoctor}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>挂号时间：</b></td>
                <td>
                    <input type="text" name="start" id="time" autocomplete="off" class="layui-input">
                </td>
                <td><b>排号数：</b></td>
                <td>
                    <input id="count" lay-verify="required" readonly="readonly" type="text" autocomplete="on" class="layui-input">
                </td>
            </tr>
            <tr>
                <td><b>所患疾病：</b></td>
                <td>
                    <select id="illnessid" lay-filter="illnessid" lay-verify="required" type="text">
                        <option></option>
                        <c:forEach var="i" items="${allIllness}">
                            <option value="${i.ilid}">${i.ilname}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><b>就诊状态：</b></td>
                <td>
                    <select id="state" lay-filter="doctor" type="text">
                        <option value="待诊">待诊</option>
                        <option value="已就诊">已就诊</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>挂号描述：</b></td>
                <td colspan="3">
                    <input id="descr" type="text" autocomplete="on" class="layui-input">
                </td>
            </tr>
            <tr>
                <td><b>备注：</b></td>
                <td colspan="3">
                    <input id="remarkes" type="text" autocomplete="on" class="layui-input">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                        <button lay-submit="" class="layui-btn layui-btn-danger layui-btn-sm" type="button" id="submitBut">确定</button>
                        <button class="layui-btn layui-btn-danger layui-btn-sm" type="button" id="reset">重置</button>
                        <button id="backBut" type="button" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
                    </center>
                </td>
            </tr>
            </tbody>
        </table>
    </form>


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
            $("#reset").on("click",function () {
                window.location.reload();
            });

            $("#submitBut").on("click",function () {
                var suid = $("#suid").select().val();
                var did = $("#doctor").select().val();
                var ilid = $("#illnessid").select().val();
                var time = $("#time").val();
                var state = $("#state").val();
                var count = $("#count").val();
                var descrs = $("#descr").val();
                var remarks = $("#remarkes").val();

                if (suid.length == 1 && did.length == 1 && count.length == 1){
                    $.post("/sufferWaitAddSubmit",{suid:suid,did:did,ilid:ilid
                    ,time:time,state:state,count:count,descrs:descrs,remarks:remarks},function (data) {
                        if (data){
                            location.href="/toHtSufferWaitList";
                        }
                    });
                }
            });

            $("#time").val(nowTime());


            function nowTime() {
                var mydate = new Date();

                var str = "" + mydate.getFullYear();
                var mm = mydate.getMonth()+1;
                if(mydate.getMonth()>9){
                    str += "-"+mm;
                }
                else{
                    str += "-0" + mm;
                }
                if(mydate.getDate()>9){
                    str += "-"+mydate.getDate();
                }
                else{
                    str += "-0" + mydate.getDate();
                }

                if(mydate.getHours()>9){
                    str += " "+mydate.getHours();
                }
                else{
                    str += " 0" + mydate.getHours();
                }

                if(mydate.getMinutes()>9){
                    str += ":"+mydate.getMinutes();
                }
                else{
                    str += ":0" + mydate.getMinutes();
                }

                if(mydate.getSeconds()>9){
                    str += ":"+mydate.getSeconds();
                }
                else{
                    str += ":0" + mydate.getSeconds();
                }

                return str;

            }

        });

        layui.use(['form', 'layedit', 'laydate','table'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

            var table = layui.table;

            var start = laydate.render({ //投票开始
                elem: '#time',
                type: 'datetime'
                /*done:function(value,date){
                    endMax = end.config.max;
                    end.config.min = date;
                    end.config.min.month = date.month -1;
                }*/
                ,done: function(date){
                    var dddid = $("#doctor").select().val();

                    $.post("/htGetCountByAdd",{did:dddid,time:date},function (data) {
                        $("#count").val(data);
                    });
                }
            });

            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });

            form.on('select(suid)',function (data) {
                var a = data.value;

                $.post("/htGetSufferBySuid",{suid:a},function (data) {
                    var aa = eval(data);
                    var length = aa.length;
                    console.log(length);
                    console.log(aa);
                    $("#suid2").empty();
                    $("#suid2").append("<option></option>");
                    for(var key in aa){
                        console.log(aa[key].suname);
                        var opt = $("<option selected value="+aa[key].suid+">"+aa[key].suname+"</option>");
                        $("#suid2").append(opt);

                        if (length == 1){
                            $("#sex").val(aa[key].sex);
                            $("#age").val(aa[key].age);
                            $("#phone").val(aa[key].phone);
                            $("#price").val(aa[key].price);
                        }

                    }

                    form.render();
                    form.render('select' ,'suid2');
                });

            });

            form.on('select(suid2)',function (data) {
                var a = data.value;

                $.post("/htGetSufferBySuname",{suname:a},function (data) {
                    var aa = eval(data);
                    var length = aa.length;
                    console.log(aa);
                    $("#suid").empty();
                    $("#suid").append("<option></option>");
                    for(var key in aa){
                        var ss = aa[key].suid+10000;
                        console.log(aa[key].suname);
                        var opt = $("<option selected value="+aa[key].suid+">SU"+ss+"</option>");
                        $("#suid").append(opt);

                        if (length == 1){
                            $("#sex").val(aa[key].sex);
                            $("#age").val(aa[key].age);
                            $("#phone").val(aa[key].phone);
                            $("#price").val(aa[key].price);
                        }

                    }

                    form.render();
                    form.render('select' ,'suid');
                });

            });

            form.on('select(dsmall)',function (data) {
                var a = data.value;
                console.log(a);

                $.post("/htGetDoctorList",{departSmall:a},function (data) {
                    var aa = eval(data);
                    console.log(aa);
                    $("#doctor").empty();
                    $("#doctor").append("<option></option>");
                    for(var key in aa){
                        var opt = $("<option value="+aa[key].did+">"+aa[key].dname+"</option>");
                        $("#doctor").append(opt);
                    }

                    form.render();
                    form.render('select' ,'doctor');
                });

                $.post("/htGetDsmall",{dsid:a},function (data) {
                    var bb = eval(data);
                    console.log(bb);
                    $("#illnessid").empty();
                    for(var key in bb){
                        var opt = $("<option value="+bb[key].ilid+">"+bb[key].ilname+"</option>");
                        $("#illnessid").append(opt);
                    }
                    form.render();
                    form.render('select' ,'illnessid');
                });

                /*var time = $("#time").val();
                var dddid = $("#doctor").select().val();
                $.post("/htGetCountByAdd",{did:dddid,time:time},function (data) {
                    $("#count").val(data);
                });*/

            });

            form.on('select(doctor)',function (data) {
                var a = data.value;
                console.log(a);
                var time = $("#time").val();
                console.log(time);

                $.post("/htGetCountByAdd",{did:a,time:time},function (data) {
                    $("#count").val(data);
                });

                $.post("/htGetDsmallByDoctor",{did:a},function (data) {
                    var bb = eval(data);
                    console.log(bb);
                    $("#illnessid").empty();
                    for(var key in bb){
                        var opt = $("<option value="+bb[key].ilid+">"+bb[key].ilname+"</option>");
                        $("#illnessid").append(opt);
                    }
                    form.render();
                    form.render('select' ,'illnessid');
                });

            });

            form.on('select(illnessid)',function (data) {
                var a = data.value;
                console.log(a);
            });

        });

    });

</script>
</body>
</html>
