<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/15
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>医生简介</title>

    <link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/doctor_details.css?v=20171028" />
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
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/guahao/hospital_1302/">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/guahao/hospital_1302/">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/guahao/hospital_1302/">
</head>
<link href="http://www.mingyihui.net/templates/skins/red2017/css/bootstrap.css" rel="stylesheet">
<link href="http://www.mingyihui.net/templates/skins/red2017/css/H_05.css" rel="stylesheet" type="text/css" />
<link href="http://www.mingyihui.net/templates/skins/red2017/css/datepicker.css" rel="stylesheet">
<link href="http://www.mingyihui.net/templates/skins/red2017/css/prettify.css" rel="stylesheet">
<link href="http://www.mingyihui.net/templates/skins/red2017/css/yuyue.css?v=20160924" rel="stylesheet">

<body>
<!--导航s-->
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/header.css?v=20171018"/>
<div class="g_top">
    <div class="w1200 g_top_contant" >
        <div class="w1200 g_top_contant" >
            <!--头部-->
            <!--已登录-->
            <div class="fl"  id="isLogin">
                <p class="welcome fl" style="margin-top: 14px; border: none;"></p>
                <div class="welcome fl" style="margin: 14px 0 0 10px; display: none">
                    <a href="javascript:;" id="doctorMsgBox"><i class="consulInfor"></i><p>温馨提示:您有<span style="color:red;" id="unreplynums">0</span>条待回复的咨询，立即查看></p></a>
                </div>
                <div class="clr"></div>
            </div>
            <!--未登录-->
            <div class="fl"  id="notLogin">
                <ul class="login-registration">
                    <li class="on popup_li"> <a href="javascript:jumpLogin();" target="_self">登录</a> </li>
                    <li class="on zhuce"> <a href="javascript:jumpRegister();" target="_self">注册</a> </li>
                </ul>
                <ul class="login-registration">
                    <li class="on popup_li">
                        <span class="top_nav_icon"></span>
                    </li>
                    <li class="on zhuce"> <a href="javascript:showDoctorRegister();" target="_self">医生注册</a> </li>
                </ul>
                <div class="clr"></div>
            </div>


            <div class="fr H_top_nav fnone">
                <ul id="topRight">
                    <li class="fl jsnavShow"><a href="javascript:;" title="下载APP">APP下载</a>
                        <div class="app-bg jsnavBox">
                        </div>
                    </li>
                    <li class="fl"><a href="http://www.mingyihui.net/article_5823.html" title="帮助中心"> 帮助中心</a> </li>
                    <li class="fl jsnavShow">
                        <a rel="nofollow">就医交流群：</a><div class="wx-bg jsnavBox"></div></li>
                    <div class="clr"></div>
                </ul>
            </div>
            <div class="clr"></div>
        </div>
    </div>
</div>


<!--导航e-->
<script type="text/javascript">

    // 导航弹窗
    (function() {
        $(".jsnavShow").hover(function() {
            $(this).find(".jsnavBox").css("display", "block");
        }, function() {
            $(this).find(".jsnavBox").css("display", "none");
        });
    })();
    var loginReturnUrl=document.location.href;
    function jumpLogin(){
        var ReturnUrl=""+loginReturnUrl;
        window.location.href=ReturnUrl;
    }
    function jumpRegister(){
        var ReturnUrl=""+loginReturnUrl;
        window.location.href=ReturnUrl;
    }

</script>

