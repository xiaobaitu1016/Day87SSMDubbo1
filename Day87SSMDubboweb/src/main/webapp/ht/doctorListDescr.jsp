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

<div class="w1200" style="margin-left: 200px">
    <div class="w900 fl">

        <form action="" method="post" class="layui-form layui-form-pane">
            <table class="layui-table" style="text-align: center;margin-top: 50px">
                <thead>
                <tr>
                    <th colspan="4"><center><h3><b>${doctor.dname} 个人信息详情</b></h3></center></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>医生编号：</td>
                    <td width="270px">
                        DC${doctor.did+10000}
                    </td>
                    <td><b>医生姓名：</b></td>
                    <td width="270px">
                        ${doctor.dname}
                    </td>
                </tr>
                <tr>
                    <td>科室：</td>
                    <td>
                        ${doctor.departmentsSmall.dsname}
                    </td>
                    <td>职称：</td>
                    <td>
                        ${doctor.doctorRole.drname}
                    </td>
                </tr>
                <tr>
                    <td>联系电话：</td>
                    <td>
                        ${doctor.phone}
                    </td>
                    <td>好评数：</td>
                    <td width="270px">
                        ${doctor.praise}
                    </td>
                </tr>
                <tr>
                    <td>职位：</td>
                    <td colspan="3">
                        <div class="layui-inline">
                            <c:forEach var="i" items="${doctor.docRoleKeyList}">
                                <button type="button" class="layui-btn layui-btn-sm layui-btn-primary">${i.roles.rname}</button>
                            </c:forEach>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>擅长疾病：</td>
                    <td colspan="3">
                        <div class="layui-inline">
                            <c:forEach var="i" items="${doctor.doctorIllnessList}">
                                <button type="button" class="layui-btn layui-btn-sm layui-btn-primary">${i.illness.ilname}</button>
                            </c:forEach>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>备注：</td>
                    <td colspan="3">
                        ${doctor.remarks}
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center>
                            <button id="backBut" type="button" class="layui-btn layui-btn-normal layui-btn-sm">返回</button>
                        </center>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>

        <div class="add-list-hospital">
            <h1 style="float:left">待处理</h1>
            <div style="float:right;font-size:14px;white-space:nowrap;">
                咨询数： <span style="color:#e9b274;"><a>${consultCount}</a></span>
            </div>
            <div style="float:right;font-size:14px;white-space:nowrap;margin-right: 330px">
                待诊数： <span style="color:#e9b274;"><a>${numberCount}</a></span>
            </div>
        </div>


        <table class="layui-table" style="text-align: center">
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
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 1 && s.whichclass == 1}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 2 && s.whichclass == 1}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 3 && s.whichclass == 1}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 4 && s.whichclass == 1}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
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
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 1 && s.whichclass == 2}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 2 && s.whichclass == 2}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 3 && s.whichclass == 2}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 4 && s.whichclass == 2}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
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
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 1 && s.whichclass == 3}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 2 && s.whichclass == 3}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 3 && s.whichclass == 3}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 4 && s.whichclass == 3}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
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
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 1 && s.whichclass == 4}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 2 && s.whichclass == 4}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 3 && s.whichclass == 4}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 4 && s.whichclass == 4}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
                <td>&nbsp;
                    <c:forEach var="s" items="${allDoctorSchedule}">
                        <c:if test="${s.did.equals(doctor.did) && s.dsid.equals(doctor.dsid)}">
                            <c:if test="${s.weekday == 5 && s.whichclass == 4}">
                                出诊
                            </c:if>
                        </c:if>
                    </c:forEach>
                </td>
            </tr>
            </tbody>

        </table>

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