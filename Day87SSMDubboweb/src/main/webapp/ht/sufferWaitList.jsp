<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/14
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
    <title>待诊患者信息</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div id="content" style="margin-top: 50px">

    <div>
        <form class="layui-form layui-form-pane" style="margin-left: 50px">
            <div class="layui-form-item">
                <div class="layui-inline" >
                    <label class="layui-form-label" style="width: 90px;"><b>患者名称</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="tel" id="suname" autocomplete="on" class="layui-input">
                    </div>
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>就诊科室</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="demo1" lay-filter="demo1" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="d" items="${allDepartmentsBig}">
                                <c:if test="${d.dbid != 4}">
                                    <optgroup label="${d.dbname}">
                                        <c:forEach items="${d.departmentsSmallList}" var="s">
                                            <option value="${s.dsid}">${s.dsname}</option>
                                        </c:forEach>
                                    </optgroup>
                                </c:if>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>就诊医师</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="demo2" lay-filter="demo2" lay-verify="required" type="text">
                            <c:forEach var="d" items="${allDoctor}">
                                <option></option>
                                <c:if test="${d.dsid != 7}">
                                    <option value="${d.did}">${d.dname}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="layui-btn-group" style="margin-bottom: 8px">
                        <button class="layui-btn layui-btn-normal" type="button" id="selectEmp" data-type="reload"><i class="layui-icon layui-icon-search"></i></button>
                        <button class="layui-btn layui-btn-normal" type="button" id="addSuffer" data-type="reload"><i class="layui-icon">&#xe654;</i></button>
                        <button class="layui-btn layui-btn-normal" type="reset" id="getBack"><i class="layui-icon">&#xe669;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <table class="layui-hide" id="test" lay-filter="tableLine"></table>

    </div>
</div>
<script src="http://localhost:8088/layui.js" charset="utf-8"></script>
<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="desrc"><i class="layui-icon layui-icon-form"></i></button>
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,method: 'post'
            ,id: 'tableLine'
            ,url:'/htAllSufferWait'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增11
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'suid', title: '患者编号', templet:"<div>SU{{d.suid +10000}}</div>",sort: true,align: 'center' }
                ,{field:'suid', title: '姓名',templet:"<div>{{d.suffer.suname}}</div>",sort: true,align: 'center' }
                ,{field:'count', title: '排号数',align: 'center', sort: true}
                ,{field:'did', title: '挂号科室',templet:"<div>{{d.doctor.departmentsSmall.dsname}}</div>",sort: true,align: 'center' }
                ,{field:'did', title: '挂号医师',templet:"<div>{{d.doctor.dname}}</div>",align: 'center', sort: true}
                ,{field:'time', title: '挂号时间',templet:"<div>{{layui.util.toDateString(d.time, 'yyyy年MM月dd日 HH:mm')}}</div>",align: 'center', sort: true}
                ,{field:'state', title: '就诊状态',align: 'center', sort: true}
                ,{title: '操作', templet:"", align: 'center', toolbar: '#barDemo'}

            ]]
        });

        layui.use(['jquery', 'layer'], function () {
            var $ = layui.$ //重点处
                , layer = layui.layer;

            $(document).ready(function(){

                $('#selectEmp').on('click', function () {
                    // 搜索条件
                    var send_suname = $('#suname').val();
                    var send_dsmall   = $('#demo1').select().val();
                    var send_doctor   = $('#demo2').select().val();

                    table.reload('tableLine',{
                        method: 'post'
                        , where: {
                            'suname': send_suname,
                            'dsid': send_dsmall,
                            'did': send_doctor
                        }
                        , page: {
                            curr: 1
                        }
                    });
                });

                $("#getBack").on("click",function () {
                    window.location.reload();
                });
            });

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

                form.on('select(demo1)',function (data) {
                    var a = data.value;
                    console.log(a);

                    $.post("/htGetDoctorList",{departSmall:a},function (data) {
                        var aa = eval(data);
                        console.log(aa);
                        $("#demo2").empty();
                        $("#demo2").append("<option></option>");
                        for(var key in aa){
                            var opt = $("<option value="+aa[key].did+">"+aa[key].dname+"</option>");
                            $("#demo2").append(opt);
                        }

                        form.render();
                        form.render('select' ,'demo2');
                    });

                });

                form.on('select(demo2)',function (data) {
                    var a = data.value;
                    console.log(a);
                });

            });

        });

        table.on('tool(tableLine)', function(obj){
            var data = obj.data;
            console.log(data);
            if(obj.event === 'desrc'){
                var name = encodeURIComponent(data.nuid);
                location.href = "/htSufferWaitDescr/"+data.nuid;
            }
        });

    });

</script>
</body>
</html>
