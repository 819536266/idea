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
<script type="text/javascript">
	function uu() {
		var Request = GetRequest();
		var key = Request["detailId"];
		var opath = '${pp}/admin/news/add.ftl?detailId=' + key;

		if (key == 3 || key == 4 || key == 20) {//添加图片
			opath = '${pp}/admin/news/addImg.ftl?detailId=' + key;
		}
		//alert(opath)
		x_admin_show('添加详情', opath);
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
		<button class="layui-btn" onclick="uu();">
			<i class="layui-icon"></i>添加详情
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
							var name = "";
							var url = path + "/admin/msd/list";
							var Request = GetRequest();
							var key = Request["detailId"];
							//表格执行渲染
							if (key != 3 && key != 4 && key != 20) {
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
										field : 'title',
										title : '标题',
										width : 300,
										align : 'center',

									}, {
										field : 'createTime',
										title : '创建时间',
										width : 150,
										align : 'center',
										sort : true
									}, {
										field : 'detail',
										title : '详情',
										width : 480,
										align : 'center'
									}, {
										field : 'status',
										title : '状态',
										width : 180,
										templet : '#titleTpl'
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
										'a.detailId' : key
									}
								});
							} else {
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
										field : 'createTime',
										title : '创建时间',
										width : 150,
										align : 'center',
										sort : true
									}, {
										field : 'imgName',
										title : '图片',
										width : 180,
										align : 'center',
										toolbar : '#barDemo1'
									}, {
										field : 'status',
										title : '状态',
										width : 180,
										templet : '#titleTpl'
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
										'a.detailId' : key
									}
								});
							}

							//查询，表单获取值，重载表格
							form.on('submit(go)', function(data) {
								data.field.detailId = key;
								adminList.reload({
									where : data.field
								});
								return false;
							});
							var url11 = path + "/admin/msd/edit";
							table.on('tool(test)', function(obj) {
								var data = obj.data;
								var layEvent = obj.event;
								var tr = obj.tr;

								if (layEvent === 'stop') {

									layer.confirm('确定停用？', function() {
										$.post(url11, {
											'id' : data.id,
											'status' : 2
										}, function(r) {
											obj.update({
												'status' : 2
											});
											layer.msg('停用成功');

										});
									});

								} else if (layEvent === 'start') {

									$.post(url11, {
										'id' : data.id,
										'status' : 1
									}, function(r) {
										obj.update({
											'status' : 1
										});
										layer.msg('启用成功');

									});
								} else if (layEvent === 'view') {
									var p1 = path + '/admin/news/view.ftl';
									p1 += "?id=" + data.id;
									p1 += "&detailId=" + data.detailId;
									if (key == 3 || key == 4) {
										var p1 = path
												+ '/admin/news/viewImg.ftl?id='
												+ data.id;
									}
									x_admin_show('查看详情', p1);
								}
							});
						});
	</script>
	<!--fileServer文件服务器目录，在statisFile.jsp  -->
	<script type="text/html" id="barDemo1">   
<img  src="{{fileServer}}/{{d.imgName}}" width=50  height=50 />
</script>
	<script type="text/html" id="barDemo"> 
  <a class="layui-btn layui-btn-mini" lay-event="view">查看编辑</a>   
   
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
<!-- <img  src="http://cj63495025.net/fileServer/upload/img/{{d.imgName}}" width=50  height=50 /> -->
</html>