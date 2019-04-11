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

                        <li class="title">按访问者</li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/" target="_self">工程师</a></li>
                        <li><a href="https://talent.uniview.com/wt/uniview/web/index" target="_blank">考生</a></li>
                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Channel_Introduction/" target="_self">合作伙伴</a></li>
                    </ul>
                    <ul>
                        <li class="title">服务与培训</li>
                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/" title="渠道服务">渠道服务</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/" title="培训认证">培训认证</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/" title="下载中心">下载中心</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Maintain_Replacing/Repairment/" title="维修与更换">维修与更换</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Authorize_License/" title="License授权">License授权</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/VerificationQuery/" title="条码防伪查询">条码防伪查询</a></li>
                        <li><a href="http://cn.uniview.com/Service/Service_Training/Maintenance_Query/" title="条码维保查询">条码维保查询</a></li>
                    </ul>
                    <ul>
                        <li class="title">人才招聘</li>
                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/social" title="社会招聘">社会招聘</a></li>
                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/campus" title="校园招聘">校园招聘</a></li>
                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/interns" title="实习生招聘">实习生招聘</a></li>
                    </ul>
                    <ul>
                        <li class="title">公司信息</li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Company_Introduce/" title="关于宇视">关于宇视</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Brand/" title="品牌理念">品牌理念</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/History/" title="发展历程">发展历程</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/SCM/" title="供应链">供应链</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Service_System/" title="服务体系">服务体系</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/R_D_Team/" title="研发团队">研发团队</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Awards/" title="奖项荣誉">奖项荣誉</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Company_Video/Product_series/" title="公司视频">公司视频</a></li>
                        <li><a href="http://cn.uniview.com/About_Us/Company_Information/Brand_Resource/" title="品牌资源">品牌资源</a></li>
                    </ul>
                    <ul>
                        <li class="title">常用链接</li>
                        <li><a href="http://fenxiao.uniview.com/" target="_blank">SMB专区</a></li>
                        <li><a href="http://cn.uniview.com/Unisee/">Unisee专区</a></li>
                        <li><a href="http://cn.uniview.com/Security/Lab/">宇视安全实验室</a></li>
                    </ul>
                    </#if>
        </div>
        <div class="fqr">
            <div class="wsa"> <a href="javascript:void(0);" class="wx">微信</a><a href="http://weibo.com/u/2491989963" class="wb" target="_blank" title="微博">微博</a><a href="http://pub.uniview.com/ys_121218/default.html" class="app" title="APP" target="_blank">APP</a><a href="http://cn.uniview.com/Home/EDM/" class="dzb" target="_blank" title="订阅电子报">订阅电子报</a> </div>
            <ul class="cf">
                <li><span class="hywx"></span>官方微信号</li>
                <li><span class="gfwx"></span>渠道经销微信号</li>
            </ul>
        </div>
    </div>
</div>

</body>