<!--搜索栏-->
<div class="w1200">
    <div class="H_logo fl fnone">
        <h2> <a href="http://www.mingyihui.net"><img src="http://www.mingyihui.net/templates/skins/red2017/images/H_logo.png" alt="名医汇" /></a> </h2>
    </div>
    <div class="H_sea fr fnone">
        <form class="H_form">
            <div class="H_sele fl"> <A id="ul_sel_com" class="H_down" href="javascript:;" target="_self" value="0">综合</A>
                <ul class="H_down_con"  id="ul_sel_con">
                    <li><a href="javascript:;" value="0" target="_self" class="item current" rel="zh" title="综合">综合</a></li>
                    <li><a href="javascript:;" value="1" target="_self" class="item" rel="xz" title="医院">医院</a></li>
                    <li><a href="javascript:;" value="2" target="_self" class="item" rel="xz" title="医生">医生</a></li>
                    <li><a href="javascript:;" value="3" target="_self" class="item" rel="cp" title="病种">疾病</a></li>
                    <!--<li><a href="javascript:" value="5" target="_self" class="item" rel="cp" title="经验">经验</a></li>-->
                </ul>
            </div>
            <div class="H_text fl">
                <input type="text" autocomplete="off" id="searchKey"  placeholder="请输入您想查找的疾病名称、医院或医生名称" />
            </div>
            <div class="H_sub fr">
                <input type="button" value="搜索" id="btnSearch">
                <!-- <input type="submit" value="搜索"/> -->
            </div>
            <div class="clr"></div>
        </form>
        <div class="H_hot">
            <ul><li><a href="/FeiAi/doctors.html" title="肺癌">肺癌</a></li>
                <li><a href="/GanAi/doctors.html" title="肝癌">肝癌</a></li>
                <li><a href="/WeiAi/doctors.html" title="胃癌">胃癌</a></li>
                <li><a href="/ZhiChangAi/doctors.html" title="直肠癌">直肠癌</a></li>
                <li><a href="/RuXianAi/doctors.html" title="乳腺癌">乳腺癌</a></li>
                <li><a href="/YiGan/doctors.html" title="乙肝">乙肝</a></li>
                <li><a href="/BuYunBuYu/doctors.html" title="不孕不育">不孕不育</a></li>
                <li><a href="/DuoNangLuanChaoZongHe/doctors.html" title="多囊卵巢综合征">多囊卵巢综合征</a></li>
            </ul>
        </div>
    </div>
</div>

