<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>相关资源列表</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%>
<script type="text/javascript">
	function add() {
		var Request = GetRequest();
		var majorsId = Request["id"];
		var path = '${pp}/admin/resource/add.ftl?majorsId=' + majorsId;
		x_admin_show('添加资源', path);
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
			<i class="layui-icon"></i>添加资源
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
		layui.use([ 'layer', 'form', 'element', 'table' ], function() {
			var layer = layui.layer;
			var table = layui.table;
			var form = layui.form, element = layui.element
			var path = "${request.contextPath}";
			var url = path + "/admin/resource/list";
			var Request = GetRequest();
			var majorsId = Request["id"];
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
					field : 'name',
					title : '资源名字',
					width : 300,
					align : 'center'
				}, {
					field : 'files',
					title : '课件',
					width : 300,
					align : 'center',
					toolbar : '#barDemo1'
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
				},
				where : {
					'a.majorsId' : majorsId
				}
			});
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
				if (layEvent === 'del') {
					layer.confirm('确定删除？', function() {
						$.get(path + "/admin/resource/del?id=" + data.id,
								function(r) {
									layer.msg('删除成功');
									tr.remove();
								});
					});
				} else if (layEvent === 'problem') {
					var p1 = path + '/admin/problem/list.ftl?id=' + data.id;
					x_admin_show('查看题目', p1);
				} else if (layEvent === 'view') {
					var p1 = path + '/admin/resource/view2.jsp?id=' + data.id;
					x_admin_show('修改资源', p1);
				}
			});
		});
	</script>
	<!--fileServer文件服务器目录，在statisFile.jsp //// -->
	<script type="text/html" id="barDemo1">
  {{#  if(d.type == 1){ }}
    <a  href="${viewOffice}${fileServerVideo}/{{d.files}}">预览</a>
  {{#  } else { }}
   <a  href="${pp}/admin/resource/viewJsp/{{d.id}}">预览</a>	
  {{#  } }}
</script>

	<script type="text/html" id="barDemo"> 
 <a class="layui-btn layui-btn-mini " lay-event="view">编辑</a> 
 <a class="layui-btn layui-btn-mini  layui-btn-danger" lay-event="del">删除记录</a>   
 <a class="layui-btn layui-btn-mini " lay-event="problem">测试题</a> 
</script>

</body>
</html>