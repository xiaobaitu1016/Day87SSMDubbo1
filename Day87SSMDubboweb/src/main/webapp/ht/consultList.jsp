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
    <title>咨询信息列表</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div id="content" style="margin-top: 50px">

    <div>
        <form class="layui-form layui-form-pane" style="margin-left: 190px">
            <div class="layui-form-item">
                <div class="layui-inline" >
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>医师</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="did" lay-filter="dbig" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="d" items="${allDoctor}">
                                <option value="${d.did}">${d.dname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>患者</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="suid" lay-filter="dsmall" lay-verify="required" type="text">
                            <option></option>
                            <c:forEach var="s" items="${allSuffer}">
                                <option value="${s.suid}">${s.suname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="layui-btn-group" style="margin-bottom: 8px">
                        <button class="layui-btn layui-btn-normal" type="button" id="selectEmp" data-type="reload"><i class="layui-icon layui-icon-search"></i></button>
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
            ,height: 480
            ,url:'/htAllConsultList'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'cid', title: '编号',width:120, templet:"<div>CS{{d.cid+10000}}</div>",sort: true,align: 'center'}
                ,{field:'did', title: '医生',width:120, templet:"<div>{{d.doctor.dname}}</div>", sort: true,align: 'center' }
                ,{field:'suid', title: '患者',width:120, templet:"<div>{{d.suffer.suname}}</div>", sort: true,align: 'center' }
                ,{field:'time', title: '咨询时间',width:200, templet:"<div>{{layui.util.toDateString(d.time, 'yyyy年MM月dd日 HH:mm')}}</div>", sort: true,align: 'center' }
                ,{field:'descr', title: '咨询详情', sort: true,align: 'center' }
                ,{title: '操作', templet:"", width:120, align: 'center', toolbar: '#barDemo'}

            ]]
        });

        layui.use(['jquery', 'layer'], function () {
            var $ = layui.$ //重点处
                , layer = layui.layer;

            $(document).ready(function(){

                $('#selectEmp').on('click', function () {
                    // 搜索条件
                    var send_did = $('#did').select().val();
                    var send_suid   = $('#suid').select().val();

                    table.reload('tableLine',{
                        method: 'post'
                        , where: {
                            'did': send_did,
                            'suid': send_suid
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



            });

        });

        table.on('tool(tableLine)', function(obj){
            var data = obj.data;
            console.log(data);
            if(obj.event === 'desrc'){
                location.href = "/toHtConsultListDescr/"+data.cid;
            }

        });

    });

</script>
</body>
</html>
