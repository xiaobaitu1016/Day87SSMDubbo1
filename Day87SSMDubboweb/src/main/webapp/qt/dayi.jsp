<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/15
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <title>患者答疑详情</title>
    <meta name="keywords"    content="西京医院科室列表，西京医院特色科室，西京医院科室介绍，西京医院重点科室，西京医院科室电话" />
    <meta name="description" content="名医汇为您提供西京医院科室列表，个科室个医生的挂号时间，特色科室、重点科室、西京医院科室电话等。百分百患者真实点评，打造科室医生排行榜，助您找到合适科室医生挂号就诊；" />
    <meta property="qc:admins" content="353120170365167110516654" />
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1" />
    <meta name="360-site-verification"    content="0e5c99f641ba942188b330e4ac953605" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/reset.css?v=20171017" />
    <link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/doctor_details.css?v=20171028" />
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
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/hospital_1302/departments.html">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/hospital_1302/departments.html">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/hospital_1302/departments.html">
    <meta name="applicable-device" content="pc">
    <meta http-equiv="Cache-Control" content="no-transform "/>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-4047296578432934",
            enable_page_level_ads: true
        });
    </script>
</head>
<script language=javascript> var t_s1 = new Date().getTime(); </script>
<script src="http://www.mingyihui.net/templates/default/js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("http://m.mingyihui.net/hospital_1302/departments.html");</script>
<base target="_blank">
<div id="adv_topecshop"></div>

<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/section_list.css?v=20160924" />
<link media="screen and (max-width:640px)" href="http://www.mingyihui.net/templates/skins/red2017/css/section_phone.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/style.js"></script>
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
                        <li class="on zhuce"> <a href="/qt/zhuce.jsp" >个人中心</a> </li>
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
    var loginReturnUrl=document.location.href;
    function jumpLogin(){
        var ReturnUrl="http://passport.mingyihui.net/login_pc.html?ReturnUrl="+loginReturnUrl;
        window.location.href=ReturnUrl;
    }
    function jumpRegister(){
        var ReturnUrl="http://passport.mingyihui.net/login_pc.html?ReturnUrl="+loginReturnUrl;
        window.location.href=ReturnUrl;
    }
    allCitys='';
    hotCitys='';
    $(document).ready(function() {
        $.ajax({
            url:"http://www.mingyihui.net/api_doctorsite.php?mode=getLoginUserInfo",
            type:'post',
            dataType:'json',
            xhrFields: {
                withCredentials: true
            },
            crossDomain: true,
            success:function(data){
                if(data.islogin==1){
                    if(data.userinfo['kind']==1&&data.userinfo['ddid']>0){
                        getDoctorReplys();
                        $('#isLogin').children('p').html('你好,'+data.userinfo.truename+'医生，欢迎回到名医汇！');
                    }else{
                        if(data.userinfo.truename!=''&&data.userinfo.truename!=null){
                            $('#isLogin').children('p').html('你好,'+data.userinfo.truename+',欢迎回到名医汇！');
                        }else{
                            $('#isLogin').children('p').html('你好,欢迎回到名医汇！');
                        }
                    }
                    $('#isLogin').show();
                    $('#topRight').prepend('<li class="fl"><a href="http://www.mingyihui.net/member/member_info.html" title="个人中心">个人中心</a> </li><li class="fl"><a href="javascript:;" id="btnLogout" title="退出">退出</a> </li>');
                }else{
                    $('#notLogin').show();
                }
            }

        })

        function getDoctorReplys(){
            $.ajax({
                url: "http://www.mingyihui.net/api_doctorsite.php?mode=getDoctorMsg",
                type:'post',
                dataType:'json',
                xhrFields: {
                    withCredentials: true
                },
                crossDomain: true,
                success:function(data){
                    var doctordomain=data.doctordomain;
                    var unreplynums=data.unreplynums;
                    if(doctordomain!=''&&unreplynums!=''){
                        $('#doctorMsgBox').attr('href',data.doctordomain+'/service.html?replystatus=2');
                        $('#unreplynums').html(unreplynums);
                        $('#doctorMsgBox').show();
                    }
                }
            })
        }

    })
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
    <div class="clr"></div>
</div>

<!--搜索栏-->
<!-- 头部导航 -->
<link href="http://www.mingyihui.net/templates/skins/red2017/css/H_05.css?v=20170919" rel="stylesheet" type="text/css" />
<!-- 头部导航 -->
<div class="H_nav w100 "> <a class="phone_nav" href="javascript:;" target="_self"></a>
    <div class="w1200">
        <ul id="nav" class="fl" style="position: relative;">
            <li> </li>
            <li> </li>
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

    .td1{
        color: grey;
    }
    #doctorImg{
        height: 80px;
        width: 80px;
    }
    .titleclass{
        height: 100px;
        width: 900px;
    }
    .middleDiv{
        width:900px;
        height: 450px;
        float: left;
    }



    #rightBody{
        float: right;
        position: relative;
        margin-top: 30px;
        margin-right: 30px;
    }
    .doctorDiv{
        float: left;
        width: 450px;
        position: absolute;
        margin-left:50px;
    }
    .sufferDiv{
        float: right;
        width: 450px;
        position: absolute;
        margin-right: 50px;
    }
