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
            <td colspan="2">
                ${departmentsBig.dbname}&nbsp;——&nbsp;${departmentsSmall.dsname}
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>医师：</td>
        </tr>
        <tr>
            <td>疾病：</td>
            <td>
                <c:forEach items="${departmentsSmall.illnessList}" var="i">
                    <a class="layui-btn layui-btn-primary layui-btn-sm">${i.ilname}</a>
                </c:forEach>
            </td>
        </tr>
        <tr>
            <td>备注：</td>
            <td>${departmentsSmall.remarks}</td>
        </tr>
        </tbody>
    </table>
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
            <td><span>上午1</span></td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 1 && s.whichclass == 1}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 2 && s.whichclass == 1}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 3 && s.whichclass == 1}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 4 && s.whichclass == 1}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 5 && s.whichclass == 1}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td><span>上午2</span></td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 1 && s.whichclass == 2}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 2 && s.whichclass == 2}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 3 && s.whichclass == 2}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 4 && s.whichclass == 2}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 5 && s.whichclass == 2}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td><span>下午1</span></td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 1 && s.whichclass == 3}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 2 && s.whichclass == 3}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 3 && s.whichclass == 3}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 4 && s.whichclass == 3}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 5 && s.whichclass == 3}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td><span>下午2</span></td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 1 && s.whichclass == 4}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 2 && s.whichclass == 4}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 3 && s.whichclass == 4}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 4 && s.whichclass == 4}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
            <td>&nbsp;
                <c:forEach var="s" items="${allDoctorSchedule}">
                    <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                        <c:if test="${s.weekday == 5 && s.whichclass == 4}">
                            出诊
                        </c:if>
                    </c:if>
                </c:forEach>
            </td>
        </tr>
        </tbody>

    </table>


    <center><button id="backBut" type="button" class="layui-btn layui-btn-normal layui-btn-sm">返回</button></center>
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

        });
    });
</script>
</body>
</html>
