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
   
</head>


<!--Cookie js-->

<!--Cookie js-->
<body>

<div id="dialog" class="ppshow" style="display: none;">
    <style>
        #dialog {
            height: 60px;
            width: 100%;
            background-color: #ccc;
            color: #333;
            text-align: center;
            font-size: 14px;
            padding-top: 10px ;
        }
        #dialog p{
            position: relative;
            margin: 0 auto;
            max-width: 860px;
            padding-right: 60px;
        }
        .pphide{
            display: none;
        }
        .ppshow{
            display: inline-block;
        }
        #dialog  .ppclose{
            width: 20px;
            height: 20px;
            position: absolute;
            right: 0;
            top: 10px;
        }
        #dialog span {
            display: inline;
            margin-left: 20px;
        }
        @media screen and (max-width: 860px) {
            .ppshow{
                display: none;
                background-color: red;
            }
        }
    </style>
</div>
<div class="home-container">

    <div id="wrapper">
        <#include  "head.ftl"/>
        <div class="slideBox" style="margin:0 auto; width:100%; max-width:1366px; overflow:hidden;">
            <div id="slides" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators v2">
                    <li data-target="#slides" data-slide-to="0" class=""></li>
                    <li data-target="#slides" data-slide-to="1" class="active"></li>
                    <li data-target="#slides" data-slide-to="2" class=""></li>

                </ol>
                <div class="carousel-inner" role="listbox">
                <#--轮播图 -->
                <#assign num=0/>
                    <#list home as homlunbo>
                        <#if (homlunbo.hmOneType=="lunbo")>
                            <#assign num=num+1 />
                            <#if (num%2!=0)>
                                    <div class="item">
                                        <a href="${request.contextPath}/home/content/${homlunbo.hmId}" target="_blank"><img src="${request.contextPath}/${homlunbo.hmOneImage}" class="hidden-xs"><img src="${request.contextPath}/${homlunbo.hmOneImage}" class="visible-xs"></a>
                                    </div>
                            <#else >
                                    <div class="item active">
                                        <a href="${request.contextPath}/home/content/${homlunbo.hmId}" target="_blank"><img src="${request.contextPath}/${homlunbo.hmOneImage}" class="hidden-xs"><img src="${request.contextPath}/${homlunbo.hmOneImage}" class="visible-xs"></a>
                                    </div>
                            </#if>
                        </#if>
                    </#list>
                </div>
                <div class="homeNewsList">
                <#--轮播条-->
                    <#if (home?size>0&&home??)>
                        <#list  home as lunbotiao>
                            <#if (lunbotiao.hmOneType=="lunbotiao")>
                               <div class="newsLabel">最新新闻|</div>
                                <#list  home as lunbotiao1>
                                    <div class="newsWrap">
                                        <ul id="HomeNews" style="top: -40px;">
                                                <#if (lunbotiao1.hmOneType==lunbotiao.hmId?string)>
                                                    <li><a href="${request.contextPath}/home/content/${lunbotiao1.hmId}">${lunbotiao1.hmTwoName}<span
                                                            class="date">${lunbotiao1.hmOneDate?date}</span></a></li>
                                                </#if>
                                        </ul>
                                    </div>
                                </#list>
                            </#if>
                        </#list>
                    <#else>

                    </#if>
                </div>
            </div>
        </div>
        <div class="homefour">
            <div id="New-Product" class="carousel slide">
            <#--新品推荐-->
                <#if (home?size>0&&home??)>
                    <#list  home as xinpin>
                        <#if (xinpin.hmOneType=="xinpin")>
                            <h2 class="title">${xinpin.hmOneName}</h2>
                            <div class="carousel-inner" role="listbox">
                                <#assign xinpinnum=0>
                            <#list home as xinpin1>
                                <#if (xinpin1.hmOneType==xinpin.hmId?string)>
                                    <#if xinpinnum==0>
                                        <div class="item active"><a href="${request.contextPath}/home/content/${xinpin1.hmId}" alt=""><img src="${request.contextPath}/${xinpin1.hmOneImage}" alt=""><span>${xinpin1.hmTwoName}</span></a></div>
                                        <#assign xinpinnum=xinpinnum+1>
                                    <#else>
                                        <div class="item "><a href="${request.contextPath}/home/content/${xinpin1.hmId}" alt=""><img src="${request.contextPath}/${xinpin1.hmOneImage}" alt=""><span>${xinpin1.hmTwoName}</span></a></div>
                                    </#if>
                                </#if>
                            </#list>
                            </div>
                             <div class="itempage up" data-direction="prev"></div>
                            <div class="itempage down" data-direction="next"></div>
                        </#if>
                    </#list>
                <#else>
                </#if>
            </div>
            <div id="SMB-Area" class="carousel slide">
            <#--分校专区-->
                <#if (home?size>0&&home??)>
                    <#list  home as fenxiao>
                        <#if (fenxiao.hmOneType=="fenxiao")>
                            <h2 class="title">${fenxiao.hmOneName}</h2>
                            <div class="carousel-inner" role="listbox">
                                <#assign fenxiaonum=0>
                            <#list home as fenxiao1>
                                <#if (fenxiao1.hmOneType==fenxiao.hmId?string)>
                                    <#if fenxiaonum==0>
                                        <div class="item active"><a href="${request.contextPath}/home/content/${fenxiao1.hmId}" alt=""><img src="${request.contextPath}/${fenxiao1.hmOneImage}" alt=""><span>${fenxiao1.hmTwoName}</span></a></div>
                                        <#assign fenxiaonum=fenxiaonum+1>
                                    <#else>
                                        <div class="item "><a href="${request.contextPath}/home/content/${fenxiao1.hmId}" alt=""><img src="${request.contextPath}/${fenxiao1.hmOneImage}" alt=""><span>${fenxiao1.hmTwoName}</span></a></div>
                                    </#if>
                                </#if>
                            </#list>
                            </div>
                             <div class="itempage up" data-direction="prev"></div>
                            <div class="itempage down" data-direction="next"></div>
                        </#if>
                    </#list>
                <#else>
                </#if>
            </div>
            <div id="HomeTopTen" class="carousel slide">
            <#--案例-->
                <#if (home?size>0&&home??)>
                    <#list  home as anli>
                        <#if (anli.hmOneType=="anli")>
                            <h2 class="title">${anli.hmOneName}</h2>
                            <div class="carousel-inner" role="listbox">
                                <#assign anlinum=0>
                            <#list home as anli1>
                                <#if (anli1.hmOneType==anli.hmId?string)>
                                    <#if anlinum==0>
                                        <div class="item active"><a href="${request.contextPath}/home/content/${anli1.hmId}" alt=""><img src="${request.contextPath}/${anli1.hmOneImage}" alt=""><span>${anli1.hmTwoName}</span></a></div>
                                        <#assign anlinum=anlinum+1>
                                    <#else>
                                        <div class="item "><a href="${request.contextPath}/home/content/${anli1.hmId}" alt=""><img src="${request.contextPath}/${anli1.hmOneImage}" alt=""><span>${anli1.hmTwoName}</span></a></div>
                                    </#if>
                                </#if>
                            </#list>
                            </div>
                             <div class="itempage up" data-direction="prev"></div>
                            <div class="itempage down" data-direction="next"></div>
                        </#if>
                    </#list>
                <#else>

                </#if>
            </div>
            <div id="Recruitment" class="carousel slide">
                 <#if (home?size>0&&home??)>
                     <#list  home as zhaopin>
                         <#if (zhaopin.hmOneType=="zhaopin")>
                            <h2 class="title">${zhaopin.hmOneName}</h2>
                            <div class="carousel-inner" role="listbox">
                                <#assign zhaopinnum=0>
                            <#list home as zhaopin1>
                                <#if (zhaopin1.hmOneType==zhaopin.hmId?string)>
                                    <#if zhaopinnum==0>
                                        <div class="item active"><a href="${request.contextPath}/home/content/${zhaopin1.hmId}" alt=""><img src="${request.contextPath}/${zhaopin1.hmOneImage}" alt=""><span><font color="black" face="楷体">${zhaopin1.hmTwoName}</font></span></a></div>
                                        <#assign zhaopinnum=zhaopinnum+1>
                                    <#else>
                                        <div class="item "><a href="${request.contextPath}/home/content/${zhaopin1.hmId}" alt=""><img src="${request.contextPath}/${zhaopin1.hmOneImage}" alt=""><span><font color="black" face="楷体">${zhaopin1.hmTwoName}</font></span></a></div>
                                    </#if>
                                </#if>
                            </#list>
                            </div>
                             <div class="itempage up" data-direction="prev"></div>
                            <div class="itempage down" data-direction="next"></div>
                         </#if>
                     </#list>
                 <#else>

                 </#if>
            </div>
        </div>
        <div class="homefour2">
            <div class="serviceBox sht">
                <div class="body">
                <#--公司活动-->
                    <#if (home?size>0&&home??)>
                        <#list  home as jieshao01>
                            <#if (jieshao01.hmOneType=="jieshao01")>
                                <a href="${request.contextPath}/home/content/${jieshao01.hmId}" target="_blank"><img src="${request.contextPath}/${jieshao01.hmOneImage}" alt="">
                                    <div class="ms" style="width:100%;">
                                        <div class="text"><font color="black" face="楷体">${jieshao01.hmOneName}</font></div>
                                       <#-- <p class="p">${jieshao01.hmOneContent}</p>-->
                                    </div>
                            <#--</a><div style="position:absolute; left:40px; bottom:40px;"><a href="${gongsihuodong.hmUrl}" target="_blank"></a><a href="http://cn.uniview.com/About_Us/Company_activities/" style="color:#fff; text-decoration:none;">查看更多&gt;&gt;</a></div>-->
                            </#if>
                        </#list>
                    <#else>
                    </#if>
                </div>
            </div>
            <div class="serviceBox">
                <div class="body">
                    <div class="rup">
                    <#--介绍-->
                        <#if (home?size>0&&home??)>
                            <#list  home as jieshao02>
                                <#if (jieshao02.hmOneType=="jieshao02")>
                                    <a href="${request.contextPath}/home/content/${jieshao02.hmId}"><img src="${request.contextPath}/${jieshao02.hmOneImage}" alt="">
                                        <div class="ms">
                                    <div class="text"><font color="black" face="楷体">${jieshao02.hmOneName}</font></div>
                                         <#--   <p class="p">${jieshao02.hmOneContent}</p>-->
                                        </div>
                                    </a>
                                </#if>
                            </#list>
                        <#else>

                        </#if>
                    </div>
                    <div class="rdown">
                    <#--介绍-->
                            <#if (home?size>0&&home??)>
                                <#list  home as jieshao03>
                                    <#if (jieshao03.hmOneType=="jieshao03")>
                                    <a href="${request.contextPath}/home/content/${jieshao03.hmId}"><img src="${request.contextPath}/${jieshao03.hmOneImage}" alt="">
                                        <div class="ms">
                                        <div class="text"><font color="black" face="楷体">${jieshao03.hmOneName}</font></div>
                                           <#-- <p class="p">${jieshao03.hmOneContent}</p>-->
                                        </div>
                                    </a>
                                    </#if>
                                </#list>
                            <#else>
                                <a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/"><img src="${request.contextPath}/static/b03.jpg" alt="">
                                    <div class="ms">
                                        <div class="text">培训认证</div>
                                        <p class="p">具有完全的自主知识产权，专注于客户技术和技能的提升，已成为安防行业权威的培训认证品牌。</p>
                                    </div>
                                </a>
                            </#if>
                    </div>
                </div>
            </div>
        </div>
        <div class="homeaboutus">
            <#if (home?size>0&&home??)>
                <#list  home as xinxi>
                    <#if xinxi.hmOneType=="xinxi">
                        <h3><font color="black" face="楷体">${xinxi.hmOneName}</font></h3>
                        <p class="desc"><font color="black" face="楷体">立志成为国内领先国际知名的<br>系统集成工程服务商、软件与解决方案<br>提供商、安全服务运营商</font><br>
                            <a href="${request.contextPath}/home/content/${xinxi.hmId}" style="font-size:14px;"><font color="black" face="楷体" size="3">了解更多&gt;&gt;</font></a></p>
                    </#if>
                </#list>
            <#else>
            </#if>
        <#--<ul class="rank clearfix">
            <#list  home as shuliang>
                <#if shuliang.hmOneType=="shuliang">
                    <li class="r${shuliang_index}"><img src="${shuliang.hmOneImage}" alt=""></li>
                </#if>
            </#list>
            &lt;#&ndash;<li class="r1"><img src="${request.contextPath}/static/rank1.png" alt=""></li>
            <li class="r2"><img src="${request.contextPath}/static/rank2.png" alt=""></li>
            <li class="r3"><img src="${request.contextPath}/static/rank3.png" alt=""></li>&ndash;&gt;
        </ul>-->
            <ul class="anli clearfix">
                <#list  home as jixiao>
                    <#if jixiao.hmOneType=="jixiao">
                        <li class="r${jixiao_index}"><img src="${request.contextPath}/${jixiao.hmOneImage}" alt=""><br><strong></strong><font color="black" face="楷体" size="4">${jixiao.hmOneName}</font></li>
                    </#if>
                </#list>
            <#--<li class="r1"><img src="${request.contextPath}/static/home_c1.png" alt=""><br><strong>625</strong>所<br>平安高校</li>
            <li class="r2"><img src="${request.contextPath}/static/home_c2.png" alt=""><br><strong>50</strong>个<br>机场</li>
            <li class="r3"><img src="${request.contextPath}/static/home_c3.png" alt=""><br><strong>680</strong>余个<br>平安城市</li>
            <li class="r4"><img src="${request.contextPath}/static/home_c4.png" alt=""><br><strong>350</strong>余个<br>智能交通项目</li>
            <li class="r5"><img src="${request.contextPath}/static/home_c5.png" alt=""><br><strong>200</strong>余家<br>三甲医院</li>
            <li class="r6"><img src="${request.contextPath}/static/home_c6.png" alt=""><br><strong>400</strong>余家<br>大型企业</li>-->
            </ul>
        </div>
        <div class="gaph50"></div>
         <#include  "footer.ftl"/>
        <script src="${request.contextPath}/static/menu_xiala.js" type="text/javascript"></script>
        <#include  "copyright.ftl"/>
    </div>
</div>


<script type="text/javascript">
    function newsscroll(){var n = $("#HomeNews li").size(),max = n*40,j=1;$("#HomeNews li:first-child").clone().appendTo("#HomeNews");function f(){if(j<=n){$("#HomeNews").animate({top: "-"+j*40}, 300 ,function(){if(j==n){j=1;$("#HomeNews").css("top","0px");}else{j++;}setTimeout(function(){f();},5000);});}}setTimeout(function(){f();},5000);}
    $(document).ready(function(){
        $(".itempage").click(function(){
            var p = $(this).parent().attr("id"), d = $(this).attr("data-direction");
            $("#"+p).carousel(d);
        });
        newsscroll();
    });
</script>

</body></html>