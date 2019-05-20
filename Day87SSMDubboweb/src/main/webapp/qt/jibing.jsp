<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/14
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<html>
<head>
    <title>【西京医院医生怎么样】医生介绍、主治疾病、专家门诊时间 西京医院预约挂号 - 名医汇</title>
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
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/hospital_1302/expert.html">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/hospital_1302/expert.html">
    <link rel="alternate" media="only screen and (max-width: 320px)" href="http://m.mingyihui.net/hospital_1302/expert.html">
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






        <div class="traffic_guide">
            <ul class="section_nav clearfix">
                <li><a          href="/qt/index.jsp"             target="_self">概览</a></li>
                <li><a          href="/qt/xiangqing.jsp"       target="_self">详细介绍</a></li>
                <li><a          href="/guahao"          target="_self">预约挂号</a></li>
                <li><a          href="/getAllDepart" target="_self">医院科室</a></li>
                <li><a      class="hover"      href="/getAllIllness"      target="_self">擅长疾病</a></li>
                <li><a          href="/qt/zhinan.jsp"  target="_self">预约指南</a></li>
                <li><a          href="/getAllConsult"  target="_self">患者答疑</a></li>
                <li><a          href="/qt/pingjia.jsp"  target="_self">就诊评价</a></li>
            </ul>

            <div class="illness_classify border" style="font-size: 12px">
                <div class="illness_list clearfix  H_link">
                    <div class="list_h2">二级科室：</div>


                    <ul class="list_ul list_list clearfix" >
                        <li class="  on" ><a href="http://www.mingyihui.net/hospital_1302/expert.html" target="_self">全部</a></li>
                        <c:forEach items="${allDoctor}" var="d">
                            <c:if test="${d.departmentsSmall.dsid!=7}">
                        <li class=" "><a href="selectByDsname?dsid=${d.dsid}" target="_self">${d.departmentsSmall.dsname}</a></li>

                         <c:if test="${d.departmentsSmall.dsid>7}" >
                        <li class="con_hidden "><a href="http://www.mingyihui.net/hospital_1302/expert_3.html" target="_self">$${d.departmentsSmall.dsname}</a></li>

                         </c:if>
                            </c:if>
                        </c:forEach>
                    </ul>

                    <a class="unfold border H_open" href="javascript:void(0);" target="_self">展开 </a> <a class="unfold border H_close H_contraction" href="javascript:;" target="_self">收缩</a>  </div>
                <div class="illness_list clearfix">
                    <div class="list_h2"> 医生职称：</div>
                    <ul class="list_ul clearfix">
                        <li class="  on"><a href="http://www.mingyihui.net/hospital_1302/expert.html" target="_self">全部</a></li>
                        <c:forEach items="${allDoctor}" var="dr">
                            <li class=" "><a href="selectByDrname?drid=${dr.drid}&&dsid=${dr.dsid}" target="_self">${dr.doctorRole.drname}</a></li>
                        </c:forEach>


                    </ul>
                    <a class="unfold border H_open H_open1" href="javascript:void(0);" target="_self">展开 </a> <a class="unfold border H_close H_contraction1" href="javascript:;" target="_self">收缩</a>
                </div>
            </div>

            <div class="inquire_doctor"> <strong class="left">擅长疾病</strong>
                <div class="inquire_input left">
                    <form action="selectIllness" method="post">
                        <input type="hidden" id="hid" value="1302" />
                        <input type="text" name="ilname" id="txtDisease" value="" placeholder="输入疾病名称搜索好评医生">
                        <input class="submit" type="submit" id="btnSkilled" value="快速查询">
                        <a href="/hospital_1302.html"  target="_self" style="font-size: 14px;color: #333;line-height: 25px;margin-left: 20px;">西京医院预约挂号</a>
                    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/quick_search.js?v=20160924"></script>
                    </form>
                </div>
            </div>
            <div id="list">
                <div class="illness_classify_list ">
                    <div class="ranking">
                        <p><span>41925</span>位病友分享了看病经验，点评<span>51</span>个科室<span>766 </span>位医生，得出 <span>1220</span>种疾病医生排名</p>
                    </div>
                    <ul>
                        <c:forEach items="${allIllness}" var="i">
                        <li class="clearfix">
                            <a href="/hospital_1302/expert_GuanXinBing.html" target="_self"><div class="classify_h3 left hscDisease">
                                <p class="color_333">${i.ilname}</p>
                                <span class="color_999" style="background: white ;color: black">(57人) ：</span></div></a>

                            <c:forEach items="${allDoctors}" var="d">
                                <c:if test="${d.dsid == i.dsid}">
                                    <div class="classify_name left">  <a class="color_333" href="Doctorxiangqing?did=${d.did}">${d.dname}</a><span class="yellow">(${d.doctorRole.drname})</span> </div>
                                </c:if>
                            </c:forEach>

                        </li>
                        </c:forEach>



                    </ul>
                </div>
                <div class="H_tra w1200" style="font-size: 12px">
                    <ul >
                        <li><a>1</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn2.html" target="_self">2</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn3.html" target="_self">3</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn4.html" target="_self">4</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn5.html" target="_self">5</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn2.html" target="_self">下一页</a></li>
                        <li><a href="http://www.mingyihui.net/hospital_1302/expert_pn61.html" target="_self">末页</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


</body>
</html>
