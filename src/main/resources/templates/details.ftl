<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0039)http://cn.uniview.com/Products/Cameras/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>网络摄像机—浙江宇视科技有限公司</title>
    <!--meta http-equiv="Cache-Control" content="max-age=604800,public" /-->
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="MSSmartTagsPreventParsing" content="true">
    <meta name="keywords" content="网络摄像机,高清摄像机,宇视科技摄像机,uniview摄像机,宇视摄像机,网络摄像机,IPC,高清IPC,球机,半球,枪机,红外一体机">
    <meta name="description" content="了解与宇视科技（Uniview）摄像机相关的信息，包括摄像机产品的技术特点、选型指南、应用指南、订购信息、产品特点、产品规格、产品尺寸、典型应用以及相关下载等。">
    <link rel="shortcut icon" href="http://cn.uniview.com/tres/images/favicon.ico">
    <link rel="stylesheet" href="${request.contextPath}/static/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/bootstrap-theme.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/common_20181102.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/carousel-fade.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/media_20181102.css" type="text/css">
    <script src="${request.contextPath}/static/jquery-1.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/bootstrap.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/common.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/menu.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/base.js" type="text/javascript"></script>
    <#--<script language="javascript">
        var firstSelectedCss = "firstTitle";
        var secondSelectedCss = "secondTitle";
        var thirdSelectedCss = "threeTitle";
        var currentID = 140452;  //在这里设置当前频道ID
        $(document).ready(function() {
            $("#sideBar>ul>li>ul").hide(); //隐藏一级频道
            $("#sideBar>ul>li>ul>li>ul").hide();//隐藏二级频道
            Select(currentID);
        });
        function Select(index)
        {
            var currentLi = $("#tab_"+index);

            if($("#tab_"+index).children(".subNav").html() != null)//表示选中一级频道
            {
                currentLi.addClass(firstSelectedCss);
            }

            if($("#tab_"+index).parent(".subNav").html() != null)//表示选中二级频道
            {
                currentLi.parents(".treeNavTitle").addClass(firstSelectedCss); //设置一级导航样式
                currentLi.addClass(secondSelectedCss); //设置二级导航样式
            }

            if($("#tab_"+index).children("ul").html() == null)//表示选中三级频道
            {
                currentLi.parents(".treeNavTitle").addClass(firstSelectedCss); //设置一级导航样式
                currentLi.parent().parent("li").addClass(secondSelectedCss); //设置二级导航样式
                currentLi.addClass(thirdSelectedCss);  //设置三级导航样式
            }

            $("#sideBar>ul>li>ul").hide();      //隐藏一级频道
            $("#sideBar>ul>li>ul>li>ul").hide();  //隐藏二级频道
            currentLi.children("ul").show();  //显示子频道
            currentLi.parents(".subNav").show(); //显示父的顶级频道
            currentLi.parent("ul").show(); //显示父二级频道
        }
    </script>-->
