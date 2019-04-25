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

</head>
<body>
<div class="footer">
    <div class="flink clearfix">
        <div class="linkItemBox clearfix">
        <#--       底部-->
                    <#if (home?size>0&&home??)>
                        <#list  home as floor>
                            <#if floor.hmOneType=="floor">
                            <ul>
                                <li class="title">${floor.hmOneName}</li>
                                    <#list  home as floor1>
                                        <#if (floor1.hmOneType==floor.hmId?string)>
                                            <li><a href="${floor1.hmUrl}" target="_self">${floor1.hmTwoName}</a></li>
                                        </#if>
                                    </#list>
                            </ul>
                            </#if>
                        </#list>
                    <#else>


                    </#if>
        </div>
        <div class="fqr">
            <div class="wsa"><a href="javascript:void(0);" class="wx">微信</a><#--<a href="http://weibo.com/u/2491989963"
                                                                               class="wb" target="_blank"
                                                                               title="微博">微博</a><a
                    href="http://pub.uniview.com/ys_121218/default.html" class="app" title="APP"
                    target="_blank">APP</a>--><#--<a href="http://cn.uniview.com/Home/EDM/" class="dzb" target="_blank" title="订阅电子报">订阅电子报</a>-->
            </div>
            <ul class="cf">
                <li><span class="hywx"></span>官方微信号</li>
                <li><span class="gfwx"></span>渠道经销微信号</li>
            </ul>
        </div>
    </div>
</div>

</body>
