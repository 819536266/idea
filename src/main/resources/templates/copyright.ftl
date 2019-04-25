<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>企明星科技有限公司</title>
    <!--meta http-equiv="Cache-Control" content="max-age=604800,public" /-->
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="MSSmartTagsPreventParsing" content="true">
   <#-- <link rel="shortcut icon" href="http://cn.uniview.com/tres/images/favicon.ico">
    <link rel="stylesheet" href="${request.contextPath}/static/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/bootstrap-theme.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/common_20181102.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/carousel-fade.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/static/media_20181102.css" type="text/css">
    <script src="${request.contextPath}/static/bootstrap.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/common.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/menu.js" type="text/javascript"></script>
    <script src="${request.contextPath}/static/base.js" type="text/javascript"></script>-->
</head>
<body>
    <div class="copyright">
<#-- 底部-->
            <#if (home?size>0&&home??)>
                <#list  home as end>
                    <#if end.hmOneType=="lianjie">
                        <a href="${request.contextPath}/home/content/${end.hmId}">${end.hmOneName}</a>
                    </#if>
                </#list>
            </#if>
<#--<a href="http://cn.uniview.com/About_Us/Contact_Us/">联系我们</a> | <a href="http://cn.uniview.com/Home/Legal_Privacy/">法律声明</a>  | <a href="http://cn.uniview.com/Home/Privacy_Policy/">隐私政策</a>  | --><span>版权所有 河南企明星电子科技有限公司。保留一切权利。</span> <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=33010802004032" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;" class="beian"><img src="${request.contextPath}/static/ga.png" style="float:left;">Copyright 2018 -  <a href="http://www.miitbeian.gov.cn/" target="_blank">豫ICP备17002894号</a>
    <span style="display:none;"><#--<script src="${request.contextPath}/static/stat.php" language="JavaScript"></script>
        <script src="${request.contextPath}/static/core.php" charset="utf-8" type="text/javascript"></script>
        <a href="https://www.cnzz.com/stat/website.php?web_id=4346284" target="_blank" title="站长统计">
            <img src="${request.contextPath}/static/pic.gif" vspace="0" hspace="0" border="0"></a></span>-->
    <span class="pagetop" onclick="scroll(0,0)" title="返回顶部"></span>
</div>
</body>