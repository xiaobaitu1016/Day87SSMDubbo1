<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<div class="w1200" style="margin-left: 200px;margin-top: 10px">
    <div class="w900 fl">
        <button id="backBut" class="layui-btn layui-btn-primary">返回</button>
        <div class="add-list-hospital">
            <h1 style="float:left">${consult.doctor.dname}医师的咨询详情</h1>
        </div>
        <div class="H_main_list">
            <div class="H-phone">
                <ul class="H_main">
                    <li>
                        <div class="fl">
                            <div>
                                <font style="" size="3" color="gray">基本信息：</font>
                                <font size="3">
                                    ${consult.suffer.sex}&nbsp;&nbsp;&nbsp;
                                    ${consult.suffer.age}岁
                                </font>
                            </div>
                            <div style="margin-top: 8px">
                                <font size="3" color="gray">咨询描述：</font>
                                <font size="3">${consult.descr}</font>
                            </div>
                        </div>
                        <div class="fr" style="color: gray;margin-top: 22px">
                            <i class="layui-icon">&#xe612;</i><span>${consult.suffer.suname}</span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <i class="layui-icon">&#xe60e;</i><span><fmt:formatDate value="${consult.time}" pattern="yyyy/MM/dd  HH:mm:ss" /></span>
                        </div>

                        <div class="clr"> </div>
                    </li>
                    <c:forEach var="a" items="${consultAnswer}">
                        <li>
                            <c:if test="${a.role.equals('医师')}">
                                <div class="fl">
                                    <div>
                                        <font size="2" color="green">${consult.doctor.dname}</font>
                                        <font size="2">(</font>
                                        <font size="2" color="green">${consult.doctor.departmentsSmall.dsname}-${consult.doctor.doctorRole.drname}</font>
                                        <font size="2">)医生的回复</font>
                                    </div>
                                    <div style="margin-top: 8px;margin-left: 8px">
                                        <font size="2">${a.descr}</font>
                                    </div>
                                </div>
                                <div class="fr" style="color: gray;margin-top: 22px">
                                    <i class="layui-icon">&#xe60e;</i><span><fmt:formatDate value="${a.time}" pattern="yyyy/MM/dd  HH:mm:ss" /></span>
                                </div>
                            </c:if>
                            <c:if test="${a.role.equals('患者')}">
                                <div class="fl">
                                    <div>
                                        <font size="2" color="green">${consult.suffer.suname}</font>
                                        <font size="2">的追问</font>
                                    </div>
                                    <div style="margin-top: 8px;margin-left: 8px">
                                        <font size="2">${a.descr}</font>
                                    </div>
                                </div>
                                <div class="fr" style="color: gray;margin-top: 22px">
                                    <i class="layui-icon">&#xe60e;</i><span><fmt:formatDate value="${a.time}" pattern="yyyy/MM/dd  HH:mm:ss" /></span>
                                </div>
                            </c:if>
                            <div class="clr"> </div>
                        </li>
                    </c:forEach>

                </ul>
            </div>
        </div>
        <div style="margin-left: -110px">
            <form class="layui-form" action="">
                <div class="layui-input-block">
                    <textarea id="descr" style="width: 898px" lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
                <center>
                <div class="layui-input-block" style="margin-top: 10px">
                    <button id="submit" type="button" class="layui-btn layui-btn-sm" lay-submit="" lay-filter="demo1">回复</button>
                    <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
                </div>
                </center>
            </form>
        </div>
        <input id="cid" style="visibility: hidden" value="${consult.cid}"/>
        <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/doctorlistcommon.js"></script>
    </div>

</div>
<script src="http://localhost:8080/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate',"jquery",'table'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,$ = layui.jquery
            ,laydate = layui.laydate;

        $("#reset").on("click",function () {
            window.location.reload();
        });

        $("#backBut").on("click",function () {
            window.history.back(-1);
        });

        $("#submit").on("click",function () {
            var ansDescr = $("#descr").val();
            var cid = $("#cid").val();
            $.post("/answerSufferByDoctor",{ansDescr:ansDescr,cid:cid},function (data) {
                if (data){
                    window.location.reload();
                }
            });
        });

        $("#submitBut").on("click",function () {
            var did = $("#did").val();
            var dname = $("#dname").val();
            var dsid = $("#dsid").select().val();
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

            /*console.log("dsid===="+dsid);
            console.log("drid===="+drid);
            console.log("ridString===="+ridString);
            console.log("ilidString===="+ilidString);
            console.log("did===="+did);*/

            layer.confirm("确定修改？",function (index) {

                $.post("/htUpdateDoctorByDoctor",{did:did,dname:dname,dsid:dsid,drid:drid,
                    ridString:ridString,phone:phone,ilidString:ilidString,remarks:remarks,
                    pass:pass,praise:praise},function (data) {
                    if (data){
                        location.href="/toHtDoctorList";
                    }
                });

                obj.del();
                layer.close(index);
            });



        });

    });
</script>
</body>