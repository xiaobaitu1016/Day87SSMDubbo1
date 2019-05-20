<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <title>新增二级科室</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
</head>

<body>

<div style="width: 80%;height: 70%;margin-left: 19%;margin-top: 7%" id="bigdiv">
    <form class="layui-form">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label"><b>一级科室</b></label>
                <div class="layui-input-inline">
                    <input type="text" id="dbigks" name="phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label"><b>备注</b></label>
                <div class="layui-input-inline">
                    <input type="text" id="remarks" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div style="margin-left: 120px" class="layui-btn-group">
            <button class="layui-btn" lay-submit="" lay-filter="demo1" type="button" id="submitBut">提交</button>
            <button class="layui-btn" type="button" id="cancelBut">取消</button>
        </div>
    </form>
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

        //创建一个编辑器
        /*var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
          name: function(value){
            if(value.length > 0){
              return '姓名不能为空';
            }
          }
          ,pass: [
            /^[\S]{3,12}$/
            ,'密码必须6到12位，且不能出现空格'
          ]
          ,content: function(value){
            layedit.sync(editIndex);
          }
        });*/
    });

    layui.use(['jquery', 'layer'], function () {
        var $ = layui.$ //重点处
            , layer = layui.layer;

        $(document).ready(function(){

            $("#submitBut").on("click",function () {

                var remarkes = $("#remarkes").val();
                var dbigks = $("#dbigks").val();

                if (dbigks.length == 0){
                    console.log("不能为空");
                } else {
                    $.post("/departmentsBigListAdd",{dbigks:dbigks,remarkes:remarkes},function (date) {
                        if(date){
                            layer.alert("一级科室信息增加成功");
                            window.parent.location.reload();
                        }else{
                            layer.alert("一级科室信息增加失败");
                        }
                    });
                }
            });

            $("#cancelBut").on("click",function () {
                window.parent.location.reload();
            });

        });
    });
</script>
</body>
</html>
