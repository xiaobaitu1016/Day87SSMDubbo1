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
        <form class="layui-form layui-form-pane" style="margin-left: 150px">
            <div class="layui-form-item">
                <div class="layui-inline" >
                    <label class="layui-form-label" style="width: 90px;"><b>疾病</b></label>
                    <div class="layui-input-inline" style="width: 200px;">
                        <select id="ilid">
                            <option></option>
                            <c:forEach var="i" items="${allIllness}">
                                <option value="${i.ilid}">${i.ilname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="layui-inline" style="margin-left: 80px">
                        <label class="layui-form-label" style="width: 90px;"><b>挂号时间</b></label>
                        <div class="layui-input-inline" style="width: 200px;">
                            <%--<input type="text" name="date" id="" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">--%>
                            <input type="text" name="start" id="startTime" placeholder="开始日期" autocomplete="off" readonly="readonly" class="layui-input">
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline"style="width: 200px;">
                            <%--<input type="text" name="date" id="1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">--%>
                            <input type="text" name="end" id="endTime" placeholder="结束日期" autocomplete="off" readonly="readonly" class="layui-input">
                        </div>
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
    {{#  if(d.state == '待诊'){ }}
        <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="接诊">接诊</button>
    {{#  } }}
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,method: 'post'
            ,id: 'tableLine'
            ,height: 480
            ,url:'/htAllMySufferWait'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,limits: [3,5,8,10,20]
            ,limit: 8
            ,cols: [[
                {field:'suid', title: '患者编号', templet:"<div>SU{{d.suid +10000}}</div>",sort: true,align: 'center' }
                ,{field:'suid', title: '姓名',templet:"<div>{{d.suffer.suname}}</div>",sort: true,align: 'center' }
                ,{field:'count', title: '排号数',align: 'center', sort: true}
                ,{field:'ilid', title: '排号数',templet:"<div>{{d.illness.ilname}}</div>",align: 'center', sort: true}
                ,{field:'time', title: '挂号时间',templet:"<div>{{layui.util.toDateString(d.time, 'yyyy年MM月dd日 HH:mm')}}</div>",align: 'center', sort: true,width:230}
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
                    var send_ilid = $('#ilid').select().val();
                    var send_startTime   = $('#startTime').val();
                    var send_endTime   = $('#endTime').val();

                    table.reload('tableLine',{
                        method: 'post'
                        , where: {
                            'ilid': send_ilid,
                            'startTime': send_startTime,
                            'endTime': send_endTime
                        }
                        , page: {
                            curr: 1
                        }
                    });
                });

                $("#addSuffer").on("click",function () {
                    location.href="/toHtMySufferWaitAdd";
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

                var start = laydate.render({ //投票开始
                    elem: '#startTime',
                    type: 'time',
                    done:function(value,date){
                        endMax = end.config.max;
                        end.config.min = date;
                        end.config.min.month = date.month -1;
                    }
                });

                var end = laydate.render({ //投票结束
                    elem: '#endTime',
                    type: 'time'
                });

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

            table.on('tool(tableLine)', function(obj){
                var data = obj.data;
                console.log(data);
                if(obj.event === '接诊'){
                    var name = encodeURIComponent(data.nuid);
                    var nuid = data.nuid;
                    $.post("/htSufferWaitJiezhen",{nuid:nuid},function (data) {
                        if (data){
                            window.location.reload();
                        }
                    });
                }
            });

        });



    });

</script>
</body>
</html>