<!-- 头部导航 -->
<link href="http://www.mingyihui.net/templates/skins/red2017/css/H_05.css?v=20170919" rel="stylesheet" type="text/css" />
<!-- 头部导航 -->
<div class="H_nav w100 "> <a class="phone_nav" href="javascript:;" target="_self"></a>
    <div class="w1200">
        <ul id="nav" class="fl" style="position: relative;">
            <li>  </li>
            <li>  </li>
            <li>  </li>
            <li>  </li>
            <li> </li>

        </ul>
        <ul class="fr">
            <!--<li> <a href="/service/phone_hs.html" title="电话咨询">电话咨询</a></li>-->
            <li> <a href="/service/" title="预约挂号" rel="nofollow">预约挂号</a> </li>
            <li> <a href="http://www.mingyihui.net/ask" title="专家咨询">专家咨询</a> </li>
        </ul>
        <div class="clr"></div>
    </div>
    <!--面包屑-->
    <c:forEach items="${Doctor}" var="d">
    <div class="crumbs w1200"><a href="/qt/index.jsp">西京医院</a> &gt <a href="">${d.departmentsSmall.dsname}</a> &gt <a href="">${d.dname}</a></div>
    <div class="doctor_details w1200">
        <div class="title_h1">
            <h1 class="doctor_title">${d.dname}</h1>
            <!-- <span class="doctor_titles">主任医师,副教授</span> -->
        </div>
        <!--左边东院科室列表-->


        <div class="section_list_left left">
            <ul class="section_nav clearfix">
                <li> <a class="hover" href="/doctor_225702.html" title="概览" target="_self">概览</a> </li>
                <li> <a  href="/doctor_225702/index.html" title="详细介绍" target="_self">详细介绍</a> </li>

            </ul>
            <!--面包屑结束-->
            <!--概览-->
            <div class="details_top clearfix"> <img src="http://photo.orsoon.com/180610/EPS-180610_425/manyYFHNX9_small.jpg" alt="" />
                <div class="details_contant fr">
                    <div class="w100 clearfix"> <span>坐诊科室:</span>
                        <p class="overview_p"> <a href="/hospital_1302/department_399.html">${d.departmentsSmall.dsname}</a>

                            <a class="hospital_guahao" href="" title="西京医院预约挂号"> 西京医院预约挂号 </a>
                            <a class="hospital_guahao" href="" title="价格"> 9.99元 </a>
                        </p>
                    </div>
                    <div class="w100 clearfix"> <span>擅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长:<c:forEach items="${d.departmentsSmall.illnessList}" var="dd">${dd.ilname}</c:forEach> 等... </span>

                        <p class="overview_p"><c:forEach items="${d.doctorIllnessList}" var="s">${s.illness}</c:forEach> </p>
                    </div>

                    <div class="registration left">

                        <a href="javascript:showLoginbox('http://www.mingyihui.net/service/choose_225702.html');" target="_self"  class="registration_a right on"  onclick='$.get("/api/stat/statKey2/clickPcDoctorIndexGuahao/0/0");'>预约挂号</a>



                        <a class="consulting left" href="http://www.mingyihui.net/ask/consult/services_225702.html" target="_self"> 在线咨询 </a>


                    </div>
                </div>

            </div>



            <!--出诊时间表start-->
            <div class="out_call">
                <h3>出诊时间</h3>
                <table border="0">

                        <tr>
                            <th>时间</th>
                            <th>周一</th>
                            <th>周二</th>
                            <th>周三</th>
                            <th>周四</th>
                            <th>周五</th>

                        </tr>

                        <tr >
                            <td><span>上午1</span></td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 1 && s.whichclass == 1}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 2 && s.whichclass == 1}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 3 && s.whichclass == 1}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 4 && s.whichclass == 1}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
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
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 1 && s.whichclass == 2}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 2 && s.whichclass == 2}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 3 && s.whichclass == 2}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 4 && s.whichclass == 2}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
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
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 1 && s.whichclass == 3}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 2 && s.whichclass == 3}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 3 && s.whichclass == 3}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 4 && s.whichclass == 3}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
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
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 1 && s.whichclass == 4}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 2 && s.whichclass == 4}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 3 && s.whichclass == 4}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 4 && s.whichclass == 4}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>&nbsp;
                                <c:forEach var="s" items="${allDoctorSchedule}">
                                    <c:if test="${s.did.equals(d.did) && s.dsid.equals(d.dsid)}">
                                        <c:if test="${s.weekday == 5 && s.whichclass == 4}">
                                            出诊
                                        </c:if>
                                    </c:if>
                                </c:forEach>
                            </td>
                        </tr>
                    </table>
            </div>

            <!--出诊时间表end-->
            <!--患者咨询-->
            <div class="patient_question">
                <div class="patient_title clearfix">
                    <h3 class="fl ">患者咨询</h3>
                    <a href="/consult/services_225702.html">咨询吕安林医生 </a>

                </div>



                <ul class="question_ul">
                    <li> <a href=""> <i class="expert_i"> </i> <a href="">胎儿室间隔肌部小室缺可能</a>
                        <span class="fr ex_c">2016/04/27 17:05</span>
                        <div class="clr"> </div>
                        <p> 室间隔肌部中下段连续性中断，缺损大小约2.2mm </p>
                    </a> </li>
                </ul>
                <a class="more" href="">更多咨询问答</a> </div>
            <!--看病经验分享-->
            <div class="individual_sharing">
                <div class="serve_title clearfix">
                    <h3 class="title_h2">看病经验分享</h3>
                    <p> 已经有<span>1</span>位网友分享</p>
                </div>
                <script type="text/javascript">
                    var ddid = '225702';
                </script>
                <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/doctor.js?v=20171026"></script>

                <ul class="experience_ul"> <li> <a name="f1194457"></a> <img src="http://www.mingyihui.net/templates/skins/red2017/images/user_90x90.jpg" alt="60.164.102.*">
                    <div class="experience_right right ">
                        <p class="experience_name"> 就诊医生： <a href="/doctor_225702.html">${d.dname}</a> <span class="color_333"> (心脏内科 主任医师,副教授) </span> &nbsp;&nbsp;&nbsp; </p>
                        <p class="experience_name"> 患者： <a href="javascript:;"></a>         &nbsp;&nbsp;&nbsp; </p>
                        <p class="experience_name"> 疾病： <span class="class"><a href="" ><c:forEach items="${d.departmentsSmall.illnessList}" var="dd">${dd.ilname}</c:forEach></a></span></p>
                        <p class="experience_satisfaction"> <span class="color_999">疗效满意度：</span> <span class="star star1"></span> <span class="f6c829">100%</span> </p>
                        <div class="clr"> </div>
                        <div class="comment_p clearfix">
                            <p> <span>看病过程：</span>关心病人，治疗及时，</p>
                        </div>
                        <div class="praise_time clearfix"> <a id="praise1194457" class="praise1" href='javascript:showLoginbox();' target="_self" title="">(0)</a> <span class="fr"> 2015/03/08 01:01 </span> </div>
                    </div>
                    <div class="clr"> </div>
                </li>
                </ul>

            </div>
        </div>
        </c:forEach>
        <div class="section_list_right right">
            <div id="advDoctorRight" style="margin-bottom: 20px; width: 240px;">
            </div>

            <!--擅长同类疾病医生start-->
            <div class="recommend border" style="height: 400px">
            <h3> 擅长再生障碍性贫血医生 </h3>

            <ul class="recommend_ul" id="recommend1_ul">
                <li> <span class="ranking1 fl">NO.1</span>
                    <div class="ranking_right fr"> <a href="/doctor_225733.html"> 本院  陈协群 </a>
                        <p> <span class="green"> 67% </span> 好评率， <span class="green">2</span>人点评 </p>
                    </div>
                </li>
                <li> <span class="ranking1 fl">NO.2</span>
                    <div class="ranking_right fr"> <a href="/doctor_225735.html"> 本院  白庆咸 </a>
                        <p> <span class="green"> 100% </span> 好评率， <span class="green">2</span>人点评 </p>
                    </div>
                </li>
                <li> <span class="ranking1 fl">NO.3</span>
                    <div class="ranking_right fr"> <a href="/doctor_225738.html"> 本院  杨岚 </a>
                        <p> <span class="green"> 100% </span> 好评率， <span class="green">1</span>人点评 </p>
                    </div>
                </li>
                <li> <span class="ranking2 fl">NO.4</span>
                    <div class="ranking_right fr"> <a href="/doctor_225734.html"> 本院  孙秉中 </a>
                        <p> <span class="green"> 73% </span> 好评率， <span class="green">145</span>人点评 </p>
                    </div>
                </li>
                <li> <span class="ranking2 fl">NO.5</span>
                    <div class="ranking_right fr"> <a href="/doctor_225737.html"> 本院  张涛 </a>
                        <p> <span class="green"> 100% </span> 好评率， <span class="green">1</span>人点评 </p>
                    </div>
                </li>
            </ul>

        </div>


    </div>
    </div>
    <div class="footer">
        <div class="footer-pd">
            <div class="fl about-myh">
                <a href="http://www.mingyihui.net"></a>
            </div>
            <div class="fl about-line">
                <ul class="myh-line">
                    <li><a href=""rel="nofollow" target="_blank">关于名医汇</a></li>
                    <li><a href=""rel="nofollow" target="_blank">网站声明</a></li>
                    <li><a href=""rel="nofollow" target="_blank">媒体报道&nbsp&nbsp&nbsp</a></li>
                    <li><a href=""rel="nofollow" target="_blank">招聘启事</a></li>
                    <li><a href=""rel="nofollow" target="_blank">联系我们</a></li>
                </ul>
                <p><a href="http://www.miitbeian.gov.cn/" target="_blank" style="color: #999;">备案ICP备12040220号-2</a></p>
                <p>互联网药品信息服务资格证书 证书编号：（粤）-经营性-2015-0002</p>
                <p>COPYIGHT2010-2019广州诚益信息科技有限公司版权所有</p>
            </div>
            <div class="fl ">
                <p class="footer-email ">E-MAIL:<br>
                    <span>market@mingyihui.net</span></p>
                <p class="footer-law ">法律顾问:<br>
                    <span>北京市盈科（广州）事务所</span></p>
            </div>
        </div>

    </div>
