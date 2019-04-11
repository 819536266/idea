<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>内容列表</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%>
</head>
<body>
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so" method="post">
				<input type="text" name="a.title" placeholder="请输入关键字"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="sreach" lay-filter="go">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn"
			onclick="x_admin_show('添加专业_学历', '${pp}/admin/majors/add.ftl');">
			<i class="layui-icon"></i>添加专业_学历
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：<span
			class="totalRow"> </span> 条
		</span> </xblock>
		<table id="test" class="layui-table" lay-filter="test">

		</table>
	</div>
	<script
		src="${request.contextPath}/admin/lib/layui/layui.js"></script>

	<script>
		layui
				.use(
						[ 'layer', 'form', 'element', 'table' ],
						function() {
							var layer = layui.layer, table = layui.table, form = layui.form, element = layui.element
							var path = "${request.contextPath}";
							var url = path + "/admin/majors/list_";
							//表格执行渲染
							var adminList = table.render({
								url : url,
								elem : '#test',
								id : '#test',
								skin : 'row',
								even : true,
								size : 'lg',
								cols : [ [ //标题栏
								{
									checkbox : true
								}, {
									field : 'id',
									title : '编号',
									width : 80,
									sort : true
								}, {
									field : 'ebName',
									title : '行业名字',
									width : 300,
									align : 'center'
								}, {
									field : 'createTime',
									title : '创建时间',
									width : 150,
									align : 'center',
									sort : true
								}, {
									field : 'detail',
									title : '介绍',
									width : 480
								}, {
									fixed : 'right',
									width : 350,
									title : '操作',
									toolbar : '#barDemo'
								} ] ],
								page : true,
								limits : [ 20, 40, 60, 80 ],
								limit : 20,
								done : function(res, curr, count) {
									$('.totalRow').text(count);
								}
							});
							//查询，表单获取值，重载表格
							form.on('submit(go)', function(data) {
								adminList.reload({
									where : data.field
								});
								return false;
							});
							table.on('tool(test)', function(obj) {
								var data = obj.data;
								var layEvent = obj.event;
								var tr = obj.tr;
								if (layEvent === 'view') {

									var p1 = path
											+ '/admin/majors/view.ftl?id='
											+ data.id;

									x_admin_show('查看详情', p1);
								} else if (layEvent === 'del') {
									layer.confirm('确定删除？', function() {
										$.get(path + "/admin/majors/del?id="
												+ data.id, function(r) {
											layer.msg('删除成功');
											tr.remove();
										});
									});
								} else if (layEvent === 'ziyuan') {
									var p1 = path
											+ '/admin/resource/list.ftl?id='
											+ data.id;
									x_admin_show('相关资源', p1, $(window).width(),
											$(window).height());
								}
							});
						});
	</script>
	<!--fileServer文件服务器目录，在statisFile.jsp  -->

	<script type="text/html" id="barDemo"> 
  <a class="layui-btn layui-btn-mini" lay-event="view">查看编辑</a> 
  <a class="layui-btn layui-btn-mini" lay-event="ziyuan">相关资源</a>   
 <a class="layui-btn layui-btn-mini  layui-btn-danger" lay-event="del">删除记录</a>   
</script>
	<script type="text/html" id="titleTpl">
  {{#  if(d.status==1
){ }}
<a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="stop">点击隐藏</a>
  {{#  }  if(d.status==2
) { }}
<a class="layui-btn layui-btn-mini" lay-event="start">点击显示</a>
  {{#  } }}
</script>
</body>
</html>