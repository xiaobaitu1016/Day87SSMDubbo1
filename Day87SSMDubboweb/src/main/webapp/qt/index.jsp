<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/13
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <meta charset="utf-8">
    <title>西京医院网上预约挂号-专家门诊-电话在线咨询 - 名医汇</title>
    <meta name="keywords"    content="西京医院，，西京医院挂号，西京医院预约挂号，西京医院网上预约，西京医院网上预约挂号，西京医院网上挂号预约，西京医院专家号" />
    <meta name="description" content="名医汇为您提供西京医院网上预约挂号、专家门诊、在线咨询、电话预约、在线问医生等就医服务，百万患者在线分享就医经验及医生疗效口碑评价，助您第一时间快速轻松挂上西京医院专家号。" />
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
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/hospital_1302.html">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/hospital_1302.html">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/hospital_1302.html">
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
<script type="text/javascript">uaredirect("http://m.mingyihui.net/hospital_1302.html");</script>
<base target="_blank">
<div id="adv_topecshop"></div>

<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/overview.css?v=20171026" />
<link rel="stylesheet" type="text/css" href="http://www.mingyihui.net/templates/skins/red2017/css/my_share.css?v=20160924" />
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/style.js?v=20160924"></script>
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/hospital_doc.js?v=20160924"></script>
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

