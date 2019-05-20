<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/14
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>[西京医院预约挂号]怎么网上挂号-专家号-门诊预约挂号平台 – 名医汇</title>
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
            <c:if test="${curSuffer == null}">
            <div class="fl"  >
                <ul class="login-registration">
                    <li class="on "> <a href="/qt/denglu.jsp" >登录</a> </li>
                    <li class="on zhuce"> <a href="/qt/zhuce.jsp" >注册</a> </li>
                </ul>
                </c:if>
                <c:if test="${curSuffer != null}">
                <div class="fl"  >
                    <ul class="login-registration">
                        <li class="on "> <a href=>${curSuffer.suname}</a> </li>
                        <li class="on "> <a href="/loginOut" >退出</a> </li>
                        <li class="on zhuce"> <a href="qt/zhuce.jsp" >个人中心</a> </li>
                    </ul>
                    </c:if>

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
</script>
<!--导航e-->
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
</div>
<div class="myh-advertisement" id="advc1"></div>
<!-- 头部导航 -->

<link href="http://www.mingyihui.net/templates/skins/red2017/css/H_05.css?v=20170919" rel="stylesheet" type="text/css" />

<style>
    .illness_list ul.list_ul li{ width:auto;}
    .authentication,.bond-show {
        background: #66cc00!important;
        color:#fff;
        padding: 5px;
        text-align: center;
        font-size: 12px;
        cursor: pointer;
    }

    .authentication-popule {
        position:absolute;
        top:-140px;
        left: 150px;
        width: 280px;
        height: 140px;
        border-radius: 10px;
        border: 1px solid #d0d0d0;
        color: #989898;
        background: #fff;
        font-size: 12px;
        display: none;
    }

    .bond {
        position:absolute;
        top:-90px;
        left: 225px;
        width: 222px;
        height: 85px;
        border-radius: 10px;
        border: 1px solid #d0d0d0;
        color: #989898;
        background: #fff;
        font-size: 12px;
        display: none;
    }

    .authentication-popule h6,.bond h6 {
        text-align: center;
        font-size: 14px;
        line-height: 25px;
    }

    .authentication-popule p,.bond p {
        font-size: 12px;
        text-align: left;
        padding: 0 10px;
        line-height: 15px;
        padding-top: 5px;
    }
</style>

<div class="section_list w1200">
    <div class="title_h1" style="position:relative;">






        <div class="traffic_guide">
            <ul class="section_nav clearfix">
                <li><a          href="/qt/index.jsp"             target="_self">概览</a></li>
                <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
                <li><a     class="hover"    href="/guahao"          target="_self">预约挂号</a></li>
                <li><a          href="/getAllDepart" target="_self">医院科室</a></li>
                <li><a          href="/getAllIllness"      target="_self">擅长疾病</a></li>
                <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
                <li><a          href="/getAllConsult"  target="_self">患者答疑</a></li>
                <li><a          href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
            </ul>


            <div class="introduction_p">
            </div>
        </div>
    </div>

<%--流程--%>
<div class="yuyue" >
    <div class="yuyue_tit">预约挂号流程</div>
    <div class="yy_liucheng">
        <li>
            <div class="lc">
                <div class="lc_pic"><img src="http://www.mingyihui.net/templates/skins/red2017/images/step1.gif" width="22" height="22"/></div>
                <div class="lc_wz">1.选择预约医生</div>
            </div>
        </li>
        <li>
            <div class="lc">
                <div class="lc_pic"><img src="http://www.mingyihui.net/templates/skins/red2017/images/step2.gif" width="22" height="22"/></div>
                <div class="lc_wz">2.选择就诊时间</div>
            </div>
        </li>
        <li>
            <div class="lc">
                <div class="lc_pic"><img src="http://www.mingyihui.net/templates/skins/red2017/images/step3.gif" width="22" height="22"/></div>
                <div class="lc_wz">3.填写预约信息</div>
            </div>
        </li>
        <li>
            <div class="lc">
                <div class="lc_pic"><img src="http://www.mingyihui.net/templates/skins/red2017/images/step4.gif" width="22" height="22"/></div>
                <div class="lc_wz">4.收到挂号成功短信</div>
            </div>
        </li>
        <li id="bacno">
            <div class="lc">
                <div class="lc_pic"><img src="http://www.mingyihui.net/templates/skins/red2017/images/step5.gif" width="22" height="22"/></div>
                <div class="lc_wz">5.根据提示到医院就诊</div>
            </div>
        </li>
    </div>
</div>
<div class="illness_classify border">

    <div class="illness_list clearfix H_link"> <span class="list_h2">一级科室：</span>
        <ul class="list_ul list_list clearfix">
            <li class="  on"><a href="/guahao" target="_self">全部</a></li>

          <c:forEach items="${big}" var="b"  >
              <c:if test="${b.dbid != 4}" >
                   <li class="  "><a href="/getOneSmallId?dbid=${b.dbid}" target="_self">${b.dbname}</a></li>

              </c:if>
          </c:forEach>
        </ul>
        <a class="unfold border H_open" href="javascript:void(0);" target="_self"> 展开 </a> <a class="unfold border H_close H_contraction" href="javascript:;" target="_self"> 收缩</a>  </div>
    <div class="illness_list clearfix H_link"> <span class="list_h2">二级科室：</span>
        <ul class="list_ul list_list clearfix">
            <li class="  on"> <a href="/guahao" target="_self">全部</a> </li>
<c:forEach items="${small}" var="s">
    <c:if test="${s.dbid != 4}" >
            <li class=" "> <a href="/getOneSmallId?dbid=${s.dbid}" target="_self">${s.dsname}</a> </li>
    </c:if>
