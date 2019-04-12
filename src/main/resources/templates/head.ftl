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
<div class="wrapper">
    <div class="container">
        <div class="header" id="Header">
            <p class="logo"><a href="http://cn.uniview.com/default.htm"><img src="${request.contextPath}/qmx/logo.png" alt="宇视科技" width="145" height="30"></a></p>
            <#--<div class="header-opt">
                <div class="hlink"><span id="login"><a href="http://cn.uniview.com/Home/Login/Default.htm" target="_blank" title="登录">登录</a> ｜ <a href="http://cn.uniview.com/Home/Registration/" target="_blank" title="注册">注册</a></span>
                    <script type="text/javascript" src="${request.contextPath}/static/showUser.js"></script>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ <a href="http://en.uniview.com/" style="cursor:hand" target="_blank" title="English">English</a> ]</div>
                <div class="search">
                    <div class="form">
                        <input name="k" id="keyword" type="text" class="word">
                        <a class="btn" href="javascript:void(0)" onclick="searchAction('keyword')">搜索</a> </div>
                </div>
            </div>-->
            <div class="phone-nav visible-xs-block visible-sm-block">
                <div class="search-btn">
                    <div class="search-btn" id="search-toggle"></div>
                    <div class="search-form" id="search-form">
                        <div class="container body">
                            <input name="k" id="keyword2" type="text">
                            <a href="javascript:void(0)" onclick="searchAction('keyword2')"></a>
                        </div>
                    </div>
                </div>
                <div class="menu-list"><img src="${request.contextPath}/static/menu.png" alt="" id="nav-toggle">
                    <ul id="nav-phone">
                                <#if (home?size>0 && home??)>
                                    <#list home as homeone>
                                        <#if (homeone.hmOneType=="home") >
                                         <li><a href="${request.contextPath}/home/${homeone.hmId}" class="menu">${homeone.hmOneName}</a>
                                            <#list home as home1>
                                                <#if (home1.hmTwoName?? && home1.hmOneName==homeone.hmOneName)>

                                                     <ul>
                                                         <li>
                                                             <a title="${home1.hmTwoName}" href="${request.contextPath}/home/${home1.hmId}">${home1.hmTwoName}
                                                             </a>
                                                         </li>
                                                     </ul>

                                                </#if>
                                            </#list>
                                         </li>
                                        </#if>
                                    </#list>
                                </#if>
                    <#--  <li><a href="http://cn.uniview.com/Products/" class="menu">产品</a>

                              <li><a title="网络摄像机" href="http://cn.uniview.com/Products/Cameras/">网络摄像机</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Box/">枪式网络摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Bullet/">筒型网络摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/">半球网络摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Dome/">球型网络摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/">小型云台一体机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Integration/">机芯</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Explosion-proof/">防爆摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Thermal_imaging/">热成像摄像机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Peripheral/">摄像机外设</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Cameras/Analog/Fixed_Dome/">模拟摄像机</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="物联网" href="http://cn.uniview.com/Products/IoT/Gateway/">物联网</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/IoT/Gateway/">网关</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/IoT/Sensor/">传感器</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/IoT/Landmarks/">地标器</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="交警电子警察" href="http://cn.uniview.com/Products/Intelligent_Traffic/">交警电子警察</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Electric_Alarm/">电警卡口抓拍机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Detector/">视频流量检测器</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Intelligent_Dome/">智能交通球机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Host/">路口终端</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Accessovies/">配件</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/VM/Platform/">智能交通平台</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="智慧停车场" href="http://cn.uniview.com/Products/Park/Entrance/">智慧停车场</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Park/Entrance/">出入口抓拍机</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Park/Detector/">车位检测器</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Park/Accessories/">配件</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="大屏产品" href="http://cn.uniview.com/Products/Screen/LCD/Splice/">大屏产品</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/">LCD</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Screen/LED/Small_Pitch/">LED</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="显控产品" href="http://cn.uniview.com/Products/Display/Screen/Platform/">显控产品</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Display/Screen/Platform/">大屏显控</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Display/DC/">解码器</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Display/EC/">编码器</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Display/Accessories/">配件</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="NVR" href="http://cn.uniview.com/Products/NVR/">NVR</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/NVR/General/">通用NVR</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="套装产品" href="http://cn.uniview.com/Products/Kit/Wireless/">套装产品</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Kit/Wireless/">无线套装</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="存储与计算" href="http://cn.uniview.com/Products/Net_storage/">存储与计算</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Net_storage/IPSAN/">IPSAN</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Net_storage/Fusion/Cloud/">融合存储</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="管理平台" href="http://cn.uniview.com/Products/VM/">管理平台</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/VM/Universal_Monitor/AIO/">通用监控平台</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/VM/Common_platform/Management/">行业通用平台</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/VM/Public_Security/Management/">公安平台</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/VM/Security_Platform/Platform/">安防平台</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="网络与安全" href="http://cn.uniview.com/Products/Network_Security/Switches/">网络与安全</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Network_Security/Switches/">交换机</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="客户端软件" href="http://cn.uniview.com/Products/Client_Software/PC/">客户端软件</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Client_Software/PC/">PC客户端软件</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Client_Software/Mobile/">移动客户端软件</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="智能装备" href="http://cn.uniview.com/Products/Smart_Equipment/Door/">智能装备</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Smart_Equipment/Door/">人脸速通门</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="智能锁" href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/">智能锁</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/">指纹锁</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                          </ul>
                      </li>
                      <li><a href="http://cn.uniview.com/Solutions/" class="menu">解决方案</a>
                          <ul>
                              <li><a title="行业解决方案" href="http://cn.uniview.com/Solutions/Industry_solutions/Peaceful_city/">行业解决方案</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/iVS_IP_Surveillance/">iVS IP监控通用解决方案</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Peaceful_city/">平安城市</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Enterprise/">企业</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Education/">教育</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Intelligent_building/">智能建筑</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Financial/">金融</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Network/">广域联网</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Intelligent_Traffic/">智能交通</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="工程商解决方案" href="http://cn.uniview.com/Solutions/Engineering_solutions/Supermarket/">工程商解决方案</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Solutions/Engineering_solutions/Supermarket/">商超连锁</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="十大案例" href="http://cn.uniview.com/Solutions/Case/">十大案例</a></li>
                          </ul>
                      </li>
                      <li><a href="http://cn.uniview.com/Service/Service_Training/" class="menu">服务与培训</a>
                          <ul>
                              <li><a title="渠道服务" href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/">渠道服务</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/">服务资质认证</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Service_Products/Technical_Sustainment/">服务产品</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Engineering_Data/">工程相关资料</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Support/">技术支持</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="培训认证" href="http://cn.uniview.com/Service/Service_Training/Training_Certification/">培训认证</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Training_News/">培训公告</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Certification_System/">培训认证体系</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Institution/">培训机构</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Training_Tools/Candidates_Service/">培训工具</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="下载中心" href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/">下载中心</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/">手册下载</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Download/Tools/">设备软件下载</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Download/Client/">客户端软件下载</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Download/SDK/1/">SDK开发</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Service/Service_Training/Download/Problem/Camera/">常见问题处理</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="维修与更换" href="http://cn.uniview.com/Service/Service_Training/Maintain_Replacing/Repairment/">维修与更换</a></li>
                              <li><a title="条码防伪查询" href="http://cn.uniview.com/Service/Service_Training/VerificationQuery/">条码防伪查询</a></li>
                              <li><a title="条码维保查询" href="http://cn.uniview.com/Service/Service_Training/Maintenance_Query/">条码维保查询</a></li>
                              <li><a title="安全应急响应" href="http://cn.uniview.com/Security/Lab/">安全应急响应</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Security/Notice/">安全通告</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Security/Process/">漏洞响应流程</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Security/Report/">漏洞上报</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Security/Lab/">宇视安全实验室</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                          </ul>
                      </li>
                      <li><a href="http://cn.uniview.com/Partners/Partner/" class="menu">合作伙伴</a>
                          <ul>
                              <li><a title="合作伙伴公告" href="http://cn.uniview.com/Partners/Partner/Channel_news/">合作伙伴公告</a></li>
                              <li><a title="加盟宇视科技" href="http://cn.uniview.com/Partners/Partner/Join_uniview/Channel_Introduction/">加盟宇视科技</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Channel_Introduction/">渠道体系介绍</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Distribution_system/">经销商渠道体系架构</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Project_system/">工程商渠道体系介绍</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Overseas_channel_system/">海外渠道体系介绍</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/">服务资质认证</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="合作伙伴在线认证" href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Channel_certification/Registered_dealer/">合作伙伴在线认证</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Channel_certification/Registered_dealer/">合作伙伴认证</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Service_certification/Qualification_application/">服务资质认证流程</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="Unisee宇视解决方案赋能工程" href="http://cn.uniview.com/Unisee/">Unisee宇视解决方案赋能工程</a></li>
                          </ul>
                      </li>
                      <li><a href="http://ysisp.uniview.com/" class="menu" target="_blank">供应商平台</a>
                          <ul>
                              <li><a href="http://ysisp.uniview.com/" target="_blank">供应商登录</a></li>
                              <li><a href="http://ysisp.uniview.com/Register.aspx" target="_blank">供应商自荐</a></li>
                          </ul>
                      </li>
                      <li><a href="http://cn.uniview.com/About_Us/" class="menu">关于我们</a>
                          <ul>
                              <li><a title="公司信息" href="http://cn.uniview.com/About_Us/Company_Information/Company_Introduce/">公司信息</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/Company_Introduce/">关于宇视</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/Brand/">品牌理念</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/History/">发展历程</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/SCM/">供应链</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/Service_System/">服务体系</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/R_D_Team/">研发团队</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/Awards/">奖项荣誉</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Information/Company_Video/Product_series/">公司视频</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="活动专题" href="http://cn.uniview.com/About_Us/Company_activities/">活动专题</a></li>
                              <li><a title="新闻中心" href="http://cn.uniview.com/About_Us/News/News_Media/">新闻中心</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/News/News_Media/">公司新闻</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/News/Media_Boardcast/">媒体报道</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="公司刊物" href="http://cn.uniview.com/About_Us/Company_Publication/Industry_Publication/">公司刊物</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Publication/Uniview_Corporate_Brochure/2017_Road_Of_Precision_Manufacturing/">公司手册</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Publication/Industry_Publication/">行业刊物</a></div>
                                              <div class="col-xs-6"><a href="http://cn.uniview.com/About_Us/Company_Publication/Uniview_magazine/">宇视杂志</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="人才招聘" href="https://talent.uniview.com/wt/uniview/web/index">人才招聘</a>
                                  <ul>
                                      <li>
                                          <div class="row">
                                              <div class="col-xs-6"><a href="https://talent.uniview.com/wt/uniview/web/index/social" target="_blank">社会招聘</a></div>
                                              <div class="col-xs-6"><a href="https://talent.uniview.com/wt/uniview/web/index/campus">校园招聘</a></div>
                                              <div class="col-xs-6"><a href="https://talent.uniview.com/wt/uniview/web/index/interns" target="_blank">实习生招聘</a></div>
                                          </div>
                                      </li>
                                  </ul>
                              </li>
                              <li><a title="投诉建议" href="http://cn.uniview.com/About_Us/Suggestion/">投诉建议</a></li>
                              <li><a title="联系我们" href="http://cn.uniview.com/About_Us/Contact_Us/">联系我们</a></li>
                          </ul>
                      </li>
                      <li><a href="javascript:void(0)" class="menu">[选择语言]</a>
                          <ul>
                              <li><a href="http://en.uniview.com/" target="_blank">English</a></li>
                          </ul>
                      </li>-->
                    </ul>
                </div>
            </div>



            <div class="navi" id="Navi">
                <div class="toplevel"><a href="http://cn.uniview.com/" class="menu">首页</a></div>
                     <#if (home?size>0 && home??)>
                         <#list home as homeone>
                             <#if (homeone.hmOneType=="home") >

                             <div class="toplevel"><a href="${request.contextPath}/home/${homeone.hmId}" class="menu">${homeone.hmOneName}</a>
                             <#--创建变量赋值-->
                                 <#assign numm=0>
                                  <#list home as homenum>
                                      <#if (homenum.hmTwoName?? && homenum.hmOneName==homeone.hmOneName)>
                                          <#assign numm=numm+1>
                                      </#if>
                                  </#list>
                             <#--变量为0则没有2级菜单-->
                                 <#if (numm>0) >
                                 <div class="menu-pro submenu">
                                     <div class="container">
                                         <div class="row">
                                            <#list home as home1>
                                                <#if (home1.hmTwoName?? && home1.hmOneName==homeone.hmOneName)>
                                                    <div class="col-sm-4 col-md-2">
                                                        <div class="item">
                                                            <ul>
                                                                <li class="title"><a href="${request.contextPath}/home/${home1.hmId}"><font color="black">${home1.hmTwoName}</font></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </#if>
                                            </#list>
                                         </div>
                                     </div>
                                 </div>
                                 </#if>
                             </div>

                             </#if>
                         </#list>
                     </#if>
            <#--<div class="toplevel"><a href="http://cn.uniview.com/Products/" class="menu">产品</a>
                <div class="menu-pro submenu">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Cameras/">网络摄像机</a></li>
                                        <li><a title="枪式网络摄像机" href="http://cn.uniview.com/Products/Cameras/Box/">枪式网络摄像机</a></li>
                                        <li><a title="筒型网络摄像机" href="http://cn.uniview.com/Products/Cameras/Bullet/">筒型网络摄像机</a></li>
                                        <li><a title="半球网络摄像机" href="http://cn.uniview.com/Products/Cameras/Fixed_Dome/">半球网络摄像机</a></li>
                                        <li><a title="球型网络摄像机" href="http://cn.uniview.com/Products/Cameras/Dome/">球型网络摄像机</a></li>
                                        <li><a title="云台&amp;一体机" href="http://cn.uniview.com/Products/Cameras/PTZ_Camera/Small/">云台&amp;一体机</a></li>
                                        <li class="more"><a href="http://cn.uniview.com/Products/Cameras/">更多&gt;&gt;</a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Display/Screen/Platform/">显控产品</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Display/Screen/Platform/" title="大屏显控">大屏显控</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Display/DC/" title="解码器">解码器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Display/EC/" title="编码器">编码器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Display/Accessories/" title="配件">配件</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/IoT/Gateway/">物联网 </a></li>
                                        <li><a href="http://cn.uniview.com/Products/IoT/Gateway/" title="网关">网关</a></li>
                                        <li><a href="http://cn.uniview.com/Products/IoT/Sensor/" title="传感器">传感器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/IoT/Landmarks/" title="地标器">地标器</a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Net_storage/">存储与计算</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Net_storage/Technical_Characteristics/" title="技术特点">技术特点</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Net_storage/Selection_Guide/" title="选型指南">选型指南</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Net_storage/IPSAN/" title="IPSAN">IPSAN</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Net_storage/Fusion/Cloud/" title="融合存储">融合存储</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Intelligent_Traffic/">交警电子警察 </a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Electric_Alarm/" title="电警卡口抓拍机">电警卡口抓拍机</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Detector/" title="视频流量检测器">视频流量检测器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Intelligent_Dome/" title="智能交通球机">智能交通球机</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Host/" title="路口终端">路口终端</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/Accessovies/" title="配件">配件</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Intelligent_Traffic/VM/Platform/" title="智能交通平台">智能交通平台</a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/VM/">管理平台</a></li>
                                        <li><a title="通用监控平台" href="http://cn.uniview.com/Products/VM/Universal_Monitor/AIO/">通用监控平台</a></li>
                                        <li><a title="行业通用平台" href="http://cn.uniview.com/Products/VM/Common_platform/Management/">行业通用平台</a></li>
                                        <li><a title="公安平台" href="http://cn.uniview.com/Products/VM/Public_Security/Management/">公安平台</a></li>
                                        <li><a title="安防平台" href="http://cn.uniview.com/Products/VM/Security_Platform/Platform/">安防平台</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Park/Entrance/">智慧停车场 </a></li>
                                        <li><a href="http://cn.uniview.com/Products/Park/Entrance/" title="出入口抓拍机">出入口抓拍机</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Park/Detector/" title="车位检测器">车位检测器</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Park/Accessories/" title="配件">配件</a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/Products/Network_Security/Switches/">网络与安全</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Network_Security/Switches/" title="交换机">交换机</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Network_Security/Wireless/" title="无线网桥">无线网桥</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/NVR/">NVR</a></li>
                                        <li><a href="http://cn.uniview.com/Products/NVR/General/" title="通用NVR">通用NVR</a></li>
                                        <li><a href="http://cn.uniview.com/Products/NVR/Accessovies/" title="配件">配件</a></li>
                                        <li class="title" style="margin-top:10px;"><a href="http://cn.uniview.com/Products/Kit/Wireless/">套装产品</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Kit/Wireless/" title="无线套装">无线套装</a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/Products/Client_Software/PC/">客户端软件 </a></li>
                                        <li><a title="PC客户端软件" href="http://cn.uniview.com/Products/Client_Software/PC/">PC客户端软件</a></li>
                                        <li><a title="移动客户端软件" href="http://cn.uniview.com/Products/Client_Software/Mobile/">移动客户端软件</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/">大屏产品</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Screen/LCD/Splice/" title="LCD">LCD</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Screen/LED/Small_Pitch/" title="LED">LED</a></li>
                                    </ul>
                                    <ul style="margin-bottom:20px; height:auto;">
                                        <li class="title"><a href="http://cn.uniview.com/Products/Smart_Equipment/Door/">智能装备 </a></li>
                                        <li><a href="http://cn.uniview.com/Products/Smart_Equipment/Door/" title="人脸速通门">人脸速通门</a></li>
                                        <li><a href="http://cn.uniview.com/Products/Smart_Equipment/Terminal/General/" title="人脸识别终端">人脸识别终端</a></li>
                                    </ul>
                                    <ul style="height:auto;">
                                        <li class="title"><a href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/">智能锁 </a></li>
                                        <li><a href="http://cn.uniview.com/Products/Smart_Lock/Fingerprint/" title="指纹锁">指纹锁</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="toplevel"><a href="http://cn.uniview.com/Solutions/" class="menu">解决方案</a>
                <div class="menu-solution submenu">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3 col-md-2 col-md-offset-1">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Solutions/Industry_solutions/Peaceful_city/">行业解决方案</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Peaceful_city/" title="平安城市">平安城市</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Project/" title="雪亮工程">雪亮工程</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Prison/" title="司法监狱">司法监狱</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Rail/" title="轨道交通">轨道交通</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Highway/" title="高速公路">高速公路</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Airport/" title="机场">机场</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Education/" title="教育">教育</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Medical/" title="卫生医疗">卫生医疗</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Enterprise/" title="企业">企业</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Industry_solutions/Intelligent_building/" title="智能建筑">智能建筑</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3 col-md-2">
                                <div class="item" style="height:180px;">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Solutions/Engineering_solutions/Supermarket/">工程商解决方案</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Engineering_solutions/Supermarket/" title="商超连锁">商超连锁</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Engineering_solutions/Entrance/" title="出入口">出入口</a></li>
                                        <li><a href="http://cn.uniview.com/Solutions/Engineering_solutions/Villa/" title="智能别墅">智能别墅</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-7">
                                <div class="item2"><a href="http://cn.uniview.com/Solutions/Case/"><img src="${request.contextPath}/static/navi_solution_02.jpg" alt="">十大案例</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="toplevel"><a href="http://cn.uniview.com/Service/Service_Training/" class="menu">服务与培训</a>
                <div class="menu-service submenu">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class=" title"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/">渠道服务</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/" title="服务资质认证">服务资质认证</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Service_Products/Technical_Sustainment/" title="服务产品">服务产品</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Engineering_Data/" title="工程相关资料">工程相关资料</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/YS_Service/Support/" title="技术支持">技术支持</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/">培训认证</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Training_News/" title="培训公告">培训公告</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/exam/" title="UCE-BASE考试">UCE-BASE考试</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Certification_System/" title="培训认证体系">培训认证体系</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Institution/" title="培训机构">培训机构</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Online_Training/" title="在线培训">在线培训</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Training_Certification/Training_Tools/Candidates_Service/" title="培训工具">培训工具</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/">下载中心</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Software_and_Manual/" title="手册下载">手册下载</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Tools/" title="设备软件下载">设备软件下载</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Client/" title="客户端软件下载">客户端软件下载</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/SDK/1/" title="SDK开发">SDK开发</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Download/Problem/Camera/" title="常见问题处理">常见问题处理</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item">
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/Service/Service_Training/Maintain_Replacing/Repairment/">维修与更换</a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/Service/Service_Training/Authorize_License/">License授权</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Authorize_License/Achieve_License/" title="License首次激活">License首次激活</a></li>
                                        <li><a href="http://cn.uniview.com/Service/Service_Training/Authorize_License/License_Enlarge_Apply/" title="License扩容激活">License扩容激活</a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Security/Lab/">宇视安全实验室</a></li>
                                        <li>&nbsp;</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <div class="item2"><a href="http://cn.uniview.com/Service/Service_Training/VerificationQuery/" style="margin-bottom:15px;"><img src="${request.contextPath}/static/navi_service_01.jpg" alt="">条码防伪查询</a> <a href="http://cn.uniview.com/Service/Service_Training/Maintenance_Query/"><img src="${request.contextPath}/static/navi_service_02.jpg" alt="">条码维保查询</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="toplevel"><a href="http://cn.uniview.com/Partners/Partner/" class="menu">合作伙伴</a>
                <div class="menu-partner submenu" style="display: none;">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-3 col-md-offset-1">
                                <div class="item">
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/Partners/Partner/Channel_news/">合作伙伴公告</a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Channel_Introduction/">加盟宇视科技</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Channel_Introduction/" title="渠道体系介绍">渠道体系介绍</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Distribution_system/" title="经销商渠道体系架构">经销商渠道体系架构</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Project_system/" title="工程商渠道体系介绍">工程商渠道体系介绍</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Overseas_channel_system/" title="海外渠道体系介绍">海外渠道体系介绍</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Join_uniview/Serve_Intelligence/" title="服务资质认证">服务资质认证</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-3">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Channel_certification/Registered_dealer/">合作伙伴在线认证</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Channel_certification/Registered_dealer/" title="合作伙伴认证">合作伙伴认证</a></li>
                                        <li><a href="http://cn.uniview.com/Partners/Partner/Channel_online_certification/Service_certification/Qualification_application/" title="服务资质认证流程">服务资质认证流程</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <div class="item2"><a href="http://fenxiao.uniview.com/" style="margin-bottom:15px;" target="_blank"><img src="${request.contextPath}/static/navi_partner_02.jpg" alt="">分销专区</a> <a href="http://cn.uniview.com/Unisee/"><img src="${request.contextPath}/static/navi_partner_03.jpg" alt="">Unisee宇视解决方案赋能工程</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="toplevel"><a href="http://ysisp.uniview.com/" class="menu">供应商平台</a>
                <div class="menu-supplier submenu">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-2 col-md-offset-3 col-sm-offset-2">
                                <div class="item">
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://ysisp.uniview.com/" target="_blank">供应商登录</a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://ysisp.uniview.com/Register.aspx" target="_blank">供应商自荐</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <div class="item2"> <a href="http://ysisp.uniview.com/Register.aspx" target="_blank"><img src="${request.contextPath}/static/navi_supplier_01.jpg" alt="">供应商自荐</a> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="toplevel"><a href="http://cn.uniview.com/About_Us/" class="menu">关于我们</a>
                <div class="menu-aboutus submenu">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6 col-md-3">
                                <div class="item">
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/Company_Information/Company_Introduce/">公司信息 </a></li>
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
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="item">
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/News/News_Media/">新闻中心 </a></li>
                                        <li><a href="http://cn.uniview.com/About_Us/News/News_Media/">公司新闻 </a></li>
                                        <li><a href="http://cn.uniview.com/About_Us/News/Media_Boardcast/">媒体报道 </a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/Company_Publication/Industry_Publication/">公司刊物 </a></li>
                                        <li><a href="http://cn.uniview.com/About_Us/Company_Publication/Uniview_Corporate_Brochure/2017_Road_Of_Precision_Manufacturing/">公司手册 </a></li>
                                        <li><a href="http://cn.uniview.com/About_Us/Company_Publication/Industry_Publication/">行业刊物 </a></li>
                                        <li><a href="http://cn.uniview.com/About_Us/Company_Publication/Uniview_magazine/">宇视杂志 </a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/Company_activities/">活动专题 </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="item">
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="https://talent.uniview.com/wt/uniview/web/index">人才招聘 </a></li>
                                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/social" title="社会招聘">社会招聘</a></li>
                                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/campus" title="校园招聘">校园招聘</a></li>
                                        <li><a href="https://talent.uniview.com/wt/uniview/web/index/interns" title="实习生招聘">实习生招聘</a></li>
                                    </ul>
                                    <ul style="margin-bottom:10px;">
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/Suggestion/">投诉建议 </a></li>
                                    </ul>
                                    <ul>
                                        <li class="title"><a href="http://cn.uniview.com/About_Us/Contact_Us/">联系我们 </a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-3">
                                <div class="item2"> <a href="http://cn.uniview.com/About_Us/Company_Information/Company_Introduce/"><img src="${request.contextPath}/static/navi_about_01.jpg" alt="">宇视科技</a> <span>是IP网络监控的首创者和领先者。秉承深厚的IT技术积累、坚持全面的开放合作，以高品质产品为核心，以不断创新、不断超越为路径，以比肩德国之精工制造为目标，快速行进在通往全球视频监控领域领导者的路上。</span> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
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
</body></html>