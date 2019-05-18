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
            ,height: 480
            ,url:'/htAllDoctorCommitMyList'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'dcid', title: '编号',sort: true,align: 'center', width:80}
                ,{field:'dname', title: '医生姓名', width:120,templet:"<div>{{d.doctor.dname}}</div>",sort: true,align: 'center' }
                ,{field:'dsid', title: '科室', width:120,templet:"<div>{{d.doctor.departmentsSmall.dsname}}</div>",sort: true,align: 'center' }
                ,{field:'doctorManner', title: '医生态度', width:120,align: 'center', sort: true}
                ,{field:'degree', title: '诊疗效果', width:120,sort: true,align: 'center' }
                ,{field:'ilid', title: '疾病', width:120,templet:"<div>{{d.illness.ilname}}</div>",align: 'center', sort: true}
                ,{field:'time', title: '评价时间', width:220,templet:"<div>{{layui.util.toDateString(d.time, 'yyyy年MM月dd日 HH:mm')}}</div>",align: 'center', sort: true}
                ,{field:'descr', title: '详情',align: 'center', sort: true}
                ,{title: '操作', templet:"", width:120, align: 'center', toolbar: '#barDemo'}

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
                    location.href="/toDoctorListAdd";
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
                location.href = "/toHtDoctorCommitListDescr/"+data.dcid;
            }else if (obj.event === 'update') {
                location.href = "/toHtDoctorListUpdate/"+data.dcid;
            }
        });

    });

</script>
</body>
</html>