</style>





<div class="section_list w1200">
    <div class="title_h1" style="position:relative;">
        <div class="section_list_left left">
            <ul class="section_nav clearfix">
                <li><a          href="/qt/index.jsp"             target="_self">概览</a></li>
                <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
                <li><a          href="/guahao"          target="_self">预约挂号</a></li>
                <li><a          href="/getAllDepart" target="_self">医院科室</a></li>
                <li><a          href="/getAllIllness"      target="_self">擅长疾病</a></li>
                <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
                <li><a   class="hover"       href="/getAllConsult"  target="_self">患者答疑</a></li>
                <li><a          href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
            </ul>
            <!--面包屑-->
            <div class="crumbs w1200" style="font-size: large"> <a href="http://www.mingyihui.net" style="font-size: medium">名医汇</a>&nbsp;&gt;&nbsp; <a href="http://www.mingyihui.net/ask/"style="font-size: medium">专家咨询</a>&nbsp;&gt;&nbsp;<a href="http://www.mingyihui.net/ask/newquestion.html" style="font-size: medium"> 问题大全</a>&nbsp;&gt;&nbsp;希望医生帮帮忙吧</div>
            <!--面包屑结束-->
            <div class="middleDiv">
                <%--<div class="cyr1 fl" class="titleclass">--%>
                    <%--<h1 class="title_h1" style="color: grey">希望医生帮帮忙吧</h1>--%>
                    <%--&lt;%&ndash;<h3 style="color: grey">患者咨询</h3>&ndash;%&gt;--%>
                <%--</div>--%>
                <c:forEach items="${allConsultByExample}" var="c">


                <hr/>
                <div style="border: darkgray">
                    <table>
                        <tr>
                            <td class="td1">基本信息:</td>
                            <td>${c.suffer.age}岁&nbsp;&nbsp;${c.suffer.sex}</td>
                            <td class="td1"><f:formatDate value="${c.time}" pattern="yyyy-MM-dd"></f:formatDate> </td>
                        </tr>
                        <tr>
                            <td class="td1"><br/>病情描述：</td>
                            <td><br/>${c.descr}</td>
                        </tr>
                        <div  class="doctorDiv">
                        <tr>
                            <td><br/><img id="doctorImg" src="/images/doctor2.jpg"/></td>
                            <td style="color: #00B83F"><br/>${c.doctor.dname}
                                <a href="" >(西京医院-${c.doctor.departmentsSmall.dsname})</a>医生回复：
                    <c:forEach items="${allConsultAnswer}" var="ca" begin="0" end="1">
                               <c:if test="${c.cid==ca.cid}">
                                   <c:if test="${ca.role=='医师'}">

                                        <p style="font-size: small;color: black">${ca.descr}</p>
                                   </c:if>
                               </c:if>
                    </c:forEach>
                            </td>

                        </tr>
                        </div>
                        <div id="hiddenDiv">
                            <div class="sufferDiv">
                        <tr>
                            <c:forEach items="${allConsultAnswer}" var="ca" begin="1" end="2">
                            <c:if test="${c.cid==ca.cid}">
                            <c:if test="${ca.role=='患者'}">
                            <td> 患者回复：</td>
                            <td>
                                <p>${ca.descr}</p>
                            </td>
                            </c:if>
                            </c:if>
                            </c:forEach>
                        </tr>
                                </div>
                            <div  class="doctorDiv">
                        <tr>
                            <c:forEach items="${allConsultAnswer}" var="ca" begin="2" end="3">
                            <c:if test="${c.cid==ca.cid}">
                            <c:if test="${ca.role=='医师'}">
                                <td style="color: #00B83F">  医生回复：</td>
                                <td>
                                    <p style="font-size: small;color: black">${ca.descr}</p>
                                </td>
                            </c:if>
                            </c:if>
                            </c:forEach>
                        </tr>
                            </div>
                        </div>

                        <tr>
                            <td style="width:100px;color: red;font-size: x-small"><br/>评论来源：名医汇</td>

                        </tr>
                    </table>
                </div>


                </c:forEach>
            </div>
            <%--<!--患者咨询-->--%>
            <%--<div class="patient_ques  <ul class="question_ul">--%>
                    <%--<li> <a href=""> <i class="expert_i"> </i>--%>
                        <%--<a href="http://www.mingyihui.net/ask/q/consult_417768.html">希望医生帮帮忙吧</a>--%>
                        <%--<span class="fr ex_c" style="background: white">2016/10/30 20:08</span>--%>
                        <%--<div class="clr"> </div>--%>
                        <%--<p> 经常在家，感觉头痛欲裂，左眼不管看什么东西都看不见。 </p>--%>
                    <%--</a> </li>--%>
                    <%--<li> <a href=""> <i class="expert_i"> </i>--%>
                        <%--<a href="http://www.mingyihui.net/ask/q/consult_345217.html">昏迷期间能不能转院</a>--%>
                        <%--<span class="fr ex_c" style="background: white">2016/08/27 19:07</span>--%>
                        <%--<div class="clr"> </div>--%>
                        <%--<p> 脑出血出血量9毫升，昏迷十几个小时，目前转院有危险吗？ </p>--%>
                    <%--</a> </li>--%>

                <%--</ul>--%>

                <%--<div> </div>--%>
                <%--<div class="patient_title clearfix">--%>



                <%--</div>--%>







        </div>
    </div>



        </div>