</head>
<body style="">
<div id="wrapper">
    <#include "head.ftl"/>
    <script>
        function searchAction(id){
            var keyword = $.trim($("#"+id).val());
            if (keyword == "" || keyword == "全站搜索"){
                alert("请输入搜索关键词！");
                return false;
            }
            location.href= "http://search.uniview.com/search.aspx?k=" + encodeURI(keyword);
        }
        $("#keyword,#keyword2").keydown(function(e){
            var curKey = e.which, id = $(this).attr("id")
            if(curKey == 13){
                searchAction(id);
            }
        });
    </script>
    <div class="container">
        <div class="crumbs">
            <h1 class="breadTitle">
                <#if homeById??>
                    <#if homeById.hmOneType=="home">
                        ${homeById.hmOneName}
                    <#else >
                        ${homeById.hmTwoName}
                    </#if>

                </#if>
            </h1>
            <ol class="breadcrumb">
                <a class="blue3" href="http://cn.uniview.com/">首页</a>
                <img src="${request.contextPath}/网络摄像机—浙江宇视科技有限公司_files/arrow.gif" border="0">
            <#if homeById??>
                <a class="blue3" href="${request.contextPath}/home/${homeById.hmId}">
                    ${homeById.hmOneName}
                </a>
            </#if>
                <img src="${request.contextPath}/网络摄像机—浙江宇视科技有限公司_files/arrow.gif" border="0">
            </ol>
        </div>
    </div>
    <div class="mbl_banner visible-xs"><img border="0" src="${request.contextPath}/网络摄像机—浙江宇视科技有限公司_files/20170502_1618120_2_759425_140445_0.jpg"></div>
    <div class="container middlebody">
        <div class="row">
            <div class="col-xs-12 col-sm-9 col-md-9 col-right">
                <div class="mainContent">
                    <div  id="detailContent">
                        <#--内容-->
                        ${homeById.hmOneContent!""}
                    </div>
                    <#--<div id="detailContent">
                        <div class="photo hidden-xs"><a href="http://cn.uniview.com/Topics/IPC/" target="_blank"><img src="网络摄像机—浙江宇视科技有限公司_files/ipc.jpg" alt="超感IPC系列——全新方式诠释“视，适，智，质”"></a></div>
                        <div class="photo hidden-xs"><img border="0" src="网络摄像机—浙江宇视科技有限公司_files/20170502_1618121_1_732542_140445_0.jpg"></div>
                        <h2 class="sortTitle">产品类型</h2>
                        <div class="product_list">
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Box/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_box.jpg" alt="枪式网络摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Box/">枪式网络摄像机</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Box/#~series0">8MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Box/#~series1">6MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Box/#~series2">3MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Box/#~series3">2MP</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Bullet/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_bullet.jpg" alt="筒型网络摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Bullet/">筒型网络摄像机</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Bullet/#~series0">6MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Bullet/#~series1">5MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Bullet/#~series2">4MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Bullet/#~series3">2MP</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_fixed_dome.jpg" alt="半球网络摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/">半球网络摄像机</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/#~series0">8MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/#~series1">5MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/#~series2">4MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/#~series3">3MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/#~series4">2MP</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Dome/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_dome.jpg" alt="球型网络摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Dome/">球型网络摄像机</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Dome/#~series0">8MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Dome/#~series1">6MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Dome/#~series2">3MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Dome/#~series3">2MP</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_ptz.jpg" alt="云台&amp;一体机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/">云台&amp;一体机</a></h3>
                                    <ul class="clearfix">
                                        <li class="single"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/">小型云台一体机</a></li>
                                        <li class="single"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Medium/">中型快速云台一体机</a></li>
                                        <li class="single"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Heavy/">重载云台一体机</a></li>
                                        <li class="single"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Zoom_Camera/">机芯一体机</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Linkage/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_linkage.jpg" alt="多目联动网络摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Linkage/">多目联动网络摄像机</a></h3>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Integration/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_integration.jpg" alt="机芯"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Integration/">机芯</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Integration/#~series0">8MP</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Integration/#~series1">2MP</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Peripheral/"><img src="网络摄像机—浙江宇视科技有限公司_files/ph_peripheral.jpg" alt="摄像机外设"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Peripheral/">摄像机外设</a></h3>
                                    <ul class="clearfix">
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series0">防护罩</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series1">枪机支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series2">球机支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series3">半球支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series4">筒机支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series5">通用支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series6">自制支架</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series7">镜头</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series8">电源适配器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Cameras/Peripheral/#~series9">拾音器</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Explosion-proof/"><img src="网络摄像机—浙江宇视科技有限公司_files/explosion-proof.jpg" alt="防爆摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Explosion-proof/">防爆摄像机</a></h3>
                                </div>
                            </div>
                            <div class="item clearfix">
                                <div class="img"><a href="http://cn.uniview.com/Products/Cameras/Thermal_imaging/"><img src="网络摄像机—浙江宇视科技有限公司_files/thermal.jpg" alt="热成像摄像机"></a></div>
                                <div class="sort">
                                    <h3><a href="http://cn.uniview.com/Products/Cameras/Thermal_imaging/">热成像摄像机</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3">
                <div id="sideBar">
                    <ul id="treeNav">
                      <#--  列表-->
                        <#if (home?size>0 && home??)>
                            <#if homeById??>
                                <li class="channel_title">${homeById.hmOneName}</li>
                            </#if>
                            <#list home as homeone>
                           <#-- 如果点击的主标签-->

                                <#if (homeById??) && homeById.hmOneType=='home'>
                                    <#if (homeone.hmOneType=="home")>

                                        <li id="${homeone.hmId}" class="${((homeone.hmId==homeById.hmId))?string('treeNavTitle firstTitle','treeNavTitle')}"><a href="${request.contextPath}/home/${homeone.hmId}" title=""><strong>${homeone.hmOneName}</strong></a>
                                            <ul class="subNav" style="display: ${(homeone.hmId==homeById.hmId)?string('block','none')}";">
                                                <#list home as home1>
                                                    <#if (home1.hmTwoName?? && home1.hmOneName==homeone.hmOneName)>
                                                         <li id="${home1.hmId}" ${(homeone.hmId==homeById.hmId)?string("class='secondTitle'","")}><a href="${request.contextPath}/home/${home1.hmId}" title="">${home1.hmTwoName}</a>
                                                             <ul style="display: ${(homeone.hmId==homeById.hmId)?string('block','none')}">
                                                             </ul>
                                                         </li>
                                                    </#if>
                                                </#list>
                                            </ul>
                                        </li>
                                    </#if>
                                <#-- 如果点击的子标签-->
                                <#elseif (homeById??&&homeById.hmOneType!="home")>
                                    <#if (homeone.hmOneType=="home")>
                                        <li id="${homeone.hmId}" class="${((homeone.hmId)?string==homeById.hmOneType)?string('treeNavTitle firstTitle','treeNavTitle')}"><a href="${request.contextPath}/home/${homeone.hmId}" title=""><strong>${homeone.hmOneName}</strong></a>
                                            <ul class="subNav" style="display: ${((homeone.hmId)?string==homeById.hmOneType?string)?string('block','none')};">
                                                <#list home as home1>
                                                    <#if (home1.hmTwoName?? && home1.hmOneType==(homeone.hmId)?string)>

                                                        <li id="${home1.hmId}" ${(home1.hmId==homeById.hmId)?string("class='secondTitle'","")}><a href="${request.contextPath}/home/${home1.hmId}" title="">${home1.hmTwoName}</a>
                                                            <ul style="display: ${(home1.hmId==homeById.hmId)?string('block','none')}">
                                                            </ul>
                                                        </li>
                                                    </#if>
                                                </#list>
                                            </ul>
                                        </li>
                                    </#if>
                                    <#--没有-->
                                <#else>
                                    <#if (homeone.hmOneType=="home")>
                                        <li id="${homeone.hmId}" class="treeNavTitle"><a href="${request.contextPath}/home/${homeone.hmId}" title=""><strong>${homeone.hmOneName}</strong></a>
                                            <ul class="subNav" style="display: none;">
                                                <#list home as home1>
                                                    <#if (home1.hmTwoName?? && home1.hmOneName==homeone.hmOneName)>
                                                         <li id="${home1.hmId}" ><a href="${request.contextPath}/home/${home1.hmId}" title="">${home1.hmTwoName}</a>
                                                             <ul style="display: none;">
                                                             </ul>
                                                         </li>
                                                    </#if>
                                                </#list>
                                            </ul>
                                        </li>
                                    </#if>
                                </#if>
                            </#list>
                       <#else>
                            <li class="channel_title"> 产品</li>
                            <li id="tab_140452" class="treeNavTitle firstTitle"><a href="http://cn.uniview.com/Products/Cameras/" title=""><strong>网络摄像机</strong></a>
                                <ul class="subNav" style="display: block;">
                                    <li id="tab_153896" class="secondTitle"><a href="http://cn.uniview.com/Products/Cameras/Box/" title="">枪式网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_153897"><a href="http://cn.uniview.com/Products/Cameras/Bullet/" title="">筒型网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_153898"><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/" title="">半球网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_153899"><a href="http://cn.uniview.com/Products/Cameras/Dome/" title="">球型网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_183785"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/" title="">云台&amp;一体机</a>
                                        <ul style="display: none;">
                                            <li id="tab_205908"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/" title="">小型云台一体机</a></li>
                                            <li id="tab_205909"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Medium/" title="">中型快速云台一体机</a></li>
                                            <li id="tab_171262"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Zoom_Camera/" title="">机芯一体机</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_213600"><a href="http://cn.uniview.com/Products/Cameras/Linkage/" title="">多目联动网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_167159"><a href="http://cn.uniview.com/Products/Cameras/Integration/" title="">机芯</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_159486"><a href="http://cn.uniview.com/Products/Cameras/Peripheral/" title="">摄像机外设</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205930"><a href="http://cn.uniview.com/Products/Cameras/Analog/Fixed_Dome/" title="">模拟摄像机</a>
                                        <ul style="display: none;">
                                            <li id="tab_205932"><a href="http://cn.uniview.com/Products/Cameras/Analog/Fixed_Dome/" title="">半球模拟摄像机</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_209888"><a href="http://cn.uniview.com/Products/Cameras/Explosion-proof/" title="">防爆摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_212953"><a href="http://cn.uniview.com/Products/Cameras/Thermal_imaging/" title="">热成像摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_205460" class="treeNavTitle"><a href="http://cn.uniview.com/Products/IoT/Gateway/" title=""><strong>物联网</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_205461"><a href="http://cn.uniview.com/Products/IoT/Gateway/" title="">网关</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_208014"><a href="http://cn.uniview.com/Products/IoT/Sensor/" title="">传感器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_209564"><a href="http://cn.uniview.com/Products/IoT/Landmarks/" title="">地标器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_161598" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/" title=""><strong>交警电子警察</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_161599"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Electric_Alarm/" title="">电警卡口抓拍机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_206282"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Detector/" title="">视频流量检测器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_202331"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Intelligent_Dome/" title="">智能交通球机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_167232"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Host/" title="">路口终端</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_167267"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Accessovies/" title="">配件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_167258"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/VM/Platform/" title="">智能交通平台</a>
                                        <ul style="display: none;">
                                            <li id="tab_206195"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/VM/Platform/" title="">管理平台</a></li>
                                            <li id="tab_206194"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/VM/Analysis/" title="">交通智能分析</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_205951" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Park/Entrance/" title=""><strong>智慧停车场</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_205952"><a href="http://cn.uniview.com/Products/Park/Entrance/" title="">出入口抓拍机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205953"><a href="http://cn.uniview.com/Products/Park/Detector/" title="">车位检测器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205955"><a href="http://cn.uniview.com/Products/Park/Accessories/" title="">配件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_205933" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/" title=""><strong>大屏产品</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_205934"><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/" title="">LCD</a>
                                        <ul style="display: none;">
                                            <li id="tab_205937"><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/" title="">拼接屏</a></li>
                                            <li id="tab_205938"><a href="http://cn.uniview.com/Products/Screen/LCD/Monitor/" title="">监视器</a></li>
                                            <li id="tab_213599"><a href="http://cn.uniview.com/Products/Screen/LCD/Whiteboard/" title="">交互式电子白板</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_205936"><a href="http://cn.uniview.com/Products/Screen/LED/Small_Pitch/" title="">LED</a>
                                        <ul style="display: none;">
                                            <li id="tab_205939"><a href="http://cn.uniview.com/Products/Screen/LED/Small_Pitch/" title="">小间距</a></li>
                                            <li id="tab_205942"><a href="http://cn.uniview.com/Products/Screen/LED/Traffic/" title="">交通诱导屏</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_145163" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Display/Screen/Platform/" title=""><strong>显控产品</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_191322"><a href="http://cn.uniview.com/Products/Display/Screen/Platform/" title="">大屏显控</a>
                                        <ul style="display: none;">
                                            <li id="tab_205947"><a href="http://cn.uniview.com/Products/Display/Screen/Platform/" title="">视频综合平台</a></li>
                                            <li id="tab_205948"><a href="http://cn.uniview.com/Products/Display/Screen/Unit/" title="">视频综合单元</a></li>
                                            <li id="tab_205949"><a href="http://cn.uniview.com/Products/Display/Screen/Controller/" title="">拼接控制器</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_205944"><a href="http://cn.uniview.com/Products/Display/DC/" title="">解码器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205945"><a href="http://cn.uniview.com/Products/Display/EC/" title="">编码器</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205946"><a href="http://cn.uniview.com/Products/Display/Accessories/" title="">配件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_145172" class="treeNavTitle"><a href="http://cn.uniview.com/Products/NVR/" title=""><strong>NVR</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_206191"><a href="http://cn.uniview.com/Products/NVR/General/" title="">通用NVR</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_207548"><a href="http://cn.uniview.com/Products/NVR/Accessovies/" title="">配件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_211432" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Kit/Wireless/" title=""><strong>套装产品</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_211433"><a href="http://cn.uniview.com/Products/Kit/Wireless/" title="">无线套装</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_145174" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Net_storage/" title=""><strong>存储与计算</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_205958"><a href="http://cn.uniview.com/Products/Net_storage/IPSAN/" title="">IPSAN</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205959"><a href="http://cn.uniview.com/Products/Net_storage/Fusion/Cloud/" title="">融合存储</a>
                                        <ul style="display: none;">
                                            <li id="tab_205960"><a href="http://cn.uniview.com/Products/Net_storage/Fusion/Cloud/" title="">云存储</a></li>
                                            <li id="tab_194474"><a href="http://cn.uniview.com/Products/Net_storage/Fusion/Service/" title="">存储服务</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_145177" class="treeNavTitle"><a href="http://cn.uniview.com/Products/VM/" title=""><strong>管理平台</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_187294"><a href="http://cn.uniview.com/Products/VM/Universal_Monitor/AIO/" title="">通用监控平台</a>
                                        <ul style="display: none;">
                                            <li id="tab_206196"><a href="http://cn.uniview.com/Products/VM/Universal_Monitor/AIO/" title="">监控管理一体机</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_194393"><a href="http://cn.uniview.com/Products/VM/Common_platform/Management/" title="">行业通用平台</a>
                                        <ul style="display: none;">
                                            <li id="tab_194473"><a href="http://cn.uniview.com/Products/VM/Common_platform/Management/" title="">管理平台</a></li>
                                            <li id="tab_194394"><a href="http://cn.uniview.com/Products/VM/Common_platform/Map_server/" title="">视图可视化服务</a></li>
                                            <li id="tab_194641"><a href="http://cn.uniview.com/Products/VM/Common_platform/Big_data/" title="">大数据服务</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_194916"><a href="http://cn.uniview.com/Products/VM/Public_Security/Management/" title="">公安平台</a>
                                        <ul style="display: none;">
                                            <li id="tab_206199"><a href="http://cn.uniview.com/Products/VM/Public_Security/Management/" title="">公安管理平台</a></li>
                                            <li id="tab_206200"><a href="http://cn.uniview.com/Products/VM/Public_Security/Access/" title="">数据接入服务</a></li>
                                            <li id="tab_206201"><a href="http://cn.uniview.com/Products/VM/Public_Security/APP/" title="">APP</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_187293"><a href="http://cn.uniview.com/Products/VM/Security_Platform/Platform/" title="">安防平台</a>
                                        <ul style="display: none;">
                                            <li id="tab_206202"><a href="http://cn.uniview.com/Products/VM/Security_Platform/Platform/" title="">安防管理平台</a></li>
                                            <li id="tab_194720"><a href="http://cn.uniview.com/Products/VM/Security_Platform/3D_Map/" title="">3D地图服务</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_200794" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Network_Security/Switches/" title=""><strong>网络与安全</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_200796"><a href="http://cn.uniview.com/Products/Network_Security/Switches/" title="">交换机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_209413"><a href="http://cn.uniview.com/Products/Network_Security/Wireless/" title="">无线网桥</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_187014" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Client_Software/PC/" title=""><strong>客户端软件</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_198764"><a href="http://cn.uniview.com/Products/Client_Software/PC/" title="">PC客户端软件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_198765"><a href="http://cn.uniview.com/Products/Client_Software/Mobile/" title="">移动客户端软件</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_212449" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/" title=""><strong>智能锁</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_212450"><a href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/" title="">指纹锁</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_210815" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Smart_Equipment/Door/" title=""><strong>智能装备</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_210816"><a href="http://cn.uniview.com/Products/Smart_Equipment/Door/" title="">人脸速通门</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_213206"><a href="http://cn.uniview.com/Products/Smart_Equipment/Terminal/General/" title="">人脸识别终端</a>
                                        <ul style="display: none;">
                                            <li id="tab_213245"><a href="http://cn.uniview.com/Products/Smart_Equipment/Terminal/General/" title="">通用人脸识别终端</a></li>
                                        </ul>
                                    </li>
                                    <li id="tab_214029"><a href="http://cn.uniview.com/Products/Smart_Equipment/Intercom/ACM/" title="">可视对讲设备</a>
                                        <ul style="display: none;">
                                            <li id="tab_214030"><a href="http://cn.uniview.com/Products/Smart_Equipment/Intercom/ACM/" title="">门禁一体机</a></li>
                                            <li id="tab_214031"><a href="http://cn.uniview.com/Products/Smart_Equipment/Intercom/Indoor/" title="">室内机</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="tab_199745" class="treeNavTitle"><a href="http://cn.uniview.com/Products/Professional/Cameras/" title=""><strong>专业产品</strong></a>
                                <ul class="subNav" style="display: none;">
                                    <li id="tab_199949"><a href="http://cn.uniview.com/Products/Professional/Cameras/" title="">网络摄像机</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                    <li id="tab_205173"><a href="http://cn.uniview.com/Products/Professional/Storage/" title="">存储</a>
                                        <ul style="display: none;">
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </#if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <span class="category-name" style="display:none;">,a产品栏目a, </span>
    <span class="category-big" style="display:none;">,a网络摄像机a, </span>
    <div class="gaph50"></div>
     <#include "footer.ftl"/>
    <script src="${request.contextPath}/网络摄像机—浙江宇视科技有限公司_files/menu_xiala.js.下载" type="text/javascript"></script>
    <#include "copyright.ftl"/>
</div>

</body></html>