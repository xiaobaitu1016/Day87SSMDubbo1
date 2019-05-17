<%--
  Created by IntelliJ IDEA.
  User: 29476
  Date: 2019/5/13
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="http://localhost:8088/css/layui.css" media="all" />
    <link rel="stylesheet" href="http://localhost:8088/font-awesome/css/font-awesome.min.css" media="all" />
    <link rel="stylesheet" href="http://localhost:8088/css/app.css" media="all" />
    <link rel="stylesheet" href="http://localhost:8088/css/themes/default.css" media="all" id="skin" kit-skin />
</head>

<body class="kit-theme">
<div class="layui-layout layui-layout-admin kit-layout-admin">
    <div class="layui-header">
        <div class="layui-logo"><b>西京医院后台管理系统</b></div>
        <div class="layui-logo kit-logo-mobile"></div>
        <ul class="layui-nav layui-layout-left kit-nav" lay-filter="kitNavbar" kit-navbar>
            <li class="layui-nav-item">
                <a href="javascript:;" kit-target data-options="{url:'/toMain',icon:'&#xe68e;',title:'首页',id:'-1'}">首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" kit-target data-options="{url:'/toHtSufferMyWaitList',icon:'&#xe6c6;',title:'我的待诊',id:'3'}">我的待诊</a>
            </li>
            <li class="layui-nav-item"><a href="javascript:;">我的咨询</a></li>
            <li class="layui-nav-item"><a href="javascript:;" id="pay">我的评价</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right kit-nav">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="layui-icon">&#xe63f;</i> 皮肤
                </a>
                <dl class="layui-nav-child skin">
                    <dd><a href="javascript:;" data-skin="default" style="color:#393D49;"><i class="layui-icon">&#xe658;</i> 默认</a></dd>
                    <dd><a href="javascript:;" data-skin="orange" style="color:#ff6700;"><i class="layui-icon">&#xe658;</i> 橘子橙</a></dd>
                    <dd><a href="javascript:;" data-skin="green" style="color:#00a65a;"><i class="layui-icon">&#xe658;</i> 原谅绿</a></dd>
                    <dd><a href="javascript:;" data-skin="pink" style="color:#FA6086;"><i class="layui-icon">&#xe658;</i> 少女粉</a></dd>
                    <dd><a href="javascript:;" data-skin="blue.1" style="color:#00c0ef;"><i class="layui-icon">&#xe658;</i> 天空蓝</a></dd>
                    <dd><a href="javascript:;" data-skin="red" style="color:#dd4b39;"><i class="layui-icon">&#xe658;</i> 枫叶红</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://localhost:8088/images/doctor2.jpg" class="layui-nav-img"> ${curDoctor.dname}[${curDoctor.departmentsSmall.dsname}]
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" kit-target data-options="{url:'basic.html',icon:'&#xe658;',title:'基本资料',id:'966'}"><span>基本资料</span></a></dd>
                    <dd><a href="javascript:;">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="http://localhost:8088/ht/login.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black kit-side">
        <div class="layui-side-scroll">
            <div class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" kit-navbar>
                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 患者信息</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'/toHtSufferList',icon:'&#xe6c6;',title:'患者信息列表',id:'1'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 患者信息列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'/toHtSufferWaitList',icon:'&#xe6c6;',title:'就诊患者信息',id:'2'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 就诊患者信息</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'/toHtSufferMyWaitList',icon:'&#xe6c6;',title:'我的待诊',id:'3'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 我的待诊</span></a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 医生信息</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'toHtDoctorList',icon:'&#xe6c6;',title:'医生信息列表',id:'4'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 医生信息列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="nav.html" data-icon="&#xe628;" data-title="导航栏" kit-target data-id='3'>
                                <i class="layui-icon">&#xe628;</i><span> 医生评价列表</span>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 科室信息</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'test.html',icon:'&#xe6c6;',title:'表格',id:'1'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 一级科室信息列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="form.html" data-icon="fa-user" data-title="表单" kit-target data-id='2'>
                                <i class="fa fa-user" aria-hidden="true"></i><span> 二级科室信息列表</span>
                            </a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="nav.html" data-icon="&#xe628;" data-title="导航栏" kit-target data-id='3'>
                                <i class="layui-icon">&#xe628;</i><span> 科室排班表</span>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 患者咨询</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'test.html',icon:'&#xe6c6;',title:'表格',id:'1'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 待回复信息列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="form.html" data-icon="fa-user" data-title="表单" kit-target data-id='2'>
                                <i class="fa fa-user" aria-hidden="true"></i><span> 咨询信息列表</span>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="" href="javascript:;"><i class="fa fa-plug" aria-hidden="true"></i><span> 疾病信息</span></a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" kit-target data-options="{url:'test.html',icon:'&#xe6c6;',title:'表格',id:'1'}">
                                <i class="layui-icon">&#xe6c6;</i><span> 疾病信息列表</span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-url="form.html" data-icon="fa-user" data-title="表单" kit-target data-id='2'>
                                <i class="fa fa-user" aria-hidden="true"></i><span> 疾病信息管理</span>
                            </a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-body" id="container">

        <%--<div style="padding: 15px;"><i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop">&#xe63e;</i> 请稍等...</div>--%>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        2017 &copy;
        <a href="http://kit.zhengjinfan.cn/">kit.zhengjinfan.cn/</a> MIT license
    </div>
</div>
<!-- <script type="text/javascript">
      var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
      document.write(unescape("%3Cspan id='cnzz_stat_icon_1264021086'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1264021086%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
  </script> -->
<script src="http://localhost:8088/layui.js"></script>
<script>
    var message;
    layui.config({
        base: '/js/',
        version: '1.0.1'
    }).use(['app', 'message'], function() {
        var app = layui.app,
            $ = layui.jquery,
            layer = layui.layer;
        //将message设置为全局以便子页面调用
        message = layui.message;
        //主入口
        app.set({
            type: 'iframe'
        }).init();
        /*$('#pay').on('click', function() {
            layer.open({
                title: false,
                type: 1,
                content: '<img src="http://localhost:8088/images/pay.png" />',
                area: ['500px', '250px'],
                shadeClose: true
            });
        });*/
        $('dl.skin > dd').on('click', function() {
            var $that = $(this);
            var skin = $that.children('a').data('skin');
            switchSkin(skin);
        });
        var setSkin = function(value) {
                layui.data('kit_skin', {
                    key: 'skin',
                    value: value
                });
            },
            getSkinName = function() {
                return layui.data('kit_skin').skin;
            },
            switchSkin = function(value) {
                var _target = $('link[kit-skin]')[0];
                _target.href = _target.href.substring(0, _target.href.lastIndexOf('/') + 1) + value + _target.href.substring(_target.href.lastIndexOf('.'));
                setSkin(value);

            },
            initSkin = function() {
                var skin = getSkinName();
                switchSkin(skin === undefined ? 'default' : skin);
            }();
    });
</script>
</body>

</html>