<div style="float: right ;position: absolute;margin-top: -510px;margin-left: 1000px">
    <div class="section_list_right right">

    <!--擅长同类疾病医生start-->
        <div class="recommend border">
            <h3> 擅长癫痫医生 </h3>
                 <ul class="recommend_nav">
                        <li id="recommend_li1" class="on"> <a href="javascript:;" target="_self"> 本院 </a> </li>
                        <li id="recommend_li2"> <a href="javascript:;" target="_self"> 本市 </a> </li>
                            <li id="recommend_li3"> <a href="javascript:;" target="_self"> 全国 </a> </li>
        <div class="clr"> </div>
                 </ul>
                <ul class="recommend_ul" id="recommend1_ul">
                     <li> <span class="ranking1 fl">NO.1</span>
            <div class="ranking_right fr"> <a href="/doctor_685379.html"> 本院  黄远桂 </a>
                <p> <span class="green"> 77% </span> 好评率， <span class="green">37</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.2</span>
            <div class="ranking_right fr"> <a href="/doctor_225751.html"> 本院  江文 </a>
                <p> <span class="green"> 92% </span> 好评率， <span class="green">55</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.3</span>
            <div class="ranking_right fr"> <a href="/doctor_225942.html"> 本院  王彦刚 </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">3</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.4</span>
            <div class="ranking_right fr"> <a href="/doctor_225750.html"> 本院  刘永红 </a>
                <p> <span class="green"> 91% </span> 好评率， <span class="green">124</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.5</span>
            <div class="ranking_right fr"> <a href="/doctor_225758.html"> 本院  韩军良 </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">2</span>人点评 </p>
            </div>
        </li>
    </ul>
    <ul class="recommend_ul" id="recommend2_ul">
        <li> <span class="ranking1 fl">NO.1</span>
            <div class="ranking_right fr"> <a href="/doctor_685379.html">黄远桂</a> <a href="/hospital_1302.html">西京医院 </a>
                <p> <span class="green"> 77% </span> 好评率， <span class="green">37</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.2</span>
            <div class="ranking_right fr"> <a href="/doctor_225751.html">江文</a> <a href="/hospital_1302.html">西京医院 </a>
                <p> <span class="green"> 92% </span> 好评率， <span class="green">55</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.3</span>
            <div class="ranking_right fr"> <a href="/doctor_225942.html">王彦刚</a> <a href="/hospital_1302.html">西京医院 </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">3</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.4</span>
            <div class="ranking_right fr"> <a href="/doctor_225750.html">刘永红</a> <a href="/hospital_1302.html">西京医院 </a>
                <p> <span class="green"> 91% </span> 好评率， <span class="green">124</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.5</span>
            <div class="ranking_right fr"> <a href="/doctor_225758.html">韩军良</a> <a href="/hospital_1302.html">西京医院 </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">2</span>人点评 </p>
            </div>
        </li>
    </ul>
    <ul class="recommend_ul" id="recommend3_ul">
        <li> <span class="ranking1 fl">NO.1</span>
            <div class="ranking_right fr"> <a href="/doctor_44.html">何裕新</a> <a href="/hospital_13.html">广州军区总医院 </a>
                <p> <span class="green"> 0% </span> 好评率， <span class="green">0</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.2</span>
            <div class="ranking_right fr"> <a href="/doctor_1603.html">陈宝田</a> <a href="/hospital_4.html">南方医科大学南方医... </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">1</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking1 fl">NO.3</span>
            <div class="ranking_right fr"> <a href="/doctor_921.html">何馨</a> <a href="/hospital_12.html">广州市妇女儿童医疗... </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">2</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.4</span>
            <div class="ranking_right fr"> <a href="/doctor_862.html">陈卓铭</a> <a href="/hospital_15.html">暨南大学附属第一医... </a>
                <p> <span class="green"> 100% </span> 好评率， <span class="green">1</span>人点评 </p>
            </div>
        </li>
        <li> <span class="ranking2 fl">NO.5</span>
            <div class="ranking_right fr"> <a href="/doctor_861.html">陈裕斌</a> <a href="/hospital_15.html">暨南大学附属第一医... </a>
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