</div>
<!-- 登陆页面start -->
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/login.css?v=20160924"/>
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/iconfont.css?v=20171017"/>
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/doctorreg.css?v=20171017"/>
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/login1.css?v=20181129"/>
<!-- 弹窗登录s -->
<div class="siginPopul" id="windowLogin" style="display: none">
    <div class="regfetMainPopul">
        <div class="regfetMainPoapulTitle">
            <h3>账户密码登录</h3>
            <span onclick="closeLoginbox();">&times;</span>
        </div>
        <div class="regfetMainPopulPd">
            <div class="retfetInp">
                 <span class="retfrtIcon">
                         <svg class="icon" aria-hidden="true">
                             <use xlink:href="#icon-touxiang"></use>
                         </svg>
                     </span>
                <input type="text" name="" id="identity" value="" placeholder="登录账号">
            </div>
            <div class="retfetInp">
                 <span class="retfrtIcon">
                         <svg class="icon" aria-hidden="true">
                             <use xlink:href="#icon-mima"></use>
                         </svg>
                     </span>
                <input type="password" name="" id="logPwd" value="" placeholder="密码">
            </div>
            <button type="" id="windowLoginBtn" class="myhregit">登录</button>
            <div class="retgifLine">
                <a href="http://www.mingyihui.net/member/member_tomod.html">忘记密码</a>
                <a href="http://passport.mingyihui.net/reg.html?refer=www&ReturnUrl=http://www.mingyihui.net/guahao/hospital_1302/">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-jiantou-you-shixin-yuanxing"></use>
                    </svg>
                    <p>免费注册</p>
                </a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
