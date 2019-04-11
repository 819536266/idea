<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页面</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="staticFile.ftl"%>
</head>
<body>
	<div class="x-body">
		<blockquote class="layui-elem-quote">&nbsp;城建学校后台管理系统</blockquote>
		<fieldset class="layui-elem-field">
			<legend>信息统计</legend>
			<div class="layui-field-box">
				<table class="layui-table" lay-even>
					<thead>
						<tr>
							<th>统计</th>
							<th>学员数量</th>
							<th>专业数量</th>
							<th>课程信息</th>
							<th>今日报名学员</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>总数</td>
							<td>${sessionScope.countMap.stuCount}</td>
							<td>${sessionScope.countMap.mCount}</td>
							<td>${sessionScope.countMap.cCount}</td>
							<td>${sessionScope.countMap.stuCount1}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
		<fieldset class="layui-elem-field">
			<div class="layui-field-box">
				<table class="layui-table" lay-even>

					<tbody>
						<tr>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
	</div>


</body>
</html>