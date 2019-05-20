<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改</title>
    <meta name="keywords"    content="全国医院医生排行榜，全国医院医生大全，全国医院医生预约挂号，全国医院专家预约挂号，全国医院医生哪个好，全国医院专家在线电话咨询，全国医院医生在线挂号，全国医院专家门诊，找医生" />
    <meta name="description" content="名医汇为您提供全国医院医生排行榜，医生大全、预约挂号、专家门诊哪个好等，百万患者真实评价打造实力排名，助您在第一时间使用全国医院统一挂号平台，找医生专家预约在线电话咨询挂号。" />
    <meta property="qc:admins" content="353120170365167110516654" />
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1" />
    <meta name="360-site-verification"    content="0e5c99f641ba942188b330e4ac953605" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/reset.css?v=20171017" />
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/style.css?v=20170729" />
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/popup.css?v=20170726" />
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/jquery-1.9.1.min.js" ></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/jquery.SuperSlide.js"></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/TouchSlide.1.1.js?v=20160924" ></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/myjs.js?v=20160924" ></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/my.js?v=20160924"></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/common.js?v=20181130"></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/message.js?v=20160924"></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/stat.js?v=20160924"></script>
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/doctors/">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/doctors/">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/doctors/">
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css"  media="all">
    <meta name="applicable-device" content="pc">
    <meta http-equiv="Cache-Control" content="no-transform "/>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
</head>
<script language=javascript> var t_s1 = new Date().getTime(); </script>
<script src="http://www.mingyihui.net/templates/default/js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("http://m.mingyihui.net/doctors/");</script>
<base target="_blank">
<div id="adv_topecshop"></div>

<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/H_15.css"/>
<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/H_15_1.css?v=20180305"/>

<body>


<script src="http://www.mingyihui.net/templates/skins/red2017/js/condition.js?v=20160924"></script>



        <form action="" method="post" class="layui-form layui-form-pane">
            <table class="layui-table" style="text-align: center">
                <tbody>
                <tr>
                    <td>一级科室：</td>
                    <td>
                        <input id="dbig" readonly value="${dsmall.dsname}" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                    <td>二级级科室：</td>
                    <td>
                        <input id="dsid" readonly value="${dsmall.dsname}" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                </tr>
                <tr>
                    <td>医生姓名：</td>
                    <td>
                        <input id="dname" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                    <td>职称：</td>
                    <td>
                        <select id="doctorrole" lay-filter="doctorrole" lay-verify="required">
                            <option></option>
                            <c:forEach items="${allDoctorRole}" var="s">
                                <option value="${s.drid}">${s.drname}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td width="270px">
                        <input id="pass" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                    <td>好评数：</td>
                    <td width="270px">
                        <input id="praise" value="0" readonly="readonly" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                </tr>
                <tr>
                    <td>职位：</td>
                    <td colspan="3">
                        <div class="layui-inline">
                            <c:forEach var="i" items="${allRole}">
                                <input type="checkbox" name="rid" value="${i.rid}" title="${i.rname}"/>
                            </c:forEach>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>联系电话：</td>
                    <td colspan="3">
                        <input id="phone" lay-verify="required" type="text" autocomplete="on" class="layui-input">
                    </td>
                </tr>
                <tr>
                    <td>擅长疾病：</td>
                    <td colspan="3">
                        <div id="illness" class="layui-inline">
                            <c:forEach var="i" items="${dsmall.illnessList}">
                                <input type="checkbox" name="ilid" value="${i.ilid}" title="${i.ilname}"/>
                            </c:forEach>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td colspan="3">
                        <input id="remarkes" type="text" autocomplete="on" class="layui-input">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center>
                            <button lay-submit="" class="layui-btn layui-btn-danger layui-btn-sm" type="button" id="submitBut">确定</button>
                            <button id="backBut" type="button" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
                        </center>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
<script src="http://localhost:8080/layui.js" charset="utf-8"></script>
<script>
    layui.use(['jquery', 'layer'], function () {
        var $ = layui.$ //重点处
            , layer = layui.layer;

        $("#reset").on("click",function () {
            window.parent.location.reload();
        });

        $("#backBut").on("click",function () {
            window.parent.location.reload();
        });

        layui.use(['form', 'layedit', 'laydate','table'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

            var table = layui.table;

            $("#submitBut").on("click",function () {
                var dname = $("#dname").val();
                var dsid = $("#dsid").val();
                var drid = $("#doctorrole").select().val();

                var roles = document.getElementsByName("rid");
                var ridString="";

                for(var i=0;i<roles.length;i++){
                    if(roles[i].checked == true){
                        ridString += "-" + roles[i].value;
                    }
                }

                var phone = $("#phone").val();

                var ilids = document.getElementsByName("ilid");
                var ilidString="";

                for(var i=0;i<ilids.length;i++){
                    if(ilids[i].checked == true){
                        ilidString += "-" + ilids[i].value;
                    }
                }

                var remarks = $("#remarkes").val();
                var pass = $("#pass").val();
                var praise = $("#praise").val();

                layer.confirm("确定新增？",function (index) {

                    $.post("/departmentsSmallDescrAddDoctorSubmit",{dname:dname,dsid:dsid,drid:drid,
                        ridString:ridString,phone:phone,ilidString:ilidString,remarks:remarks,
                        pass:pass,praise:praise},function (data) {
                        if (data){
                            window.parent.location.reload();
                        }
                    });

                    obj.del();
                    layer.close(index);
                });

            });

            form.on('select(dsid)',function (data) {
                var a = data.value;
                console.log(a);
                $.post("/htGetDsmall",{dsid:a},function (data) {
                    var bb = eval(data);
                    console.log(bb);
                    $("#illness").empty();
                    for(var key in bb){
                        var opt = $("<input type='checkbox' name='ilid' title="+bb[key].ilname+" value="+bb[key].ilid+"></input>");
                        $("#illness").append(opt);
                    }
                    form.render();
                });

            });

        });

    });

</script>
</body>


