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
    <title>医生信息列表</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div id="content" style="margin-top: 50px">

    <div>
        <form class="layui-form layui-form-pane" style="margin-left: 50px">
            <div class="layui-form-item">
                <div class="layui-inline" >
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>一级科室</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="dbig" lay-filter="dbig" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="d" items="${allDepartmentsBig}">
                                <option value="${d.dbid}">${d.dbname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>二级科室</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="dsmall" lay-filter="dsmall" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="d" items="${allDepartmentsBig}">
                                <c:forEach items="${d.departmentsSmallList}" var="s">
                                    <option value="${s.dsid}">${s.dsname}</option>
                                </c:forEach>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label" style="width: 90px;"><b>医生姓名</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="did" lay-filter="did" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="d" items="${allDoctor}">
                                <option value="${d.did}">${d.dname}</option>
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
    <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="update">修改</button>
    <button class="layui-btn layui-btn-sm" lay-event="desrc">详情</button>
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,method: 'post'
            ,id: 'tableLine'
            ,height: 480
            ,url:'/htAllDoctorList'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'did', title: '医生编号', templet:"<div>DC{{d.did +10000}}</div>",sort: true,align: 'center' }
                ,{field:'dname', title: '医生姓名',sort: true,align: 'center' }
                ,{field:'dsid', title: '科室',templet:"<div>{{d.departmentsSmall.dsname}}</div>",sort: true,align: 'center' }
                ,{field:'drid', title: '职称',align: 'center',templet:"<div>{{d.doctorRole.drname}}</div>", sort: true}
                ,{field:'did', title: '职位',templet:"<div>{{d.docRoleKeyList[0].roles.rname}}</div>",sort: true,align: 'center' }
                ,{field:'phone', title: '联系电话',align: 'center', sort: true}
                ,{field:'praise', title: '好评数',align: 'center', sort: true,width:230}
                ,{title: '操作', templet:"", align: 'center', toolbar: '#barDemo'}

            ]]
        });

        layui.use(['jquery', 'layer'], function () {
            var $ = layui.$ //重点处
                , layer = layui.layer;

            $(document).ready(function(){

                $('#selectEmp').on('click', function () {
                    // 搜索条件
                    var send_dbig = $('#dbig').select().val();
                    var send_dsmall   = $('#dsmall').select().val();
                    var send_did   = $('#did').select().val();

                    table.reload('tableLine',{
                        method: 'post'
                        , where: {
                            'dbid': send_dbig,
                            'dsid': send_dsmall,
                            'did': send_did
                        }
                        , page: {
                            curr: 1
                        }
                    });
                });

                $("#addSuffer").on("click",function () {
                    location.href="/toHtSufferWaitAdd";
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

                form.on('select(dbig)',function (data) {
                    var a = data.value;
                    console.log(a);
                    


                    $.post("/htGetDsmallByDbid",{dbid:a},function (data) {
                        var aa = eval(data);

                        $("#dsmall").empty();
                        $("#dsmall").append("<option></option>");
                        for(var key in aa){
                            var opt = $("<option value="+aa[key].dsid+">"+aa[key].dsname+"</option>");
                            $("#dsmall").append(opt);
                        }

                        form.render();
                        form.render('select' ,'dsmall');
                    });

                    $.post("/htGetDoctorByDbid",{dbid:a},function (data) {
                        var aa = eval(data);

                        $("#did").empty();
                        $("#did").append("<option></option>");
                        for(var key in aa){
                            var opt = $("<option value="+aa[key].did+">"+aa[key].dname+"</option>");
                            $("#did").append(opt);
                        }

                        form.render();
                        form.render('select' ,'did');
                    });

                });

                form.on('select(dsmall)',function (data) {
                    var a = data.value;

                    $.post("/htGetDbigByDsid",{dsid:a},function (data) {
                        var aa = eval(data);
                        var length = aa.length;

                        if (length == 1){
                            $("#dbig").empty();
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dbid+">"+aa[key].dbname+"</option>");
                                $("#dbig").append(opt);
                            }
                        } else {
                            $("#dbig").empty();
                            $("#dbig").append("<option></option>");
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dbid+">"+aa[key].dbname+"</option>");
                                $("#dbig").append(opt);
                            }
                        }

                        form.render();
                        form.render('select' ,'dbig');
                    });


                    $.post("/htGetDoctorByDsid",{dsid:a},function (data) {
                        var aa = eval(data);

                        $("#did").empty();
                        $("#did").append("<option></option>");
                        for(var key in aa){
                            var opt = $("<option value="+aa[key].did+">"+aa[key].dname+"</option>");
                            $("#did").append(opt);
                        }

                        form.render();
                        form.render('select' ,'did');
                    });

                });

                form.on('select(did)',function (data) {
                    var a = data.value;

                    $.post("/htGetDbigByDid",{did:a},function (data) {
                        var aa = eval(data);
                        var length = aa.length;

                        if (length == 1){
                            $("#dbig").empty();
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dbid+">"+aa[key].dbname+"</option>");
                                $("#dbig").append(opt);
                            }
                        } else {
                            $("#dbig").empty();
                            $("#dbig").append("<option></option>");
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dbid+">"+aa[key].dbname+"</option>");
                                $("#dbig").append(opt);
                            }
                        }

                        form.render();
                        form.render('select' ,'dbig');
                    });

                    $.post("/htGetDsmallByDid",{did:a},function (data) {
                        var aa = eval(data);
                        var length = aa.length;

                        if (length == 1){
                            $("#dsmall").empty();
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dsid+">"+aa[key].dsname+"</option>");
                                $("#dsmall").append(opt);
                            }
                        } else {
                            $("#dsmall").empty();
                            $("#dsmall").append("<option></option>");
                            for(var key in aa){
                                var opt = $("<option value="+aa[key].dsid+">"+aa[key].dsname+"</option>");
                                $("#dsmall").append(opt);
                            }
                        }

                        form.render();
                        form.render('select' ,'dsmall');
                    });
                });

            });

        });

        table.on('tool(tableLine)', function(obj){
            var data = obj.data;
            console.log(data);
            if(obj.event === 'desrc'){
                var name = encodeURIComponent(data.nuid);
                location.href = "/htSufferWaitDescr/"+data.did;
            }else if (obj.event === 'update') {
                location.href = "/toHtDoctorListUpdate/"+data.did;
            }
        });

    });

</script>
</body>
</html>