<!-- 头部导航 -->
<div class="H_nav w100 "> <a class="phone_nav" href="javascript:;" target="_self"></a>
    <div class="w1200">
        <%--<ul id="nav" class="fl" style="position: relative;">
            <li> <a href="http://www.mingyihui.net" rel="nofollow" title="名医汇">首页</a> </li>
            <li> <a  href="/hospitallist.html" title="找医院">详细介绍</a> </li>
            <li> <a  href="/doctors/" title="找医生">预约挂号</a> </li>
            <li> <a href="http://www.mingyihui.net/top.html" title="名医排行榜">医院科室</a> </li>
            <li> <a href="http://www.mingyihui.net/article_9206.html" title="医院/机构入住">预约指南</a></li>
        </ul>--%>
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
    <%--<div class="title_h1" style="position:relative;">
        &lt;%&ndash;<h1 class="hospital_title">西京医院</h1>
        <span>三级甲等</span>
        <span>公立</span>&ndash;%&gt;

        <div class="authentication-popule"><h6>认证说明</h6><p>1、名医汇新增绿色认证标志、用于识别医院资质；</p><p>2、拥有绿色标志的医院，意味着该医院经过名医汇审核，且确认拥有正规营业执照及医疗机构执业许可证；</p><p>3、患友可以放心享受入驻名医汇的绿色医院所提供的就医服务；</p></div><div class="bond"><h6>保证金说明</h6><p>该医院已于名医汇平台缴纳安全保证金，若出现危害用户利益的行为，用户可申请赔偿。</p></div></div>--%>
    <div class="section_list_left left">
        <ul class="section_nav clearfix">
            <li><a class="hover"         href="/qt/index.jsp"             target="_self">概览</a></li>
            <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
            <li><a          href="/guahao"          target="_self">预约挂号</a></li>
            <li><a          href="/getAllDepart" target="_self">医院科室</a></li>
            <li><a          href="/getAllIllness"      target="_self">擅长疾病</a></li>
            <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
            <li><a          href="/getAllConsult"  target="_self">患者答疑</a></li>
            <li><a          href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
        </ul>


        <script type="application/ld+json">
            {
                "@context": "https://ziyuan.baidu.com/contexts/cambrian.jsonld",
                "@id": "http://www.mingyihui.net/hospital_1302.html",
                "appid": "1552221263695832",
                "title": "西京医院网上预约挂号-专家门诊-电话在线咨询 ",
                "images": [
                    "http://www.mingyihui.net/upload/1503/27/1352548077.jpg"
                ],
                "description": "名医汇为您提供西京医院网上预约挂号、专家门诊、在线咨询、电话预约、在线问医生等就医服务，百万患者在线分享就医经验及医生疗效口碑评价，助您第一时间快速轻松挂上西京医院专家号。",
                "pubDate": "2011-12-24T15:48:56",
                "upDate": "2018-08-29T09:45:31"
            }
        </script>
        <!--概览内容-->
        <div class="overview w100 clearfix">
            <div class="overview_img left"> <img src="http://www.mingyihui.net/upload/1503/27/1352548077.jpg" alt="西京医院" />
            </div>
            <div class="overview_right right">
                <div class="title_h1" style="position:relative;">
                    <h1 class="hospital_title">西京医院</h1>
                    <span>三级甲等</span>
                    <span>公立</span>
                </div>

                <div class="w100 clearfix"> <span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</span>
                    <p class="overview_p">陕西省西安市长乐西路15号  </p>
                </div>
                <%--<div class="w100 clearfix"> <span>行车路线：</span>
                    <p class="overview_p">                 乘坐4、10、11、13、15、38、4... <a href="/hospital_1302/traffic.html">详情&gt;</a>  </p>
                </div>--%>
                <div class="w100 clearfix"> <span>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</span>
                    <p class="overview_p">029-84775507</p>
                </div>
                <div class="w100 clearfix"> <span>特色专科：</span>
                    <p class="overview_p"> 无 </p>
                </div>
                <div class="w100 clearfix"> <span>医院简介：</span>
                    <p class="overview_p">                 空军军医大学第一附属医院西京医院坐落在美丽的古都西安，原为为第四军医大学第一附属医院，前身是1939年延安抗战...<a href="/hospital_1302/index.html">详情&gt;</a>  </p>
                </div>
                <div class="clr"></div>
                <div class="registration left hospitalPhoneClick"></div>
                <p class="right">已有<span>4952</span>位病友咨询本院专家</p>

                <%--<div class="doctorprofile-r">
                    <div class="dimensional-hints">
                    </div>
                </div>--%>
            </div>
        </div>
        <!-- 预约流程 -->
        <div class="yuyue">
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
        <!-- 预约流程结束 -->
        <!-- 智能推荐有号名医start -->
        <!--  -->

        <script>
            $(function(){
                $('.H_online_expert_change').hover(function(){
                    $('.H_online_expert_change').css('color','#e72231');
                    $('.H_online_expert_change i').css({
                        "background":"url('./templates/skins/red2017/images/refresh_red.png')","background-size":"cover"
                    });
                },function(){
                    $('.H_online_expert_change').css('color','#aaa');
                    $('.H_online_expert_change i').css({
                        "background":"url('./templates/skins/red2017/images/refresh.png')","background-size":"cover"
                    });
                });
            });
            // 多点执业推荐医生
            $('.H_online_expert_change').on('click',function(){
                $(".recommendDoctor").stop().hide();
                var length =3;
                $.post('/api_recommend_doctor.php',{
                    cityid:cityid,provid:provid,length:length
                },function(data){
                    if(data != ""){
                        var htm = "";
                        for(var i=0;i<data.length;i++){
                            htm += ' <li>\
              <img class="on_line" src="'+IMGURL+'/images/xiquehao.png" alt="名医推荐" />\
              <div class="clr"></div>\
              <div class="H_bri"><a href="/doctor_'+data[i].ddid+'.html"><img src="'+PICURL;
                            if(data[i].ddpic=='' || data[i].ddpic==null){
                                htm += '/images/doctor_default155x155.jpg" alt="'+data[i].ddname+'" class="fl"></a>';
                            }else{
                                htm +=data[i].ddpic+'" alt="" class="fl"></a>';
                            }
                            htm += '<div class="H_bri_right fr">\
                  <h4 class="fl"><a href="/doctor_'+data[i].ddid+'.html">'+data[i].ddname+'</a></h4>\
                  <span class="fl doctor_titles">'+data[i].titles+'</span>\
                  <p>患者好评：<span class="star star'+data[i].starnum+'"></span><span class="starwz">'+data[i].goodrate+'%</span></p>\
                  <small><a href="/hospital_'+data[i].hid+'.html">'+data[i].htitle+'</a>&nbsp;<a href="/hospital_'+data[i].hid+'/department_'+data[i].new_did+'.html">'+data[i].dtitle+'</a></small> </div>\
                <div class="clr"></div>\
              </div>';
                            if(data[i].skilled == ""){
                                htm += '<p class="H_fri">擅长：医生未填写擅长</p>';
                            }else{
                                htm += '<p class="H_fri">擅长：'+data[i].skilled+'</p>';
                            }

                            htm +=' <Div class="border">\
             <a href="javascript:showLoginbox(\'http://www.mingyihui.net/ask/consult/services.html?ddid='+data[i].ddid+'\');" target="_self" class="active">在线咨询</a>';
                            if(data[i].canphone){
                                htm+='<a href="\'http://www.mingyihui.net/service/phone_'+data[i].ddid+'.html" target="_blank" class="active" rel="nofollow"><i style="background: url(http://www.mingyihui.net/new.gif);width: 46px;height: 22px;position:absolute;top: -10px;left: 98px;"></i>电话咨询</a>'
                            }else{
                                htm+='<a class="on" rel="nofollow">电话咨询</a>';
                            }
                            htm+='<a href="javascript:showLoginbox(\'http://www.mingyihui.net/service/choose_'+data[i].ddid+'.html\');" target="_self"  class="active" >预约挂号</a>\
                <div class="clr"></div>\
              </Div>\
            </li>';
                        }
                        $('.recommendDoctor').html(htm);
                    }
                },'json');
                $(".recommendDoctor").stop().show(100);
                // new ZouMa().PlayRight();
            });
            // function ZouMa() {
            //     this.PlayRight = function () {
            //       var  w = $(".recommendDoctor").width();
            //       $(".recommendDoctor").stop().animate({
            //         marginLeft:"-"+w+"px"
            //     },600,function(){
            //           $(".recommendDoctor").css({
            //                 marginLeft:"0px"
            //             });
            //       })
            //     }
            // }
        </script>


    </div>
        <div class="section_list_right right">
            <!-- 红包 -->


            <!--好评医生排名-->
            <div class="ranking_tb border">
                <h3>好评医生排名</h3>
                <table border="0" >
                    <tr>
                        <th></th>
                        <th>医生</th>
                        <th>所属科室</th>
                        <th>好评数</th>
                    </tr>
                    <tr>
                        <td class="color_06bae0">1</td>
                        <td><a href="/doctor_225702.html" title="吕安林">吕安林</a></td>
                        <td><a href="/hospital_1302/department_399.html" title="心脏内科">心脏内科</a></td>
                        <td><a class="gdVot" href="/doctor_225702.html" title="吕安林">119</a></td>
                    </tr>
                    <tr>
                        <td class="color_06bae0">2</td>
                        <td><a href="/doctor_225734.html" title="孙秉中">孙秉中</a></td>
                        <td><a href="/hospital_1302/department_7.html" title="血液内科">血液内科</a></td>
                        <td><a class="gdVot" href="/doctor_225734.html" title="孙秉中">357</a></td>
                    </tr>
                    <tr>
                        <td class="color_06bae0">3</td>
                        <td><a href="/doctor_226002.html" title="刘贺亮">刘贺亮</a></td>
                        <td><a href="/hospital_1302/department_11.html" title="泌尿外科">泌尿外科</a></td>
                        <td><a class="gdVot" href="/doctor_226002.html" title="刘贺亮">143</a></td>
                    </tr>
                    <tr>
                        <td class="color_999">4</td>
                        <td><a href="/doctor_226129.html" title="李春英">李春英</a></td>
                        <td><a href="/hospital_1302/department_21.html" title="皮肤科">皮肤科</a></td>
                        <td><a class="gdVot" href="/doctor_226129.html" title="李春英">687</a></td>
                    </tr>
                    <tr>
                        <td class="color_999">5</td>
                        <td><a href="/doctor_226131.html" title="刘斌">刘斌</a></td>
                        <td><a href="/hospital_1302/department_21.html" title="皮肤科">皮肤科</a></td>
                        <td><a class="gdVot" href="/doctor_226131.html" title="刘斌">259</a></td>
                    </tr>
                    <tr>
                        <td class="color_999">6</td>
                        <td><a href="/doctor_226133.html" title="马翠玲">马翠玲</a></td>
                        <td><a href="/hospital_1302/department_21.html" title="皮肤科">皮肤科</a></td>
                        <td><a class="gdVot" href="/doctor_226133.html" title="马翠玲">138</a></td>
                    </tr>
                </table>
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
</body>
</html>


