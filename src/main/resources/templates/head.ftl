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
    <link rel="stylesheet" href="${request.contextPath}/static/zd-1.0.css">

    </head>

<body>
<div class="wrapper">
    <div class="container" >
        <div class="header" id="Header" >
            <nav >
                <!-- logo -->
                <div class="nav-logo">
                    <a href="${request.contextPath}/"><img src="${request.contextPath}/qmx/logo.png" alt=""></a>
                </div>

                <!-- 控制menu -->
                <div class="nav-menu">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

                <!-- 菜单 -->
                <ul class="nav-list">
                    <li>
                        <a href="${request.contextPath}/" class="active">首页<#--<div class="carect"></div>--></a>

                    </li>
                    <#if (home?size>0 && home??)>
                        <#list home as homeone>
                            <li>
                            <#if (homeone.hmOneType?? &&homeone.hmOneType=="home") >
                                <#if (homeone.hmOneName?? &&homeone.hmOneName=="商城")>
                                    <a href="${homeone.hmUrl}" >${homeone.hmOneName}</a>
                                <#else >
                                <a href="${request.contextPath}/home/${homeone.hmId}">${homeone.hmOneName}<div class="carect"></div></a>
                                </#if>
                            <#--创建变量赋值-->
                                <#assign numm=0>
                                <#list home as homenum>
                                    <#if (homenum.hmTwoName?? && homenum.hmOneName==homeone.hmOneName)>
                                        <#assign numm=numm+1>
                                    </#if>
                                </#list>
                            <#--变量为0则没有2级菜单-->
                                <#if (numm>0) >
                                     <ul class="menu">
                                    <#list home as home1>
                                        <#if (home1.hmTwoName?? && home1.hmOneName==homeone.hmOneName)>
                                                <li><a href="${request.contextPath}/home/${home1.hmId}">${home1.hmTwoName}</a></li>
                                        </#if>
                                    </#list>
                                     </ul>
                                </#if>

                            </#if>
                            </li>
                        </#list>
                    </#if>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
<script>
    $(document).click(function(){
        $('.nav-list').removeClass('open')
    })
    $('.nav-menu,.nav-list').click(function(e){e.stopPropagation()})
    $('nav').find('.nav-menu').click(function(e){
        $('.nav-list').toggleClass('open')
    })
</script>
</body></html>