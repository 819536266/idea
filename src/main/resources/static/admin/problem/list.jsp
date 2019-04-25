<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试题列表</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%>
<script type="text/javascript">
	function add() {
		var Request = GetRequest();
		var resourceId = Request["id"];
        var path = '${pp}/admin/problem/add.html?resourceId=' + resourceId;
		x_admin_show('添加测试题', path);
	}
	function add1() {
		var Request = GetRequest();
		var resourceId = Request["id"];
		var path = '${pp}/admin/problem/add_boolean.jsp?resourceId='
				+ resourceId;
		x_admin_show('添加测试题', path);
	}
</script>
</head>
<body>
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row"></div>
		<xblock>
		<button class="layui-btn" onclick="add();">
			<i class="layui-icon"></i>添加题目_选择
		</button>
		<button class="layui-btn" onclick="add1();">
			<i class="layui-icon"></i>添加题目_判断
		</button>
		<span class="x-right" style="line-height: 40px; color: red;">当前统计总分数：<span
			class="totalScope"> </span> 分
		</span> <span class="x-right" style="line-height: 40px">共有题目：<span
			class="totalRow"> </span> 条 &nbsp; &nbsp; &nbsp;
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
							var layer = layui.layer;
							var table = layui.table;
							var form = layui.form, element = layui.element
							var path = "${request.contextPath}";
							var url = path + "/admin/problem/list";
							var Request = GetRequest();
							var resourceId = Request["id"];
							//alert(resourceId)
							var adminList = table.render({
								url : url,
								elem : '#test',
								id : '#test',
								skin : 'row',
								even : true,
								size : 'lg',
								cols : [ [ {
									checkbox : true
								}, {
									field : 'id',
									title : '编号',
									width : 80,
									sort : true
								}, {
									field : 'problem',
									title : '问题',
									width : 250,
									align : 'center'
								}, {
									field : 'scope',
									title : '分数',
									width : 80,
									align : 'center'
								}, {
									field : 'checkA',
									title : '选项A',
									width : 150,
									align : 'center'
								}, {
									field : 'checkB',
									title : '选项B',
									width : 150,
									align : 'center'
								}, {
									field : 'checkC',
									title : '选项C',
									width : 150,
									align : 'center'
								}, {
									field : 'checkD',
									title : '选项D',
									width : 150,
									align : 'center'
								}, {
									field : 'right',
									title : '正确答案',
									width : 150,
									align : 'center'
								}, {
									fixed : 'right',
									width : 180,
									title : '操作',
									toolbar : '#barDemo'
								} ] ],
								page : true,
								limits : [ 20, 40, 60, 80 ],
								limit : 20,
								done : function(res, curr, count) {
									$('.totalRow').text(count);
									console.log(res.data)
									//计算分数
									var num = 0;
									$.each(res.data, function(n, m) {
										num += res.data[n].scope;
									})
									$('.totalScope').text(num);

								},
								where : {
									'a.resourceId' : resourceId
								}
							});
							//查询，表单获取值，重载表格
							form.on('submit(go)', function(data) {
								adminList.reload({
									where : data.field
								});
								return false;
							});
							table
									.on(
											'tool(test)',
											function(obj) {
												var data = obj.data;
												var layEvent = obj.event;
												var tr = obj.tr;
												if (layEvent === 'del') {
													layer
															.confirm(
																	'确定删除？',
																	function() {
																		$
																				.get(
																						"${pp}/admin/problem/del?id="
																								+ data.id,
																						function(
																								r) {
																							if (r.success) {
																								layer
																										.msg('删除成功');
																								tr
																										.remove();
																							} else {
																								layer
																										.msg('删除失败');
																							}
																						});
																	});
												} else if (layEvent === 'view') {
													if (data.problemType == 1) {
														var path = '${pp}/admin/problem/view.ftl?id='
																+ data.id;
													} else {
														var path = '${pp}/admin/problem/view_boolean.jsp?id='
																+ data.id;
													}

													x_admin_show('修改测试题', path);
												}
											});
						});
	</script>
	<script type="text/html" id="barDemo"> 
 <a class="layui-btn layui-btn-mini  layui-btn-danger" lay-event="del">删除记录</a>   
 <a class="layui-btn layui-btn-mini " lay-event="view">编辑题目</a> 
</script>

</body>
</html>