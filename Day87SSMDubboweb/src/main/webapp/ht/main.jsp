<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/15
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>【全国医院医生排行榜】大全、预约挂号、专家门诊、找医生 在线电话咨询医生统一挂号平台 – 名医汇</title>
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
        <div class="add-list-hospital">
            <h1 style="float:left">个人信息</h1>
        </div>

        <div class="H_main_list">
            <div class="H-phone">
                <ul class="H_main">
                    <li> <a href=""><img src="http://localhost:8088/images/doctor2.jpg" class="fl H_p" />
                    </a>
                        <div class="H_d_down commonname H_d fl">
                            <h3 class="fl"> <a style="color: #333;" href="">${curDoctor.dname}</a></h3>
                            <Span class="fl doctor_titles">( ${curDoctor.doctorRole.drname} )</Span>
                            <small class="clr"><a href="">西京医院</a>&nbsp;&nbsp;<a href="/hospital_71/department_54.html">妇科</a> </small>
                            <p class="star-p"><span class="dis-nums">${commentCount}条点评</span></p>
                            <p class="H_bgt"> 擅长疾病
                            </p>
                        </div>
                        <div class="H_date_down fr">
                            <p>好评数</p>
                            <p id="hgcount">${curDoctor.praise}</p>
                        </div>
                        <div class="more-dis-pt">
                            <c:forEach var="i" items="${curDoctor.doctorIllnessList}" >
                                <font class="doctor_appoint">${i.illness.ilname}</font>
                            </c:forEach>
                            <div class="clr"></div>
                        </div>
                        <div class="clr"> </div>
                    </li>

                </ul>
            </div>
        </div>
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
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 1 && s.whichclass == 1}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 2 && s.whichclass == 1}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 3 && s.whichclass == 1}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 4 && s.whichclass == 1}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
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
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 1 && s.whichclass == 2}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 2 && s.whichclass == 2}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 3 && s.whichclass == 2}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 4 && s.whichclass == 2}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
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
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 1 && s.whichclass == 3}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 2 && s.whichclass == 3}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 3 && s.whichclass == 3}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 4 && s.whichclass == 3}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
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
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 1 && s.whichclass == 4}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 2 && s.whichclass == 4}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 3 && s.whichclass == 4}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
                                    <c:if test="${s.weekday == 4 && s.whichclass == 4}">
                                        出诊
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>&nbsp;
                            <c:forEach var="s" items="${allDoctorSchedule}">
                                <c:if test="${s.did.equals(curDoctor.did) && s.dsid.equals(curDoctor.dsid)}">
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

    });
</script>
</body>


