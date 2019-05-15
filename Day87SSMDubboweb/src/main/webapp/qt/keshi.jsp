<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/14
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>

<html>
<head>
    <title>【西京医院科室列表】特色科室、科室介绍、重点科室西京医院科室电话 – 名医汇</title>
    <meta name="keywords"    content="西京医院科室列表，西京医院特色科室，西京医院科室介绍，西京医院重点科室，西京医院科室电话" />
    <meta name="description" content="名医汇为您提供西京医院科室列表，个科室个医生的挂号时间，特色科室、重点科室、西京医院科室电话等。百分百患者真实点评，打造科室医生排行榜，助您找到合适科室医生挂号就诊；" />
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
            <!--头部-->
            <!--已登录-->
            <div class="fl" style="display: none;" id="isLogin">
                <p class="welcome fl" style="margin-top: 14px; border: none;"></p>
                <div class="welcome fl" style="margin: 14px 0 0 10px; display: none">
                    <a href="javascript:;" id="doctorMsgBox"><i class="consulInfor"></i><p>温馨提示:您有<span style="color:red;" id="unreplynums">0</span>条待回复的咨询，立即查看></p></a>
                </div>
                <div class="clr"></div>
            </div>
            <!--未登录-->
            <div class="fl" style="display: none;" id="notLogin">
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






        <div class="section_list_left left">
            <ul class="section_nav clearfix">
                <li><a          href="/qt/index.jsp"             target="_self">概览</a></li>
                <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
                <li><a          href="/qt/guahao.jsp"          target="_self">预约挂号</a></li>
                <li><a   class="hover"       href="/getAllDepart" target="_self">医院科室</a></li>
                <li><a          href="/qt/jibing.jsp"      target="_self">擅长疾病</a></li>
                <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
                <li><a          href="/qt/dayi.jsp"  target="_self">患者答疑</a></li>
                <li><a          href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
            </ul>
            <div class="list_title3"> <a href="/hospital_1302.html" target="_self"><strong class="left"  style="font-size: 16px;">西京医院网上预约挂号</strong></a>
                <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/quick_search.js?v=20160924"></script>
                <div class="inquire right">
                    <form action="/selectDepartments" method="post">
                        <%--<input type="hidden" name="hid" id="hid" value="1302" />--%>

                        <input type="text"  id="search" name="dbname"  value="" placeholder="科室查询" />
                        <input  class="submit" type="submit" value="快速查询" />
                    </form >
                </div>
            </div>


            <div class="classify_list clearfix" id="selectBigDepart">

                <c:forEach items="${allDepartments}" var="depart">
                    <c:if test="${depart.dbid!=4}">
                         <h3 class="left">${depart.dbname}</h3>
                            <ul class="list_ul right">
                                <c:forEach items="${depart.departmentsSmallList}" var="s">
                                    <li> <a class="color_333" href="">${s.dsname}</a> <span class="color_999">(39人)</span> </li>

                                 </c:forEach>
                     </c:if>
                    </ul>
                </c:forEach>
            </div>
                <%--<h3 class="left">内科</h3>--%>
                <%--<ul class="list_ul right">--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_6.html">神经内科</a> <span class="color_999">(39人)</span> <span class="good_reputation">1471好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_1.html">消化内科</a> <span class="color_999">(59人)</span> <span class="good_reputation">1232好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_2743.html">消化外科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_68176.html">消化介入科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_68386.html">内分泌与代谢科</a> <span class="color_999">(3人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_4.html">内分泌科</a> <span class="color_999">(14人)</span> <span class="good_reputation">558好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_399.html">心脏内科</a> <span class="color_999">(46人)</span> <span class="good_reputation">4770好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_946.html">心身科</a> <span class="color_999">(18人)</span> <span class="good_reputation">529好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_38.html">心血管内科</a> <span class="color_999">(4人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_1605.html">感染病中心</a> <span class="color_999">(5人)</span> <span class="good_reputation">83好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_242.html">传染科</a> <span class="color_999">(15人)</span> <span class="good_reputation">75好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_3180.html">临床免疫科</a> <span class="color_999">(17人)</span> <span class="good_reputation">478好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_3.html">呼吸内科</a> <span class="color_999">(22人)</span> <span class="good_reputation">256好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_120.html">肾病内科</a> <span class="color_999">(11人)</span> <span class="good_reputation">1406好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_589.html">血液病科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_7.html">血液内科</a> <span class="color_999">(21人)</span> <span class="good_reputation">851好评</span> </li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="classify_list clearfix">--%>
                <%--<h3 class="left">外科</h3>--%>
                <%--<ul class="list_ul right">--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_11.html">泌尿外科</a> <span class="color_999">(27人)</span> <span class="good_reputation">503好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_69.html">普外科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_16.html">神经外科</a> <span class="color_999">(32人)</span> <span class="good_reputation">762好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_2792.html">神经外科 </a> <span class="color_999">(6人)</span> <span class="good_reputation">5好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_102.html">疼痛科</a> <span class="color_999">(12人)</span> <span class="good_reputation">40好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_26.html">麻醉科</a> <span class="color_999">(5人)</span> <span class="good_reputation">2好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_123.html">胃肠外科</a> <span class="color_999">(24人)</span> <span class="good_reputation">477好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_3182.html">烧伤与皮肤外科</a> <span class="color_999">(25人)</span> <span class="good_reputation">386好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_15.html">肝胆外科</a> <span class="color_999">(16人)</span> <span class="good_reputation">539好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_914.html">甲状腺乳腺外科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_277.html">心脏外科</a> <span class="color_999">(46人)</span> <span class="good_reputation">2424好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_33.html">胸外科</a> <span class="color_999">(8人)</span> <span class="good_reputation">95好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_21820.html">甲乳血管外科</a> <span class="color_999">(32人)</span> <span class="good_reputation">331好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_3181.html">血管内分泌外科</a> <span class="color_999">(21人)</span> <span class="good_reputation">1451好评</span> </li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="classify_list clearfix">--%>
                <%--<h3 class="left">妇产科</h3>--%>
                <%--<ul class="list_ul right">--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_19.html">妇产科</a> <span class="color_999">(33人)</span> <span class="good_reputation">922好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_54.html">妇科</a> <span class="color_999">(2人)</span> <span class="good_reputation">0好评</span> </li>--%>
                    <%--<li> <a class="color_333" href="/hospital_1302/department_125.html">产科</a> <span class="color_999">(1人)</span> <span class="good_reputation">0好评</span> </li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        </div>
        <!--科室右边内容-->
        <div  class="section_list_right right">
            <div id="advHospitalDepartmentRight" style="margin-bottom: 20px;width: 240px;">
            </div>
            <!--最新出诊-->  <!--最新出诊结束-->
            <!--医师资料-->  <div class="doctor border "> <a href="/doctor_685379.html"> <img class="on_line" src="http://www.mingyihui.net/templates/skins/red2017/images/on_line.png" alt="专家在线" />
            <div class="doctor_data clearfix"> <img class="doctor_logo left" src="/images/doctor2.jpg" alt="黄远桂" />
                <div class="doctor_name right">
                    <h3>黄远桂<span class="doctor_titles">( 主任医师、教授 )</span></h3>
                    <p>西京医院&nbsp;神经内科 <br/>
                        获得<span>1</span>好评</p>
                </div>
            </div>
        </a>
            <div class="doctor__introduction">
                <p>擅长：对神经内科常见及疑难病的诊疗有十分丰富的理论知识和临床实践经...</p>
            </div>
            <div class="registration">
                <a href="javascript:showLoginbox('http://www.mingyihui.net/service/choose_685379.html');" target="_self"  class="registration_a left on"  onclick=''>预约挂号</a>    <a href="javascript:showLoginbox('http://www.mingyihui.net/ask/consult/services.html?ddid=685379');" target="_self"  class="consulting right" >在线咨询</a>
            </div>
        </div>
            <!--医师资料结束-->
            <div id="adv_pr" class="myh-advertisement-pr"></div>
            <!--专家观点-->
            <div class="viewpoint border">
                <h3>专家观点</h3>
                <ul class="w278">
                    <li><a href="/article_20564.html" title="温暖六一，呵护脊柱侧弯患儿">温暖六一，呵护脊柱侧弯患儿</a></li>
                    <li><a href="/article_21920.html" title="脊柱侧弯术前halo头环牵引问答系列 ">脊柱侧弯术前halo头环牵引...</a></li>
                    <li><a href="/article_21921.html" title="抽脂术后皮肤会变得凹凸不平吗？">抽脂术后皮肤会变得凹凸不平吗...</a></li>
                    <li><a href="/article_21924.html" title="注意：脊柱侧弯只有这几种治疗方式！">注意：脊柱侧弯只有这几种治疗...</a></li>
                    <li><a href="/article_21925.html" title="脸上的油到底从何而来？">脸上的油到底从何而来？</a></li>
                    <li><a href="/article_22242.html" title="探秘眼袋不为人知的一面">探秘眼袋不为人知的一面</a></li>
                    <li><a href="/article_21804.html" title="节食运动还没瘦？减重手术让你告别肥胖">节食运动还没瘦？减重手术让你...</a></li>
                    <li><a href="/article_21799.html" title="非手术隆鼻方式有哪些？效果又怎么样？">非手术隆鼻方式有哪些？效果又...</a></li>
                </ul>

            </div>
            <!--专家观点结束-->
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
