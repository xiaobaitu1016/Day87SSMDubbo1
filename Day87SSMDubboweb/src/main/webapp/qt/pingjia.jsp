<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/14
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>就诊评价</title>
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/reset.css?v=20171017" />
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/style.css?v=20170729" />
    <link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/popup.css?v=20170726" />
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/hospital_1302/index.html">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/hospital_1302/index.html">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/hospital_1302/index.html">
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
<script type="text/javascript">uaredirect("http://m.mingyihui.net/hospital_1302/index.html");</script>
<base target="_blank">
<div id="adv_topecshop"></div>

<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/section_list.css" />
<link media="screen and (max-width:950px)" href="http://www.mingyihui.net/templates/skins/red2017/css/section_phone.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/style.js"></script>
<body>
<!--导航s-->
<link rel="stylesheet" href="http://www.mingyihui.net/templates/skins/red2017/css/header.css?v=20171018"/>
<div class="g_top">
    <div class="w1200 g_top_contant" >
        <div class="w1200 g_top_contant" >
            <!--头部-->
            <!--已登录-->
            <c:if test="${curSuffer == null}">
            <div class="fl"  >
                <ul class="login-registration">
                    <li class="on "> <a href="/qt/denglu.jsp" >登录</a> </li>
                    <li class="on zhuce"> <a href="/qt/zhuce.jsp" >注册</a> </li>
                </ul>
                </c:if><c:if test="${curSuffer != null}">
                <div class="fl"  >
                    <ul class="login-registration">
                        <li class="on "> <a href=>${curSuffer.suname}</a> </li>
                        <li class="on "> <a href="/loginOut" >退出</a> </li>
                        <li class="on zhuce"> <a href="/qt/personal.jsp" >个人中心</a> </li>
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



        <div class="section_list_left left">
            <ul class="section_nav clearfix">
                <li><a          href="/qt/index.jsp"             target="_self">概览</a></li>
                <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
                <li><a          href="/guahao"          target="_self">预约挂号</a></li>
                <li><a          href="/getAllDepart" target="_self">医院科室</a></li>
                <li><a          href="/getAllIllness"      target="_self">擅长疾病</a></li>
                <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
                <li><a          href="/getAllConsult"  target="_self">患者答疑</a></li>
                <li><a   class="hover"       href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
            </ul>
            <div class="individual_sharing">

                    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/doctor.js?v=20160924"></script>
                    <ul class="experience_ul">
                        <li style="font-size: 12px">
                            <div class="experience_right right ">
                                <p class="experience_name"style="width: 252px;"> 就诊医生： <a href="/doctor_225914.html">陈文生</a><span class="color_333"> (心脏外科 主任医师,教授) </span> &nbsp;&nbsp;&nbsp; </p><p class="experience_name"> 患者：<span class="color_333"></span>       &nbsp;&nbsp;&nbsp; </p>
                                <p class="experience_name"style="width: 170px"> 疾病： <span class="class"><a href="/YaJiXingGanRanXingXinNeiMoYan/" >亚急性感染性心内膜炎</a></span></p>
                                <div class="comment_p clearfix">
                                    <p> <span>看病过程：</span>陈主任临床经验丰富，及时诊断清楚我的病情，对我讲了这个病的严重性，及时安排手术，用他高超的医术拯救了我的生命，让我重获新生，我非常感激陈主任，谢谢您陈主任，您辛苦了，您对病人认真负责耐心的态度值得敬佩。<br><font color='#e72231'>评论来源：名医汇</font></p>
                                </div>
                                <div class="praise_time clearfix"> <a id="praise3087551" class="praise1" href='javascript:clickLike(3087551,8869336);' target="_self" title="感谢他帮助了我！">(0)</a> <span class="fr"> 2017/10/24 00:12 </span> </div>
                            </div>
                            <div class="clr"> </div>
                        </li>
                    </ul>

                </div>




            </div>

        <!-- 右边内容 -->
        <div class="section_list_right right">
            <div id="advHospitalDetailRight" style="margin-bottom: 20px;">
            </div>
            <!-- 分院信息end -->
            <!--最新出诊start-->

            <!--最新出诊end-->
            <!--医师资料start-->
            <div class="doctor border "> <a href="/doctor_685379.html"> <img class="on_line" src="http://www.mingyihui.net/templates/skins/red2017/images/on_line.png" alt="专家在线" />
                <div class="doctor_data clearfix"> <img class="doctor_logo left" src="/images/doctor_default155x155.jpg" alt="黄远桂" />
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


            <div class="clr"> </div>
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

