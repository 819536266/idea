<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>基金率列表</title>
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
		<xblock> <span>调整后用户消费*费率部分为平台收益！</span> <span
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
							var url = path + "/admin/money/getMoney";

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
									field : 'id',
									title : '编号',
									width : 180,
									align : 'center'
								}, {
									field : 'num',
									title : '加入圈子费率',
									width : 180,
									align : 'center',
									templet : '#titleTpl',
									edit : true
								}, {
									field : 'num1',
									title : '打赏费率',
									width : 180,
									align : 'center',
									templet : '#titleTpl1',
									edit : true
								} ] ],
								page : true,
								limits : [ 20, 40, 60, 80 ],
								limit : 20,
								done : function(res, curr, count) {
									$('.totalRow').text(count);
								}
							});

							//单元格行内修改
							var url1 = path + "/admin/money/editMoney";

							table.on('edit(test)', function(obj) {
								var key = obj.field;
								var json = {};
								json[key] = obj.value;
								json['id'] = obj.data.id;
								if (obj.value > 101 && obj.value <= 0) {
									layer.msg('请输入1-100数字');
									adminList.reload();
									return;
								}
								$.post(url1, json, function(r) {
									if (r.success) {
										layer.msg('更新成功')
										adminList.reload();
									} else {
										layer.msg('更新失败')
									}
								});
							});

						});
	</script>
	<script type="text/html" id="titleTpl">
  {{#  if(d.num >=1){ }}
     {{d.num}}%
  {{#  } }}
</script>

	<script type="text/html" id="titleTpl1">
  {{#  if(d.num1 >= 1){ }}
     {{d.num1}}%
  {{#  } }}
</script>

</body>

</html>