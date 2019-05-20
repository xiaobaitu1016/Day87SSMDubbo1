<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/20
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta name="keywords"    content="myhvqcu1557707088的个人信息,名医汇" />
    <meta name="description" content="myhvqcu1557707088的个人信息-名医汇" />
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
    <script type="text/javascript" src="static/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/stat.js?v=20160924"></script>
    <meta name="mobile-agent" content="format=html5;url=http://m.mingyihui.net/member/member_info.html">
    <meta name="mobile-agent" content="format=xhtml;url=http://m.mingyihui.net/member/member_info.html">
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
<base target="_blank">
<div id="adv_topecshop"></div>

<link rel="stylesheet" href="http://www.mingyihui.net/templates/default/css/grzx.css" type="text/css">
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
        <ul id="nav" class="fl" style="position: relative;">

        </ul>
        <ul class="fr">

            <li> <a href="/service/" title="预约挂号" rel="nofollow">预约挂号</a> </li>
            <li> <a href="http://www.mingyihui.net/ask" title="专家咨询">专家咨询</a> </li>
        </ul>
        <div class="clr"></div>
    </div>
</div>
<div class="myh-advertisement" id="advc1"></div>
<!-- 头部导航 -->

<script type="text/javascript" src="http://www.mingyihui.net/templates/default/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="http://www.mingyihui.net/templates/default/js/pcasunzip.js"></script>
<div class="main clearfix">
    <div class="layA">
        <div class="tou">
            <a href="/member/member_photo.html" target="_self" class="touImg">
                <img src="http://pic.51yuansu.com/pic3/cover/01/69/80/595f67bf2026f_610.jpg" style="width: 120px;height: 120px">
                <i class="shadow"></i>
                <i class="tit"><em></em> 修改头像</i>
            </a>
            <h2>myhvqcu1557707088</h2>
            <p>欢迎来到名医汇</p>
        </div>

        <ul class="left-nav"  id="left_nav">

            <li><a  href=""   target="_self" id="nu1"  onclick="num(this);" type="qt/index.jsp"><i class="icon2"></i><span>我的医生</span></a></li>
            <li><a  href=""   target="_self" id="nu2"><i class="icon2"></i><span>预约挂号</span></a></li>
            <li><a  href=""   target="_self" id="nu3"><i class="icon9"></i><span>陪诊服务</span></a></li>
            <li><a  href=""   target="_self" id="nu4"><i class="icon6"></i><span>账号设置</span></a></li>
        </ul>
    </div>
    <div class="layBC" id="layBCD" style="height: 372px;">

    </div>
</div>
<div id="Jtips" class="messtips"></div>


<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/check.js?v=20160924"></script>
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/doctor_reg.js?v=20171019"></script>
<script src="http://passport.mingyihui.net/templates/skins/red2017/pc/js/alert.js?v=20170832"></script>
<script src="http://www.mingyihui.net/templates/skins/red2017/js/gt.js?v=20181127"></script>
<script type="text/javascript" src="http://www.mingyihui.net/templates/skins/red2017/js/login1.js?v=20181130"></script>
<style>
    .footer {
        width: 100%;
        border-top: 1px solid #ddd;
        overflow: hidden;
    }

    .footer-pd {
        width: 1200px;
        padding: 30px 0;
        margin: 0 auto;
        overflow: hidden;
    }

    .about-myh {
        width: 25%;
        height: 100px;
    }


    .about-line {
        width: 50%;
    }

    .myh-line {
        width: 77%;
        padding-bottom: 30px;
    }

    .myh-line li {
        float: left;
        padding: 0 20px;
        border-right: 1px solid #ccc;
    }

    .myh-line li:last-child {
        border-right: 0;
        padding-right: 0;
    }

    .myh-line li a {
        color: #333;
    }

    .about-line, .about-myh {
        height: 100px;
        border-right: 1px solid #e8e8e8;
    }

    .about-line p {
        padding-left: 90px;
        line-height: 1.8;
        color: #999;
    }

    .about-myh a {
        display: block;
        width: 100%;
        height: 100%;
        background: url(http://www.mingyihui.net/templates/skins/red2017/images/about-myh.png) center no-repeat;
    }

    .footer-email,
    .footer-law {
        padding: 4px 0 0 52px;
        height: 44px;
        color: #6c6d70;
        line-height: 20px;
        width: 155px;
        margin-left: 85px;
    }

    .footer-email {
        background: url(http://www.mingyihui.net/templates/skins/red2017/images/888_25.jpg) left center no-repeat;
        margin-bottom: 10px;
    }

    .footer-law {
        background: url(http://www.mingyihui.net/templates/skins/red2017/images/888_31.jpg) left center no-repeat
    }

    .cooperative-partner {
        padding-bottom: 30px;
    }

    .cooperative-partner p {
        padding: 15px 0;
        border-bottom: 1px solid #eee;
        font-size: 24px;
    }

    .cooperative-partner ul {
        padding: 25px 0;
        overflow: hidden;
    }

    .cooperative-partner ul li {
        padding-right: 115px;
        float: left;
    }
</style>


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
<script type="text/javascript">

    function num(data) {
        var t=data.type;
        alert(t);
        $("#layBCD").append("<iframe src="+t+"><iframe>");
            }

</script>
</body>
</html>