</c:forEach>
        </ul>
    </div>

    <div class="illness_list clearfix  H_link1"> <span class="list_h2"> 擅长疾病： </span>
        <ul class="list_ul clearfix">
            <li class="  on"> <a href="/guahao" target="_self">全部</a> </li>
            <c:forEach items="${small}" var="a">
                <c:forEach items="${a.illnessList}" var="ai" >
                <li class=" "> <a href="/getOneSmallId?dbid=${a.dbid}" target="_self">${ai.ilname}</a> </li>
                </c:forEach>
            </c:forEach>
        </ul>
        <a class="unfold border H_open H_open1" href="javascript:void(0);" target="_self"> 展开 </a> <a class="unfold border H_close H_contraction1" href="javascript:;" target="_self"> 收缩 </a>  </div>
</div>
</div>
<div class="qrcode-populBox" id="advHospitalGuahaoRight" style=" width: 240px;position: relative;top: -195px;right: -1200px;">
</div>
</div>
<div class="H-phone w1200">
    <div class="w1200 H_doc">
        <div class="H_doc_head">
            <ul>
                <li class="H_p"> 专家/医生 </li>
                <li class="H_d"> 擅长疾病 </li>
                <li class="H_t"> 出诊时间 </li>
            </ul>
        </div>
        <div class="H_doc_con">
            <c:forEach var="d" items="${allDoctor}" >
                 <c:if test="${d.departmentsSmall.dbid != 4}">
                <ul>
                    <li> <a href="Doctorxiangqing?did=${d.did}"> <img src="http://photo.orsoon.com/180610/EPS-180610_425/manyYFHNX9_small.jpg" class="fl H_p" />
                    </a>
                        <div class="H_d_down H_d fl"> <a href="Doctorxiangqing?did=${d.did}">
                            <h3 class="fl">${d.dname}</h3></a>
                            <Span class="fl doctor_titles">(${d.doctorRole.drname})
                                </Span> <small class="clr">${d.departmentsSmall.dsname}</small>
                            <dl>
                                <c:forEach items="${d.departmentsSmall.illnessList}" var="di">
                                <a href=""><dd class="on">${di.ilname}</dd></a>
                                </c:forEach>
                            </dl>
                        </div>

                        <div class="H_t_down H_t fl">
                            <table  >
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
                        <div class="H_date_down fr"> <span class="star star2"></span> <span class="starwz">88%</span>
                            <a href=""> 在线咨询 </a>
                            <a class="on" href="/yuyue?did=${d.did}"  >预约挂号</a>
                        </div>
                    </li>





                    </c:if>
        </c:forEach>
        </ul>
        </div>
    </div>
</div>

       <%-- <div class="H_doc_con">
            <ul>
                <li> <a href="/doctor_225702.html"> <img src="http://www.mingyihui.net/upload/photo/doctor/haodf_pIYBAFImrRGAX8PcAAF9ETMWnmM772_200_200_1.jpg" class="fl H_p" />
                <div class="H_ran ">NO.1</div>
            </a>
                <div class="H_d_down H_d fl"> <a href="/doctor_225702.html">
                    <h3 class="fl">吕安林</h3>
                </a> <Span class="fl doctor_titles">( 主任医师、副教授 )
                  </Span> <small class="clr">心脏内科</small>
                    <p class="H_bgt"> 擅长：高难复杂冠心病治疗，先天性心脏病介入诊治，起搏 </p>
                    <dl>
                        <a href="/doctor_225702/comment_GuanXinBing.html"><dd class="on">冠心病(72)</dd></a>                                                                                <a href="/doctor_225702/comment_XinJiGengSe.html"><dd class="on">心肌梗塞(6)</dd></a>                                        <a href="/doctor_225702/comment_XinZangBing.html"><dd class="on">心脏病(4)</dd></a>                                        <div class="clr"> </div>
                    </dl>

                </div>
                <div class="H_t_down H_t fl">
                    <table>
                        <tr>
                            <th>时间</th>
                            <th>周一</th>
                            <th>周二</th>
                            <th>周三</th>
                            <th>周四</th>
                            <th>周五</th>
                            <th>周六</th>
                            <th>周日</th>
                        </tr>
                        <tr>
                            <td><span>上午</span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span>下午</span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>专家门诊</td>
                        </tr>
                        <tr>
                            <td><span>夜间</span></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
                <div class="H_date_down fr"> <span class="star star2"></span> <span class="starwz">88%</span>
                    <a href=""> 在线咨询 </a>
                    <a class="on" href=""  >预约挂号</a>                  <!--<a href="javascript:showLoginbox('http://www.mingyihui.net/ask/consult/services.html?ddid=225702');" target="_self" >在线咨询</a><a href="javascript:showLoginbox('http://www.mingyihui.net/service/choose_225702.html');" target="_self"  class="on"  onclick=''>预约挂号</a>--></div>
            </li>


            </ul>
        </div>
</div>--%>
    <div class="footer">
        <div class="footer-pd">
            <div class="fl about-myh">
                <a href="http://www.mingyihui.net"></a>
            </div>
            <div class="fl about-line">
                <ul class="myh-line">
                    <li><a href="http://www.mingyihui.net/about.html"rel="nofollow" target="_blank">关于名医汇</a></li>
                    <li><a href="http://www.mingyihui.net/shenming.html"rel="nofollow" target="_blank">网站声明</a></li>
                    <li><a href="http://www.mingyihui.net/articlelist_32.html"rel="nofollow" target="_blank">媒体报道</a></li>
                    <li><a href="http://www.mingyihui.net/zhaopin.html"rel="nofollow" target="_blank">招聘启事</a></li>
                    <li><a href="http://www.mingyihui.net/partner.html"rel="nofollow" target="_blank">联系我们</a></li>
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







</body>
</html>
