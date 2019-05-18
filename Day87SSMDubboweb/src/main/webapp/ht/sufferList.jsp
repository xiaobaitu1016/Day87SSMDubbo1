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
    <title>患者信息列表</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div id="content" style="margin-top: 50px">

    <div>
        <form class="layui-form layui-form-pane" style="margin-left: 250px">
            <div class="layui-form-item">
                <div class="layui-inline" >
                    <label class="layui-form-label" style="width: 90px;"><b>患者编号</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="tel" id="suid" autocomplete="on" class="layui-input">
                    </div>
                    <label class="layui-form-label" style="width: 90px;margin-left: 60px"><b>患者名称</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <input type="tel" id="suname" autocomplete="on" class="layui-input">
                    </div>
                    <div class="layui-btn-group" style="margin-bottom: 8px">
                        <button class="layui-btn layui-btn-normal" type="button" id="selectEmp" data-type="reload"><i class="layui-icon layui-icon-search"></i></button>
                        <%--<button class="layui-btn layui-btn-normal" type="button" id="addSuffer" data-type="reload"><i class="layui-icon">&#xe654;</i></button>--%>
                        <button class="layui-btn layui-btn-normal" type="reset" id="getBack"><i class="layui-icon">&#xe669;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <table class="layui-hide" id="test" lay-filter="tableLine"></table>

    </div>
</div>
<script src="http://localhost:8088/layui.js" charset="utf-8"></script>
<%--<script type="text/html" id="barDemo">
    <button class="layui-btn layui-btn-normal layui-btn-sm" lay-event="update"><i class="layui-icon"></i></button>
    <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="desrc"><i class="layui-icon layui-icon-form"></i></button>
</script>--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,method: 'post'
            ,height: 480
            ,id: 'tableLine'
            ,url:'/htAllSuffer'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'suid', title: '患者编号', templet:"<div>SU{{d.suid +10000}}</div>",sort: true,align: 'center' }
                ,{field:'suname', title: '患者名称',align: 'center', sort: true}
                ,{field:'age', title: '年龄',sort: true,align: 'center' }
                ,{field:'sex', title: '性别',align: 'center', sort: true}
                ,{field:'phone', title: '电话',align: 'center', sort: true}
                ,{field:'price', title: '余额',templet:"<div>{{d.price}}元</div>",align: 'center', sort: true}
                /*,{title: '操作', templet:"", align: 'center', toolbar: '#barDemo'}*/

            ]]
        });

        layui.use(['jquery', 'layer'], function () {
            var $ = layui.$ //重点处
                , layer = layui.layer;

            $(document).ready(function(){

                $('#selectEmp').on('click', function () {
                    // 搜索条件
                    var send_lid = $('#suid').val();
                    var send_type   = $('#suname').val();

                    table.reload('tableLine',{
                        method: 'post'
                        , where: {
                            'suid': send_lid,
                            'suname': send_type
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
        });

        table.on('tool(tableLine)', function(obj){
            var data = obj.data;
            console.log(data);
            if(obj.event === 'desrc'){
                var name = encodeURIComponent(data.lid);
                location.href = "/descrLineByLid/"+data.lid;
            }else if (obj.event === 'update') {
                location.href = "/updateLineByLid/"+data.lid;
            }
        });

    });

</script>
</body>
</html>
