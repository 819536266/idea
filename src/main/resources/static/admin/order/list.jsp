<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>财务列表</title>
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
				<input type="text" name="adminName" placeholder="请输入订单号"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="sreach" lay-filter="go">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn" id="outExcel">
			<i class="layui-icon"></i>导出excel
		</button>
		<span style="color: red; font-size: 16px;">该功能未完善!</span> <span
			class="x-right" style="line-height: 40px">共有数据：<span
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
						[ 'layer', 'form', 'element', 'table', 'jquery' ],
						function() {
							var layer = layui.layer, table = layui.table, form = layui.form, element = layui.element, $ = layui.$
							var path = "${request.contextPath}";
							var name = "";
							var url = path + "/admin/order/orderList";
							var ids = "";
							var curr = 0;
							var limitI = 20;

							//表格执行渲染
							var adminList = table.render({
								url : url,
								elem : '#test',
								id : '#test',
								skin : 'row',
								even : true,
								size : 'sm',
								cols : [ [ {
									checkbox : true
								}, {
									field : 'orderId',
									title : '订单编号',
									width : 180,
									align : 'center',
								}, {
									field : 'money',
									title : '金额',
									width : 80
								}, {
									field : 'name',
									title : '购买学生',
									align : 'center',
									width : 100
								}, {
									field : 'createTime',
									title : '购买时间',
									align : 'center',
									width : 180
								}, {
									field : 'type',
									title : '购买课程',
									width : 180,
									align : 'center',
									templet : '#titleTpl1'
								}, {
									field : 'remarks',
									title : '备注',
									width : 100,
									align : 'center',

								}, {
									field : 'status',
									title : '状态',
									width : 100,
									align : 'center',
									templet : '#titleTpl'
								}, {
									fixed : 'right',
									width : 150,
									align : 'center',
									toolbar : '#barDemo'
								} ] ],
								page : true,
								limits : [ 20, 40, 60, 80 ],
								limit : limitI,
								done : function(res, curr, count) {
									$('.totalRow').text(count);
									console.log('页码：' + curr);
									console.log('每页记录：' + limitI)
								}
							});

							//查询，表单获取值，重载表格
							form.on('submit(go)', function(data) {
								var data1 = data.field;
								name = data1.adminName;
								adminList.reload({
									where : {//设定异步数据接口的额外参数，任意设
										'a.adminName' : name
									}
								});
								return false;
							});
							//单元格行内修改
							var url1 = path + "/admin/user/orderEdit";
							table.on('tool(test)', function(obj) {
								var data = obj.data;
								var layEvent = obj.event;
								var tr = obj.tr;

								if (layEvent === 'stop') {
									layer.confirm('确定停用？', function() {
										data.adminStatus = 2;
										$.post(url1, data, function(r) {
											layer.msg('停用成功');
											obj.update({
												adminStatus : 2
											});
										});
									});

								} else if (layEvent === 'start') {
									data.adminStatus = 1;
									$.post(url1, data, function(r) {
										layer.msg('启用成功');
										obj.update({
											adminStatus : 1
										});
									});
								} else if (layEvent === 'view') {
									x_admin_show('查看管理员', path
											+ '/admin/order/viewOrder/'
											+ data.id, 350, 500);
								}
							});
							table.on('checkbox(test)', function(obj) {
								console.log(obj.checked); //当前是否选中状态
								console.log(obj.data); //选中行的相关数据
								console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one

								if (obj.type == "one") {
									ids += obj.data.orderId + ",";
								}
								if (obj.type == "all") {
									ids = 'all';
								}

							});
							$('#outExcel')
									.click(
											function() {

												if (ids.length > 0) {
													if (ids != "all") {
														ids = ids.substring(0,
																ids.length - 1);

														var data = {
															"ids" : ids
														};

													} else {
														data = {
															'cur' : curr,
															'limit' : limitI
														};
													}
													var url2 = path
															+ "/admin/order/exportExcel";
													$
															.getJSON(
																	url2,
																	data,
																	function(r) {
																		if (r.success) {
																			location.href = path
																					+ "/admin/order/download";
																		} else {
																			layer
																					.alert('导出失败')
																		}
																	});

												} else {
													layer.alert('至少选中一个');
												}

											});
						});
	</script>
	<script type="text/html" id="titleTpl">
  {{#  if(d.status==1){ }}
<a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="">待付款</a>
  {{#  }  if(d.status==2) { }}
<a class="layui-btn layui-btn-mini" lay-event="">付款</a>
  {{#  }  if(d.status==3) { }}
<a class="layui-btn layui-btn-mini" lay-event="">已经完成</a>
  {{#  }
}} 
</script>
	<script type="text/html" id="titleTpl1">
  {{#  if(d.type==1){ }}
打赏
  {{#  }  if(d.type==2) { }}
 用户提现 
  {{#  }  if(d.type==3) { }}
 加入圈子费用 
  {{#  }
}} 
</script>
	<script type="text/html" id="barDemo11"> 
  <a class="layui-btn layui-btn-mini" lay-event="view">查看</a>   
</script>

</body>

</html>