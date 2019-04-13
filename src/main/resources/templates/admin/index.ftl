<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>企明星后台首页</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<#include "staticFile.ftl"/>
<script type="text/javascript">
	function showTime() {
		var now = new Date();
		var nowTime = now.toLocaleString();
		document.getElementById('time').innerHTML = "当前时间：" + nowTime;
		setTimeout('showTime()', 1000);
	}
</script>
</head>
<body onload="showTime()">
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo">
			<a href="${request.contextPath}/admin/index.ftl">企明星后台管理系统</a>
		</div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>
		<ul class="layui-nav left fast-add" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;" id="time">
			</a>
		</ul>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">WelCome<#--:${admin.picName}--></a>
			</li>
			<li class="layui-nav-item to-index"><a href="${request.contextPath}/index">前台首页</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="${request.contextPath}/admin/index.ftl"> <i class=layui-icon>&#xe68e;</i>
						<cite>首页</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a></li>
						<li><a _href=""> <i class="layui-icon">&#xe620;</i> <cite>首页管理</cite><i class="iconfont nav_right">&#xe697;</i>
						</a>
							<ul class="sub-menu">
								<li><a _href="${request.contextPath}/admin/home/home/list" > <i
										class="iconfont">&#xe6a7;</i> <cite>首页标头</cite>
								</a></li>
                                <li><a _href="${request.contextPath}/admin/home/lunbo/list"> <i
                                        class="iconfont">&#xe6a7;</i> <cite>轮播图片</cite>
                                </a></li>
								<li><a _href="${request.contextPath}/admin/home/lunbotiao/list"> <i
										class="iconfont">&#xe6a7;</i> <cite>轮播文字</cite>
								</a></li>
                                    <li><a _href="${request.contextPath}/admin/home/xinpin/list"> <i
                                            class="iconfont">&#xe6a7;</i> <cite>小轮播图</cite>
                                    </a>
                                        <ul class="sub-menu">
										<li><a _href="${request.contextPath}/admin/home/xinpin/list"> <i
												class="iconfont">&#xe6a7;</i> <cite>新品推荐</cite>
										</a></li>
                                        <li><a _href="${request.contextPath}/admin/home/fenxiao/list"> <i
                                                  class="iconfont">&#xe6a7;</i> <cite>分销专区</cite></a>
										</li>
										<li><a _href="${request.contextPath}/admin/home/anli/list"> <i
											class="iconfont">&#xe6a7;</i> <cite>案例</cite>
										</a></li>
										<li><a _href="${request.contextPath}/admin/home/zhaopin/list"> <i
												class="iconfont">&#xe6a7;</i> <cite>招聘信息</cite>
										</a></li>
                                        </ul>
                                    </li>
                                <li><a _href="${request.contextPath}/admin/home/list.ftl> <i
                                        class="iconfont">&#xe6a7;</i> <cite>信息</cite>
                                </a>
                                    <ul class="sub-menu">
                                        <li><a _href="${request.contextPath}/admin/home/jieshao01/list"> <i
                                                class="iconfont">&#xe6a7;</i> <cite>信息1</cite>
                                        </a></li>
                                        <li><a _href="${request.contextPath}/admin/home/jieshao02/list"> <i
                                                class="iconfont">&#xe6a7;</i> <cite>信息2</cite>
                                        </a></li>
                                        <li><a _href="${request.contextPath}/admin/home/jieshao03/list"> <i
                                                class="iconfont">&#xe6a7;</i> <cite>信息3</cite>
                                        </a></li>
                                    </ul>
								</li>
                                <li><a _href="${request.contextPath}/admin/home/list> <i
                                        class="iconfont">&#xe6a7;</i> <cite>荣誉信息</cite>
                                </a>
                                    <ul class="sub-menu">
                                        <li><a _href="${request.contextPath}/admin/home/xinxi/list" > <i
                                                class="iconfont">&#xe6a7;</i> <cite>荣誉信息</cite>
                                        </a></li>
                                        <li><a _href="${request.contextPath}/admin/home/shuliang/list"> <i
                                                class="iconfont">&#xe6a7;</i> <cite>荣誉数量</cite>
                                        </a></li>
                                        <li><a _href="${request.contextPath}/admin/home/jixiao/list"> <i
                                                class="iconfont">&#xe6a7;</i> <cite>功绩</cite>
                                        </a></li>
                                    </ul>
                                </li>
                                <li><a _href="${request.contextPath}/admin/home/floor/list"> <i
                                        class="iconfont">&#xe6a7;</i> <cite>超链接</cite>
                                </a> </li>
                                <li><a _href="${request.contextPath}/admin/home/lianjie/list"> <i
                                        class="iconfont">&#xe6a7;</i> <cite>底部链接</cite>
                                </a></li>
							</ul></li>

					</ul></li>
				<!-- 
				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>管理员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${request.contextPath}/admin${request.contextPath}/admin/list.ftl"> <i
								class="iconfont">&#xe6a7;</i> <cite>管理员列表</cite>
						</a></li>
					</ul></li> -->
			</ul>
		</div>
	</div>
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li>首页</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">

				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2017 河南省洛阳市企明星拥有最终解释权</div>
	</div>

</body>
</html>