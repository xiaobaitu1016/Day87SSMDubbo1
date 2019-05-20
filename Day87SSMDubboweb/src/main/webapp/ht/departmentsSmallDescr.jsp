<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <title>二级科室详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div style="" id="bigdiv">
    <table class="layui-table" style="width:80%;text-align: center;margin-left:10%;margin-right:10%;margin-top:50px">
        <thead>
        <tr>
            <td colspan="3">
                ${departmentsBig.dbname}&nbsp;——&nbsp;${departmentsSmall.dsname}
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td width="200px">医师：</td>
            <td>
                <c:if test="${allDoctor.size() > 0}">
                    <c:forEach items="${allDoctor}" var="i">
                        <a href="/toHtDoctorListDescr/${i.did}" class="layui-btn layui-btn-primary layui-btn-sm">${i.dname}</a>
                    </c:forEach>
                </c:if>
                <c:if test="${allDoctor.size() == 0}">
                    无医师
                </c:if>
            </td>
            <td width="200px">
                <button class="layui-btn layui-btn-danger layui-btn-sm" id="addDoctor"><i class="layui-icon">&#xe654;</i></button>
            </td>
        </tr>
        <tr>
            <td>疾病：</td>
            <td>
                <c:if test="${departmentsSmall.illnessList.size() > 0}">
                    <c:forEach items="${departmentsSmall.illnessList}" var="i">
                        <a class="layui-btn layui-btn-primary layui-btn-sm">${i.ilname}</a>
                    </c:forEach>
                </c:if>
                <c:if test="${departmentsSmall.illnessList.size() == 0}">
                    无疾病
                </c:if>

            </td>
            <td>
                <button class="layui-btn layui-btn-danger layui-btn-sm" id="addIllness"><i class="layui-icon">&#xe654;</i></button>
            </td>
        </tr>
        <tr>
            <td>备注：</td>
            <td colspan="2">${departmentsSmall.remarks}</td>
        </tr>
        </tbody>
    </table>
    <form action="" method="post" class="layui-form layui-form-pane">
    <table class="layui-table" style="width:80%;text-align: center;margin-left:10%;margin-right:10%">
        <thead>
        <tr>
            <th><center>时间</center></th>
            <th><center>周一</center></th>
            <th><center>周二</center></th>
            <th><center>周三</center></th>
            <th><center>周四</center></th>
            <th><center>周五</center></th>
        </tr>
        </thead>
        <tbody>
        <tr >
            <td width="150px"><span>上午1</span></td>
            <td>
                <select id="11">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor11.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor11.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="21">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor21.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor21.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="31">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor31.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor31.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="41">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor41.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor41.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="51">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor51.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor51.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td><span>上午2</span></td>
            <td>
                <select id="12">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor12.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor12.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="22">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor22.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor22.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="32">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor32.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor32.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="42">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                            <c:if test="${d.did == doctor42.did}">
                                <option value="${d.did}" selected>${d.dname}</option>
                            </c:if>
                            <c:if test="${d.did != doctor42.did}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="52">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor52.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor52.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td><span>下午1</span></td>
            <td>
                <select id="13">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor13.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor13.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="23">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor23.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor23.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="33">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor33.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor33.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="43">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor43.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor43.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="53">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor53.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor53.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td><span>下午2</span></td>
            <td>
                <select id="14">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor14.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor14.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="24">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor24.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor24.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="34">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor34.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor34.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="44">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor44.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor44.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td>
                <select id="54">
                    <option value="">无出诊</option>
                    <c:forEach var="d" items="${allDoctor}">
                        <c:if test="${d.did == doctor54.did}">
                            <option value="${d.did}" selected>${d.dname}</option>
                        </c:if>
                        <c:if test="${d.did != doctor54.did}">
                            <option value="${d.did}">${d.dname}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
        </tr>
        </tbody>

    </table>
    </form>
    <input id="dsmall" style="visibility: hidden" value="${departmentsSmall.dsid}" />
    <center>
        <button id="submit" type="button" class="layui-btn layui-btn-danger layui-btn-normal layui-btn-sm">修改</button>
        <button id="backBut" type="button" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
    </center>
</div>

<script src="http://localhost:8088/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });

    layui.use(['jquery', 'layer'], function () {
        var $ = layui.$ //重点处
            , layer = layui.layer;

        $(document).ready(function(){

            $("#backBut").on("click",function () {
                window.history.back(-1);
            });

            $("#addDoctor").on("click",function () {

                var dsid = $("#dsmall").val();

                layer.open({
                    type:2,
                    title: '新增医师',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['80%', '85%'],
                    content: '/toDepartmentsSmallDescrAddDoctor/'+dsid,
                    zIndex: layer.zIndex, //重点1
                    success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            });

            $("#addIllness").on("click",function () {
                var dsid = $("#dsmall").val();

                layer.open({
                    type:2,
                    title: '新增疾病',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['45%', '45%'],
                    content: '/toDepartmentsSmallDescrAddIllness/'+dsid,
                    zIndex: layer.zIndex, //重点1
                    success: function(layero){
                        layer.setTop(layero); //重点2
                    }
                });
            });
            $("#submit").on("click",function () {
                var s11 = $("#11").select().val();
                var s12 = $("#12").select().val();
                var s13 = $("#13").select().val();
                var s14 = $("#14").select().val();
                var s21 = $("#21").select().val();
                var s22 = $("#22").select().val();
                var s23 = $("#23").select().val();
                var s24 = $("#24").select().val();
                var s31 = $("#31").select().val();
                var s32 = $("#32").select().val();
                var s33 = $("#33").select().val();
                var s34 = $("#34").select().val();
                var s41 = $("#41").select().val();
                var s42 = $("#42").select().val();
                var s43 = $("#43").select().val();
                var s44 = $("#44").select().val();
                var s51 = $("#51").select().val();
                var s52 = $("#52").select().val();
                var s53 = $("#53").select().val();
                var s54 = $("#54").select().val();

                var dsmall = $("#dsmall").val();

                layer.confirm("确定修改排班表？",function (index) {

                    $.post("/updateSchedule",{dsid:dsmall,
                        s11:s11,
                        s12:s12,
                        s13:s13,
                        s14:s14,
                        s21:s21,
                        s22:s22,
                        s23:s23,
                        s24:s24,
                        s31:s31,
                        s32:s32,
                        s33:s33,
                        s34:s34,
                        s41:s41,
                        s42:s42,
                        s43:s43,
                        s44:s44,
                        s51:s51,
                        s52:s52,
                        s53:s53,
                        s54:s54
                    },function (data) {
                        if (data){
                            window.location.reload();
                        }
                    });

                    obj.del();
                    layer.close(index);
                });



            });

        });
    });
</script>
</body>
</html>
