<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0039)http://cn.uniview.com/Products/Cameras/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>河南企明星科技有限公司</title>
    <!--meta http-equiv="Cache-Control" content="max-age=604800,public" /-->
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="MSSmartTagsPreventParsing" content="true">
    <link rel="shortcut icon" href="${request.contextPath}/qmx/cropped-TIM截图20180406191209-32x32.jpg">
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
            <div class="homeaboutuseo">
            <#--<#if (home?size>0&&home??)>
                <#list  home as xinxi>
                    <#if xinxi.hmOneType=="xinxi">
                        <h3><font color="black" face="楷体"><#if homeById??>
                            <a class="blue3" href="${request.contextPath}/home/${homeById.hmId}">
                                ${homeById.hmOneName}
                            </a>
                        </#if></font></h3>
                    </#if>
                </#list>
            <#else>
            </#if>-->
                <#if homeById.hmOneName??>
                      <h3><#if homeById??>
                          <a class="blue3" href="${request.contextPath}/home/${homeById.hmId}">
                              <font color="black" face="楷体">   ${homeById.hmOneName}</font>
                          </a>
                      </#if></h3>
                <#else >

                </#if>
            </div>
            <h1 class="breadTitle">
                <#if homeById??>
                    <#if homeById.hmOneType=="home">
                        ${homeById.hmOneName}>
                    <#elseif homeById.hmTwoName??>
                        ${homeById.hmTwoName}>
                    <#else >

                    </#if>

                </#if>
            </h1>
            <ol class="breadcrumb">
                <a class="blue3" href="http://cn.uniview.com/"><font color="black" face="加粗" size="4">首页 &nbsp;></font></a>
                <#--<img src="${request.contextPath}/河南企明星科技有限公司_files/arrow.gif" border="0">-->
            <#if homeById??>
                <a class="blue3" href="${request.contextPath}/home/${homeById.hmId}">
                    <#if homeById.hmOneName??>
                       <font color="black" face="加粗" size="4"> ${homeById.hmOneName}&nbsp;></font>
                    <#else >

                    </#if>
                </a>
            </#if>
                <#--<img src="${request.contextPath}/河南企明星科技有限公司_files/arrow.gif" border="0">-->
            </ol>
        </div>
    </div>
   <#-- <div class="mbl_banner visible-xs"><img border="0" src="${request.contextPath}/河南企明星科技有限公司_files/20170502_1618120_2_759425_140445_0.jpg"></div>-->
    <div class="container middlebody">
        <div class="row">
                <div class="mainContent">
                    <div id="detailContent">
                    <#--内容-->
                        <#if homeById.hmOneContent?? && homeById.hmOneContent=="">
                        <div style="width:200px;margin: auto">
                            <font color="black" face="加粗" size="4"> 页面正在建设中......</font>
                        </div>
                        <#else>
                            ${homeById.hmOneContent!}
                        </#if>
                    </div>
                </div>
        </div>
    </div>
    <span class="category-name" style="display:none;">,a产品栏目a, </span>
    <span class="category-big" style="display:none;">,a网络摄像机a, </span>
    <div class="gaph50"></div>
         <#include "footer.ftl"/>
    <script src="${request.contextPath}/河南企明星科技有限公司_files/menu_xiala.js.下载" type="text/javascript"></script>
    <#include "copyright.ftl"/>
    <script type="text/javascript">

        function fun1(a) {
            $(a).attr("class","treeNavTitle firstTitle");
            $(a).children("ul").get(0).style.display="block";
        }
        function out(a) {
            $(a).attr("class","treeNavTitle");
            $(".subNav").each(function () {
                $(this).attr("style","display:none");
                $(a).children("ul").get(0).style.display="block";
            })

        }
    </script>
</div>

</body></html>
<script>
    $(function () {
        $("#detailContent img").each(function () {
            $(this).attr("width","100%");
            $(this).attr("height","auto");
        })
    })

</script>
