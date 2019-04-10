<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>城建学校后台首页</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<%@include file="staticFile.jsp"%>
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
			<a href="${pp}/admin/index.jsp">城建学校后台管理系统</a>
		</div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>
		<ul class="layui-nav left fast-add" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;" id="time">
			</a>
		</ul>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">WelCome:${admin.picName}</a>
			</li>
			<li class="layui-nav-item to-index"><a href="${pp}">前台首页</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="${pp}/admin/index.jsp"> <i class=layui-icon>&#xe68e;</i>
						<cite>首页</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a></li>

				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>学员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${pp}/admin/student/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>学员列表</cite>
						</a></li>
						<li><a _href="${pp}/admin/result/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>成绩列表</cite>
						</a></li>
					</ul></li>
				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>订单管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${pp}/admin/order/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>订单列表</cite>
						</a></li>
					</ul></li>
				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>课程管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${pp}/admin/majors/list3.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>职业教育列表</cite>
						</a>
							<ul class="sub-menu">
								<li><a _href="${pp}/admin/majors1/list.jsp"> <i
										class="iconfont">&#xe6a7;</i> <cite>专业列表</cite>
								</a></li>
								<li><a _href="${pp}/admin/class/list.jsp?isEb=2"> <i
										class="iconfont">&#xe6a7;</i> <cite>课程列表</cite>
								</a></li>
							</ul></li>
						<li><a _href="${pp}/admin/majors/list2.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>学历教育管理</cite>
						</a>
							<ul class="sub-menu">
								<li><a _href="${pp}/admin/majors/list.jsp"> <i
										class="iconfont">&#xe6a7;</i> <cite>专业列表</cite>
								</a></li>
								<li><a _href="${pp}/admin/class/list.jsp?isEb=1"> <i
										class="iconfont">&#xe6a7;</i> <cite>课程列表</cite>
								</a></li>
								<li><a _href="${pp}/admin/majors/list2.jsp"> <i
										class="iconfont">&#xe6a7;</i> <cite>行业列表</cite>
								</a></li>
							</ul></li>
					</ul></li>
				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>信息管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${pp}/admin/user/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>学校概况</cite>
						</a>
							<ul class="sub-menu">
								<c:forEach var="g" items="${sorts.gaiKuang}">
									<li><a _href='${pp}/admin/news/list.jsp?detailId=${g.id}'><i
											class='iconfont'>&#xe6a7;</i><cite>${g.title}</cite></a></li>
								</c:forEach>
								<li><a _href='${pp}/admin/teacher/list.jsp'><i
										class='iconfont'>&#xe6a7;</i><cite>师资力量</cite></a></li>
							</ul></li>
						<li><a _href="${pp}/admin/user/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>学校动态</cite>
						</a>
							<ul class="sub-menu">
								<c:forEach var="g" items="${sorts.dongTai}">
									<li><a _href='${pp}/admin/news/list.jsp?detailId=${g.id}'><i
											class='iconfont'>&#xe6a7;</i><cite>${g.title}</cite></a></li>
								</c:forEach>
							</ul></li>
						<li><a _href="${pp}/admin/user/list.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>职业发展</cite>
						</a>
							<ul class="sub-menu">
								<c:forEach var="g" items="${sorts.faZhan}">
									<li><a _href='${pp}/admin/news/list.jsp?detailId=${g.id}'><i
											class='iconfont'>&#xe6a7;</i><cite>${g.title}</cite></a> <c:if
											test="${g.id==11}">
											<ul class="sub-menu">
												<c:forEach var="gg" items="${sorts.commOn}">
													<li><a
														_href='${pp}/admin/news/list.jsp?detailId=${gg.id}'><i
															class='iconfont'>&#xe6a7;</i><cite>${gg.title}</cite></a></li>
												</c:forEach>
											</ul>
										</c:if></li>
								</c:forEach>
							</ul></li>

						<li><a _href=""> <i class="iconfont">&#xe6a7;</i> <cite>首页管理</cite>
						</a>
							<ul class="sub-menu">
								<li><a _href="${pp}/admin/news/list.jsp?detailId=17"> <i
										class="iconfont">&#xe6a7;</i> <cite>友情链接</cite>
								</a></li>
								<li><a _href="${pp}/admin/news/list.jsp?detailId=18"> <i
										class="iconfont">&#xe6a7;</i> <cite>常见问题</cite>
								</a></li>
								<li><a _href="${pp}/admin/news/list.jsp?detailId=19"> <i
										class="iconfont">&#xe6a7;</i> <cite>特色专业</cite>
								</a></li>
								<li><a _href="${pp}/admin/news/list.jsp?detailId=20"> <i
										class="iconfont">&#xe6a7;</i> <cite>轮播图片</cite>
								</a></li>

							</ul></li>

					</ul></li>
				<!-- 
				<li><a href="javascript:;"> <i class="layui-icon">&#xe620;</i>
						<cite>管理员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="${pp}/admin/admin/list.jsp"> <i
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
					<iframe src='${pp}/admin/welcome.jsp' frameborder="0"
						scrolling="yes" class="x-iframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2017 河南省洛阳市城建学校拥有最终解释权</div>
	</div>

</body>
</html>